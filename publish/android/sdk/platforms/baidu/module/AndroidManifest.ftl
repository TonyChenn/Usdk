<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android" 
    package="${entity.javaPackage}" 
    android:theme="@android:style/Theme.NoTitleBar"
    android:installLocation="preferExternal">
	
    <uses-sdk android:minSdkVersion="12" android:targetSdkVersion="22" />
	<supports-screens android:smallScreens="true" android:normalScreens="true" android:largeScreens="true" android:xlargeScreens="true" android:anyDensity="true" />
	
	<!-- ↓↓↓ SDK ↓↓↓ -->
    <uses-permission android:name="android.permission.SEND_SMS" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.READ_PHONE_STATE" />
    <uses-permission android:name="android.permission.WRITE_SETTINGS" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.GET_TASKS" />
    
    <uses-permission android:name="android.permission.READ_CONTACTS" />					
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />			
    <uses-permission android:name="android.permission.READ_SMS" />					
    

    <uses-permission android:name="android.permission.CHANGE_NETWORK_STATE" />
	<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
    
    <!-- <uses-permission android:name="android.permission.RECORD_AUDIO"/> -->
    
    <!-- ↓↓↓ DK SDK ↓↓↓ --> 
    <uses-permission android:name="android.permission.WAKE_LOCK" />
    <uses-permission android:name="android.permission.RECEIVE_SMS" />
    <uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS" />
    <uses-permission android:name="android.permission.CALL_PHONE" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />
    <uses-permission android:name="android.permission.VIBRATE" />
    <uses-permission android:name="android.permission.ACCESS_DOWNLOAD_MANAGER" />
    <uses-permission android:name="android.permission.DOWNLOAD_WITHOUT_NOTIFICATION" />
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.FLASHLIGHT" />
    <uses-permission android:name="android.permission.DISABLE_KEYGUARD" />
    <uses-permission android:name="android.permission.BROADCAST_STICKY" />

    <application android:debuggable="false" android:icon="@drawable/app_icon" android:label="@string/app_name" android:theme="@android:style/Theme.NoTitleBar.Fullscreen" android:name="com.zwwx.platform.BaiduApplication" >     
		<!-- ↓↓↓ SDK ↓↓↓ -->


        <!-- 0-百度 1-多酷 2-91 -->

        <meta-data android:name="BDPlatformType" android:value="0" />
        
        
        <meta-data android:name="BDGameVersion" android:value="3.7.4" />
        
        <activity
            android:name="com.baidu.platformsdk.LoginActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_dialog_style_fullscreen"/>
        <activity
            android:name="com.baidu.platformsdk.AssistActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_dialog_style_fullscreen"/> 
        <activity
            android:name="com.baidu.platformsdk.ConcertActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_style_transparent"/> 
        <activity
            android:name="com.baidu.platformsdk.BindPhoneActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_dialog_style_fullscreen"/>
        
        <activity
            android:name="com.baidu.platformsdk.CashierDeskActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false" 
            android:theme="@style/bdp_dialog_style_fullscreen"
            android:windowSoftInputMode="adjustPan"/>
        
        <activity
            android:name="com.baidu.platformsdk.WebActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false" 
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen"
            android:windowSoftInputMode="adjustPan"/>

        
        <activity
            android:name="com.baidu.platformsdk.ModifyPasswordActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_dialog_style_fullscreen"/>
        <activity
            android:name="com.baidu.platformsdk.ThirdPartyLoginActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:excludeFromRecents="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen"
            android:exported="false"/>
        <activity
            android:name="com.baidu.platformsdk.VisitorBindActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:excludeFromRecents="true"
            android:theme="@style/bdp_dialog_style_fullscreen"/> 
        <activity
            android:name="com.baidu.platformsdk.BaiduBeanDetailActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:windowSoftInputMode="adjustPan"
            android:theme="@style/bdp_dialog_style_fullscreen" /> 
        <activity
            android:name="com.baidu.platformsdk.OrderDetailActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:windowSoftInputMode="adjustPan"
            android:theme="@style/bdp_dialog_style_fullscreen" />
         
        
        <activity
            android:name="com.baidu.platformsdk.SapiWebActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:windowSoftInputMode="adjustPan"
            android:theme="@style/bdp_dialog_style_fullscreen" />
        <activity
            android:name="com.baidu.platformsdk.SapiLoginProxyActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:windowSoftInputMode="adjustPan"
            android:theme="@style/bdp_dialog_style_fullscreen" />
        <activity 
            android:name="com.baidu.platformsdk.wxpay.PayActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:windowSoftInputMode="adjustPan"
            android:theme="@style/bdp_style_transparent" />
        
        <activity 
            android:name="com.baidu.platformsdk.AuthenticateActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="false"
            android:theme="@style/bdp_dialog_style_fullscreen"
            android:windowSoftInputMode="adjustPan" />
        
        <service
            android:name="com.baidu.platformsdk.BDPlatformService"
            android:exported="false" />

        <!-- ↑↑↑ SDK ↑↑↑ -->


        <!-- ↓↓↓ 百度钱包 ↓↓↓ -->
        
        <activity
            android:name="com.baidu.wallet.passport.PassLoginActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:hardwareAccelerated="false"
            android:theme="@style/EbpayThemeActivitTranslucent"
            android:windowSoftInputMode="stateHidden" >
        </activity>
        
        <activity
            android:name="com.baidu.paysdk.ui.LightappBrowseActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:hardwareAccelerated="true"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="stateHidden" />  
       <activity
            android:name="com.baidu.paysdk.ui.WelcomeActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivityWelcome"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="stateHidden" />
        <activity
            android:name="com.baidu.paysdk.ui.PayResultActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="stateHidden" >
        </activity>
        <activity
            android:name="com.baidu.paysdk.ui.PwdCheckActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivit"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="stateVisible" >
        </activity>
        <activity
            android:name="com.baidu.paysdk.ui.PwdSetAndConfirmActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="stateVisible" >
        </activity>
        <activity
            android:name="com.baidu.paysdk.ui.PwdPayActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivitTranslucent"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="stateVisible" />
        <activity
            android:name="com.baidu.paysdk.ui.WebViewActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="stateHidden" >
        </activity>
        <activity
            android:name="com.baidu.paysdk.ui.SelectBindCardActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="stateHidden" />
        <activity
            android:name="com.baidu.paysdk.ui.SecurityCenterActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="adjustUnspecified|stateHidden" />
        <activity
            android:name="com.baidu.paysdk.ui.PrivacyProtectionActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivit"
            android:windowSoftInputMode="adjustUnspecified|stateHidden" />
        <activity
            android:name="com.baidu.paysdk.ui.PassWordFreeActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivit"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="adjustUnspecified|stateHidden" />
        
        <activity
            android:name="com.baidu.wallet.core.plugins.pluginproxy.WalletProxyActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivit"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="adjustResize|stateHidden" >
        </activity>
        <activity
            android:name="com.baidu.wallet.core.plugins.pluginproxy.WalletProxyActivity2"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivitTranslucent"
            android:screenOrientation="portrait"
            android:windowSoftInputMode="adjustResize|stateHidden" />

        <activity
            android:name="com.baidu.wallet.core.plugins.pluginmanager.WalletPluginActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:screenOrientation="portrait"
            android:theme="@style/EbpayThemeActivityWelcome"
            android:windowSoftInputMode="stateHidden"/>
        
        <activity
            android:name="com.baidu.paysdk.ui.PassNormalizeActivity"
            android:configChanges="keyboardHidden|navigation|orientation|screenSize"
            android:excludeFromRecents="true"
            android:exported="@bool/bd_wallet_switch_global_debug"
            android:theme="@style/EbpayThemeActivit"
             android:hardwareAccelerated="false"
            android:windowSoftInputMode="stateHidden" >
        </activity>

        <activity
                android:name="com.baidu.paysdk.ui.ConfirmPayOrderActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:screenOrientation="portrait"
                android:theme="@style/EbpayThemeActivit"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.paysdk.ui.DiscountListActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:theme="@style/EbpayThemeActivit"
                android:screenOrientation="portrait"
                android:windowSoftInputMode="stateHidden" >
        </activity>

        <activity
                android:name="com.baidu.paysdk.ui.SelectPayWayActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:theme="@style/EbpayThemeActivitTranslucent"
                android:screenOrientation="portrait"
                android:launchMode="singleTop"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.paysdk.ui.H5PayWebViewActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:screenOrientation="portrait"
                android:theme="@style/EbpayThemeActivit"
                android:windowSoftInputMode="stateHidden" >
        </activity>

        <activity
                android:name="com.baidu.paysdk.ui.BindCardImplActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:theme="@style/EbpayThemeActivit"
                android:launchMode="singleTask"
                android:screenOrientation="portrait"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.paysdk.ui.SignChannelListActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:screenOrientation="portrait"
                android:theme="@style/EbpayThemeActivit"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.paysdk.ui.WalletSmsActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:screenOrientation="portrait"
                android:theme="@style/EbpayThemeActivit"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.paysdk.ui.PwdManagerActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:theme="@style/EbpayThemeActivit"
                android:screenOrientation="portrait"
                android:windowSoftInputMode="adjustUnspecified|stateHidden" />

        <activity
                android:name="com.baidu.home.HomeWebViewActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:screenOrientation="portrait"
                android:theme="@style/EbpayThemeActivit"
                android:windowSoftInputMode="stateHidden" />

        <activity
                android:name="com.baidu.scancode.ui.ScanCodePwdPayActivity"
                android:configChanges="keyboardHidden|navigation|orientation|screenSize"
                android:excludeFromRecents="true"
                android:exported="@bool/bd_wallet_switch_global_debug"
                android:theme="@style/EbpayThemeActivitTranslucent"
                android:screenOrientation="portrait"
                android:windowSoftInputMode="stateVisible|adjustResize" />

        <!-- ↑↑↑ 百度钱包 ↑↑↑ -->
        
        <!-- ↓↓↓ passport ↓↓↓ -->
        <activity
            android:name="com.baidu.sapi2.utils.LoginProtectAcitivity"
            android:screenOrientation="portrait"
            android:theme="@style/bdp_SapiTheme"
            android:windowSoftInputMode="adjustPan" />
        <!-- ↑↑↑ passport ↑↑↑ -->


        <!-- ↓↓↓ 银联SDK ↓↓↓ -->
        <activity
            android:name="com.unionpay.uppay.PayActivity"
            android:configChanges="orientation|keyboardHidden"
            android:excludeFromRecents="true"
            android:screenOrientation="landscape"
            android:windowSoftInputMode="adjustResize" />
        <!-- ↑↑↑ 银联SDK ↑↑↑ -->
        
        <!-- ↓↓↓ 支付宝插件 ↓↓↓ -->
        <activity android:name="com.alipay.sdk.app.H5PayActivity"
				   android:configChanges="orientation|keyboardHidden|navigation"
				   android:exported="false"
				   android:screenOrientation="behind" />
        <activity android:name="com.alipay.sdk.auth.AuthActivity"
				   android:configChanges="orientation|keyboardHidden|navigation"
				   android:exported="false"
				   android:screenOrientation="behind" />
        <!-- 需修改<data android:scheme="bdpsdk+packagename" /> -->
        <activity
            android:name="com.baidu.platformsdk.pay.channel.ali.AliPayActivity"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:exported="true"
            android:launchMode="singleTop"
            android:screenOrientation="behind" >
            <intent-filter>
                <action android:name="android.intent.action.VIEW" />
                <category android:name="android.intent.category.DEFAULT" />
                <category android:name="android.intent.category.BROWSABLE" />
                <data android:host="alipay.app" android:pathPrefix="/result" 
                    android:scheme="bdpsdk${entity.javaPackage}" />
            </intent-filter>
        </activity>
        <!-- ↑↑↑ 支付宝插件 ↑↑↑ -->
        
        <!-- ↓↓↓ QQ插件 需修改<data android:scheme="qwallet"+packagename />
        	替换packagename为应用包名, 如：<data android:scheme="qwalletcom.baidu.test"
        	否则将无法收到支付结果通知！！ />↓↓↓ -->
        <activity 
            android:name="com.baidu.platformsdk.pay.channel.qqwallet.QQPayActivity" 
            android:launchMode="singleTop"
            android:exported="true"
            android:configChanges="orientation|navigation|screenSize|keyboard|keyboardHidden"
            android:theme="@android:style/Theme.Translucent.NoTitleBar">
            <intent-filter>
				<action android:name="android.intent.action.VIEW" />
				<category android:name="android.intent.category.BROWSABLE" />
				<category android:name="android.intent.category.DEFAULT" />
				<data android:scheme="qwallet${entity.javaPackage}" />
			</intent-filter>
		</activity>
		<!-- ↑↑↑ QQ插件 ↑↑↑ -->
        
        <!-- ↓↓↓ 多酷SDK ↓↓↓ -->  
         
         <!-- ↓↓↓ 多酷SDK ↓↓↓ -->
        <activity
            android:name="com.duoku.platform.ui.DKContainerActivity"
            android:configChanges="orientation|keyboardHidden|navigation|screenSize"
            android:launchMode="singleTop"
            android:theme="@style/dk_styledindicators" >
        </activity>

        <service android:name="com.duoku.platform.service.DKSuspensionService" />
        <!-- push service client -->
        <receiver android:name="com.duoku.platform.push.MyPushMessageReceiver" >
            <intent-filter>

                <!-- 接收push消息 -->
                <action android:name="com.baidu.android.pushservice.action.MESSAGE" />
                <!-- 接收bind,unbind,fetch,delete等反馈消息 -->
                <action android:name="com.baidu.android.pushservice.action.RECEIVE" />
                <action android:name="com.baidu.android.pushservice.action.notification.CLICK" />
            </intent-filter>
        </receiver>
        <receiver
            android:name="com.baidu.android.pushservice.PushServiceReceiver"
            android:process=":bdservice_v1" >
            <intent-filter>
                <action android:name="android.intent.action.BOOT_COMPLETED" />
                <action android:name="android.net.conn.CONNECTIVITY_CHANGE" />
                <action android:name="com.baidu.android.pushservice.action.notification.SHOW" />
                <action android:name="com.baidu.android.pushservice.action.media.CLICK" />
                <!-- 以下四项为可选的action声明，可大大提高service存活率和消息到达速度 -->
                <action android:name="android.intent.action.MEDIA_MOUNTED" />
                <action android:name="android.intent.action.USER_PRESENT" />
                <action android:name="android.intent.action.ACTION_POWER_CONNECTED" />
                <action android:name="android.intent.action.ACTION_POWER_DISCONNECTED" />
            </intent-filter>
        </receiver>
        <receiver
            android:name="com.baidu.android.pushservice.RegistrationReceiver"
            android:process=":bdservice_v1" >
            <intent-filter>
                <action android:name="com.baidu.android.pushservice.action.METHOD" />
                <action android:name="com.baidu.android.pushservice.action.BIND_SYNC" />
            </intent-filter>
            <intent-filter>
                <action android:name="android.intent.action.PACKAGE_REMOVED" />

                <data android:scheme="package" />
            </intent-filter>
        </receiver>

        <service
            android:name="com.baidu.android.pushservice.PushService"
            android:exported="true"
            android:process=":bdservice_v1" >
            <intent-filter>
                <action android:name="com.baidu.android.pushservice.action.PUSH_SERVICE" />
            </intent-filter>
        </service>

        <!-- 4.4版本新增的CommandService声明，提升小米和魅族手机上的实际推送到达率 -->
        <service
            android:name="com.baidu.android.pushservice.CommandService"
            android:exported="true" />

        <activity
            android:name="com.baidu.android.pushservice.PushKeepAlive"
            android:launchMode="singleInstance"
            android:theme="@android:style/Theme.Translucent.NoTitleBar" />
        <!-- push结束 -->
        <!-- 下载管理 -->
        <activity
            android:name="com.duoku.platform.ui.DKDownloadManagerActivity"
            android:exported="false"
            android:launchMode="singleTask"
            android:screenOrientation="portrait"
            android:theme="@style/dk_styledindicators" >
        </activity>

        <service android:name="com.duoku.platform.download.DownloadService" />

        <receiver
            android:name="com.duoku.platform.download.DownloadReceiver"
            android:exported="false" >
            <intent-filter>
                <action android:name="android.intent.action.BOOT_COMPLETED" />
                <action android:name="android.net.conn.CONNECTIVITY_CHANGE" />
            </intent-filter>
            <intent-filter>
                <action android:name="android.intent.action.MEDIA_MOUNTED" />

                <data android:scheme="file" />
            </intent-filter>
        </receiver>
        <receiver android:name="com.duoku.platform.download.broadcast.AppMonitorReceiver" >
            <intent-filter>
                <action android:name="android.intent.action.PACKAGE_ADDED" />
                <action android:name="android.intent.action.PACKAGE_REMOVED" />
                <action android:name="android.intent.action.PACKAGE_REPLACED" />
                <action android:name="android.intent.action.PACKAGE_CHANGED" />

                <data android:scheme="package" />
            </intent-filter>
            <intent-filter>
                <action android:name="android.net.conn.CONNECTIVITY_CHANGE" />
            </intent-filter>
            <intent-filter>
                <action android:name="android.intent.action.MEDIA_MOUNTED" />
                <action android:name="android.intent.action.MEDIA_UNMOUNTED" />

                <data android:scheme="file" />
            </intent-filter>
        </receiver>

         <!-- 需修改android:authorities="packagename"替换packagename为应用包名, 如：android:authorities="com.baidu.test" -->
        <provider
            android:name="com.duoku.platform.download.DownloadProvider"
            android:authorities="${entity.javaPackage}"
            android:exported="false" />
        
        <!-- ↑↑↑ 多酷SDK ↑↑↑ -->
        
        
        <!-- ↓↓↓ 录屏 ↓↓↓ -->
	    <!-- <activity
            android:name="mobisocial.omlet.overlaybar.ui.activity.SigninActivity"
            android:hardwareAccelerated="true"
            android:screenOrientation="sensorLandscape"
            android:theme="@style/Omp.Theme.Transparent" >
        </activity>
        <activity
            android:name="mobisocial.omlet.overlaybar.ui.activity.UploadCompleteActivity"
            android:hardwareAccelerated="true"
            android:screenOrientation="sensorLandscape"
            android:theme="@style/Omp.Theme.Dialog" >
        </activity>
        <activity
            android:name="mobisocial.omlet.overlaybar.ui.activity.VideoEditorActivity"
            android:configChanges="orientation|screenSize"
            android:hardwareAccelerated="true"
            android:screenOrientation="sensorLandscape"
            android:theme="@style/Omp.Theme.Transparent" >
        </activity>
        <activity
            android:name="mobisocial.omlet.overlaybar.ui.activity.ScreenshotEditActivity"
            android:hardwareAccelerated="true"
            android:screenOrientation="sensorLandscape"
            android:theme="@style/Omp.Theme.Transparent" >
        </activity>
        <activity
            android:name="mobisocial.omlet.overlaybar.ui.activity.MediaUploadActivity"
            android:configChanges="orientation|screenSize"
            android:exported="false"
            android:hardwareAccelerated="true"
            android:screenOrientation="sensorLandscape"
            android:theme="@style/Omp.Theme.Transparent" >
        </activity>

        <service
            android:name="mobisocial.omlet.overlaybar.util.FileUploadIntentService"
            android:exported="false" >
        </service>
        <service
            android:name="mobisocial.omlib.service.OmlibService"
            android:exported="false"
            android:label="Omlet Network Service" />
        
        需修改android:authorities="packagename.provider
        	替换packagename为应用包名, 如：android:authorities="com.baidu.test.provider"
        <provider
			android:name="mobisocial.omlib.service.OmlibContentProvider"
			android:authorities="${entity.javaPackage}.provider" />
        
        需修改android:authorities="packagename.initializer"
        	替换packagename为应用包名, 如：android:authorities="com.baidu.test.initializer"
        <provider
			android:name="glrecorder.Initializer"
			android:authorities="${entity.javaPackage}.initializer"
			android:exported="false"
			android:initOrder="2147483647" /> -->
	    <!-- ↑↑↑ 录屏 ↑↑↑ -->
    </application>
</manifest>

