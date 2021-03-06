package com.usdk.plugin;


import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import com.usdk.platform.adapter.PlatformProxyBase;
import com.usdk.platform.adapter.SdkPayInfo;
import com.usdk.platform.adapter.SdkRoleInfo;
import com.usdk.sdk.IUsdkCallBack.UsdkCallBackErrorCode;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

import vn.soha.game.sdk.SohaSDK;
import vn.soha.game.sdk.dialogs.DialogLogin.OnLoginListener;
import vn.soha.game.sdk.dialogs.DialogLogin.OnLogoutListener;
import vn.soha.game.sdk.dialogs.DialogPayment.OnPaymentListener;
import vn.soha.game.sdk.interact.OnSDKBackClickListener;
import vn.soha.game.sdk.utils.AnimationUtils;
import vn.soha.game.sdk.utils.PhotoDownloader;
import vn.soha.game.sdk.utils.ScreenUtils;
import vn.soha.game.sdk.utils.Utils;

public class PlatformProxy extends PlatformProxyBase {

	private String mToken;
	
	private SohaSDK mSohaSDK;
	
	@Override
	public void OnCreate(Activity activity, Bundle savedInstanceState) {
		super.onCreate(activity, savedInstanceState);
		
		// initialize SDK
		mSohaSDK = new SohaSDK(mActivity,mLoginListener,mLogoutListener);
			SohaSDK.setOnBackListener(new OnSDKBackClickListener() {
				@Override
				public void onBackpress() {
					//TODO 
				}
			});

	}
	
	// login callback
	private OnLoginListener mLoginListener = new OnLoginListener() {

		@Override
		public void onLoginSuccessful(String userId, String accessToken) {

			mToken = String.format("userID@%s&accessToken@%s", userId,accessToken);
			mTokens.clear();
			mTokens.add(userId);
			mTokens.add(accessToken);
			debug("mToken: "+mToken);
			
			sendCallBack2Unity(UsdkCallBackErrorCode.LoginSuccess);
		}

		@Override
		public void onLoginFailed(String reason) {
			// TODO Auto-generated method stub
			Utils.toast(mActivity, "Login failed, reason: " + reason);
			sendCallBack2Unity(UsdkCallBackErrorCode.LoginFail);
		}
	};

	// logout callback
	private OnLogoutListener mLogoutListener = new OnLogoutListener() {

		@Override
		public void onLogoutSuccessful() {
			//mSohaSDK.login();
			debug("*** logout success!");
			sendCallBack2Unity(UsdkCallBackErrorCode.LogoutFinish);
		}
	};


	// payment callback
	private OnPaymentListener mOnPayListener = new OnPaymentListener() {

		@Override
		public void onSuccessful(String orderId) {
			// TODO Auto-generated method stub
			if (!orderId.equals("") && !orderId.equals("null")) {
				Utils.toast(mActivity, "Payment successful; orderId="
						+ orderId);
				debug("*** yuenansdk pay successed");
				sendCallBack2Unity(UsdkCallBackErrorCode.PaySuccess);
			} else {
				Utils.toast(mActivity, "Payment successful");
			}
		}

		@Override
		public void onDismiss() {
			// TODO Auto-generated method stub
			// 关闭充值界面的事件
		}
	};


	@Override
	public void login(String custom_params_) {
		super.login(custom_params_);

		debug("***yuenan sdk login()");
		
		mActivity.runOnUiThread(new Runnable(){
			@Override
			public void run() {
				mSohaSDK.login();
			}
		});
	}
	
	@Override
	public void openUserCenter(String custom_params_) {
		super.switchAccount(custom_params_);
		debug("*** openUserCenter()");
	}
	
	public void logout(String custom_params_) {
		super.logout(custom_params_);
		debug("***yuenan sdk logout()");
		mActivity.runOnUiThread(new Runnable(){
			@Override
			public void run() {
				mSohaSDK.logout();
			}
		});
	}
	
