package com.microsoft.appcenter.distribute;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.AppNameHelper;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
/* loaded from: classes4.dex */
public class UpdateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        AppCenterLog.verbose("AppCenterDistribute", "Receive broadcast action: " + action);
        if ("android.intent.action.MY_PACKAGE_REPLACED".equals(action)) {
            onPackageReplaced(context);
        }
    }

    private void onPackageReplaced(Context context) {
        AppCenterLog.debug("AppCenterDistribute", "Post a notification as the installation finished in background.");
        DistributeUtils.postNotification(context, context.getString(R$string.appcenter_distribute_install_completed_title), getInstallCompletedMessage(context), DistributeUtils.getResumeAppIntent(context));
    }

    private static String getInstallCompletedMessage(Context context) {
        String str;
        int i;
        PackageInfo packageInfo = DeviceInfoHelper.getPackageInfo(context);
        if (packageInfo != null) {
            str = packageInfo.versionName;
            i = DeviceInfoHelper.getVersionCode(packageInfo);
        } else {
            str = "?";
            i = 0;
        }
        return String.format(context.getString(R$string.appcenter_distribute_install_completed_message), AppNameHelper.getAppName(context), str, Integer.valueOf(i));
    }
}
