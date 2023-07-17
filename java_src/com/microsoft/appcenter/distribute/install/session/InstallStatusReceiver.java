package com.microsoft.appcenter.distribute.install.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.Locale;
import org.telegram.tgnet.ConnectionsManager;
/* loaded from: classes4.dex */
class InstallStatusReceiver extends BroadcastReceiver {
    private final SessionReleaseInstaller mInstaller;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IntentFilter getInstallerReceiverFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.microsoft.appcenter.action.INSTALL_STATUS");
        return intentFilter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IntentSender getInstallStatusIntentSender(Context context, int requestCode) {
        return PendingIntent.getBroadcast(context, requestCode, new Intent("com.microsoft.appcenter.action.INSTALL_STATUS"), Build.VERSION.SDK_INT >= 31 ? ConnectionsManager.FileTypeVideo : 0).getIntentSender();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InstallStatusReceiver(SessionReleaseInstaller installer) {
        this.mInstaller = installer;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        AppCenterLog.verbose("AppCenterDistribute", "Receive broadcast action: " + action);
        if ("com.microsoft.appcenter.action.INSTALL_STATUS".equals(action)) {
            onInstallStatus(intent);
        }
    }

    private void onInstallStatus(Intent intent) {
        Bundle extras = intent.getExtras();
        for (String str : extras.keySet()) {
            AppCenterLog.verbose("AppCenterDistribute", "\t" + str + ": " + extras.get(str));
        }
        int i = extras.getInt("android.content.pm.extra.STATUS");
        int i2 = extras.getInt("android.content.pm.extra.SESSION_ID");
        switch (i) {
            case -1:
                this.mInstaller.onInstallConfirmation(i2, (Intent) extras.getParcelable("android.intent.extra.INTENT"));
                return;
            case 0:
                AppCenterLog.info("AppCenterDistribute", "Application was successfully updated.");
                return;
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
                this.mInstaller.onInstallError(i2, extras.getString("android.content.pm.extra.STATUS_MESSAGE"));
                return;
            case 3:
                this.mInstaller.onInstallCancel(i2);
                return;
            default:
                AppCenterLog.warn("AppCenterDistribute", String.format(Locale.ENGLISH, "Unrecognized status received from installer: %s", Integer.valueOf(i)));
                return;
        }
    }
}