	// 切换账号
	public void switchAccount(String custom_params_)
	{
		super.switchAccount(custom_params_);
		debug("*** switchAccount()");
	}
	
	@Override
	public void OnBackPressed() {
		super.onBackPressed();
		debug("*** onBackPressed()");
		
		exit("");
	}
	
	  @Override
	  public boolean OnKeyDown(int keyCode, KeyEvent event)  {
	      if (keyCode == KeyEvent.KEYCODE_BACK) {
	    	  debug("*** onKeyDown + onBackPressed()");
	          exit("");
	      return true;
	      }
	      return super.onKeyDown(keyCode, event);
	  }
	
	@Override
	public void exit(String custom_params_) {
		super.exit(custom_params_);
		debug("*** exit()");
	}
	
	
	//退出游戏确认对话框
	public void exitGameDialog()
	{
		AlertDialog.Builder builder = new AlertDialog.Builder(mActivity);
		builder.setTitle("提示");
		builder.setMessage("是否要退出游戏？");
		builder.setPositiveButton("确定", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				dialog.dismiss();
				
				android.os.Process.killProcess(android.os.Process.myPid());
			}
		});
		
		builder.setNegativeButton("取消", new OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				dialog.dismiss();
			}
		});
		
		builder.create().show();
	}
	
	@Override
	public void pay(String pay_info_) {
		super.pay(pay_info_);
		debug("***yuenan sdk pay() + pay_info_ = " + pay_info_);
		
		final SdkPayInfo payInfo = new SdkPayInfo(pay_info_);
		mActivity.runOnUiThread(new Runnable(){
			@Override
			public void run() {
				mSohaSDK.payWithId(mOnPayListener, payInfo.productId);
			}
		});
		//mSohaSDK.pay(mOnPayListener);
	}

	public void playerLogin(String role_info_) {
		debug("*** playerLogin()");
		
		final SdkRoleInfo roleInfo = new SdkRoleInfo(role_info_);
		//areaId: 服务器ID roleId: 角色ID roleName: 角色名  roleLevel: 角色等级
		mSohaSDK.setUserConfig(roleInfo.serverId, roleInfo.roleId, roleInfo.roleName, roleInfo.roleLevel);
	}
	
	public void playerLogout(String role_info_)
	{
		debug("*** playerLogout()");
	}


	public void playerCreated(String role_info_) {
		debug("*** playerCreated()");
	}
	
	public void playerLevelup (String role_info_) {
		debug("*** playerLevelup()");
		
		//final SdkRoleInfo roleInfo = new SdkRoleInfo(role_info_);
	}


	public String getToken() {
		return mToken;
	}
	
	@Override
	public void OnRequestPermissionsResult(int requestCode,  String[] permissions,  int[] grantResults) {
		try {
			super.onRequestPermissionsResult(requestCode, permissions, grantResults);
			if (mSohaSDK != null) {
			mSohaSDK.onRequestPermissionsResult(requestCode,permissions,grantResults);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void OnActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		//SGGameProxy.instance().onActivityResult(mActivity, requestCode, resultCode, data);
		mSohaSDK.onActivityResult(requestCode, resultCode, data);
	}

	@Override
	public void OnResume() {

        if(mSohaSDK!=null)
        {
        	mSohaSDK.onResume(mActivity.getIntent());
        }
		super.onResume();
	}

	@Override
	public void OnRestart() {
		super.onRestart();
	}

	@Override
	public void OnStart() {
		super.onStart();
	}

	@Override
	public void OnPause() {
		if (mSohaSDK != null) {
			mSohaSDK.onPause();
		}
		super.onPause();
	}

	@Override
	public void OnNewIntent(Intent intent) {
		super.onNewIntent(intent);
	}

	@Override
	public void OnStop() {
		super.onStop();
	}
	
	@Override
	public void OnDestroy() {
		if (mSohaSDK != null) {
			mSohaSDK.onDestroy();
		}
		super.onDestroy();
	}
}
