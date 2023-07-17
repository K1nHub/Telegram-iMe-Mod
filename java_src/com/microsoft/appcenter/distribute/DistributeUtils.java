package com.microsoft.appcenter.distribute;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.HashUtils;
import com.microsoft.appcenter.utils.IdHelper;
import com.microsoft.appcenter.utils.NetworkStateHelper;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.util.UUID;
import org.json.JSONException;
import org.telegram.tgnet.ConnectionsManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DistributeUtils {
    static int getNotificationId() {
        return Distribute.class.getName().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void postNotification(Context context, String title, String message, Intent intent) {
        Notification.Builder oldNotificationBuilder;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            notificationManager.createNotificationChannel(new NotificationChannel("appcenter.distribute", context.getString(R$string.appcenter_distribute_notification_category), 3));
            oldNotificationBuilder = new Notification.Builder(context, "appcenter.distribute");
        } else {
            oldNotificationBuilder = getOldNotificationBuilder(context);
        }
        oldNotificationBuilder.setTicker(title).setContentTitle(title).setContentText(message).setSmallIcon(context.getApplicationInfo().icon).setStyle(new Notification.BigTextStyle().bigText(message)).setContentIntent(PendingIntent.getActivity(context, 0, intent, i >= 23 ? ConnectionsManager.FileTypeFile : 0));
        Notification build = oldNotificationBuilder.build();
        build.flags |= 16;
        notificationManager.notify(getNotificationId(), build);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cancelNotification(Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancel(getNotificationId());
    }

    private static Notification.Builder getOldNotificationBuilder(Context context) {
        return new Notification.Builder(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getStoredDownloadState() {
        return SharedPreferencesManager.getInt("Distribute.download_state", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getResumeAppIntent(Context context) {
        Intent intent = new Intent(context, DeepLinkActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String computeReleaseHash(PackageInfo packageInfo) {
        return HashUtils.sha256(packageInfo.packageName + ":" + packageInfo.versionName + ":" + DeviceInfoHelper.getVersionCode(packageInfo));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateSetupUsingTesterApp(Activity activity, PackageInfo packageInfo) {
        String computeReleaseHash = computeReleaseHash(packageInfo);
        String uuid = UUID.randomUUID().toString();
        String str = (((("ms-actesterapp://update-setup?release_hash=" + computeReleaseHash) + "&redirect_id=" + activity.getPackageName()) + "&redirect_scheme=appcenter") + "&request_id=" + uuid) + "&platform=Android";
        AppCenterLog.debug("AppCenterDistribute", "No token, need to open tester app to url=" + str);
        SharedPreferencesManager.putString("Distribute.request_id", uuid);
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateSetupUsingBrowser(Activity activity, String installUrl, String appSecret, PackageInfo packageInfo) {
        if (!NetworkStateHelper.getSharedInstance(activity).isNetworkConnected()) {
            AppCenterLog.info("AppCenterDistribute", "Postpone enabling in app updates via browser as network is disconnected.");
            Distribute.getInstance().completeWorkflow();
            return;
        }
        String computeReleaseHash = computeReleaseHash(packageInfo);
        String uuid = UUID.randomUUID().toString();
        String str = (((((((installUrl + String.format("/apps/%s/private-update-setup/", appSecret)) + "?release_hash=" + computeReleaseHash) + "&redirect_id=" + activity.getPackageName()) + "&redirect_scheme=appcenter") + "&request_id=" + uuid) + "&platform=Android") + "&enable_failure_redirect=true") + "&install_id=" + IdHelper.getInstallId().toString();
        AppCenterLog.debug("AppCenterDistribute", "No token, need to open browser to url=" + str);
        SharedPreferencesManager.putString("Distribute.request_id", uuid);
        BrowserUtils.openBrowser(str, activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ReleaseDetails loadCachedReleaseDetails() {
        String string = SharedPreferencesManager.getString("Distribute.release_details");
        if (string != null) {
            try {
                return ReleaseDetails.parse(string);
            } catch (JSONException e) {
                AppCenterLog.error("AppCenterDistribute", "Invalid release details in cache.", e);
                SharedPreferencesManager.remove("Distribute.release_details");
                return null;
            }
        }
        return null;
    }
}
