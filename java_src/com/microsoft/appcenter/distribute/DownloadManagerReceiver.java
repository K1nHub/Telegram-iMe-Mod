package com.microsoft.appcenter.distribute;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.AsyncTaskUtils;
/* loaded from: classes4.dex */
public class DownloadManagerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        AppCenterLog.verbose("AppCenterDistribute", "Receive broadcast action: " + action);
        if ("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED".equals(action)) {
            Distribute.getInstance().resumeApp(context);
        } else if ("android.intent.action.DOWNLOAD_COMPLETE".equals(action)) {
            long longExtra = intent.getLongExtra("extra_download_id", -1L);
            if (longExtra != -1) {
                AsyncTaskUtils.execute("AppCenterDistribute", new ResumeFromBackgroundTask(context, longExtra), new Void[0]);
            }
        }
    }
}
