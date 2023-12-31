package com.iMe.services.utils;

import android.app.PendingIntent;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.iMe.services.receivers.BaseStopServiceReceiver;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationsController;
/* compiled from: ServiceNotificationsUtils.kt */
/* loaded from: classes3.dex */
public final class ServiceNotificationsUtils {
    public static final ServiceNotificationsUtils INSTANCE = new ServiceNotificationsUtils();

    private ServiceNotificationsUtils() {
    }

    public final NotificationCompat.Builder createCancellableNotification(String notificationChannelName, int i, Class<? extends BaseStopServiceReceiver> cancelIntentReceiverClass) {
        Intrinsics.checkNotNullParameter(notificationChannelName, "notificationChannelName");
        Intrinsics.checkNotNullParameter(cancelIntentReceiverClass, "cancelIntentReceiverClass");
        NotificationsController.checkOtherNotificationsChannel();
        Intent intent = new Intent(ApplicationLoader.applicationContext, cancelIntentReceiverClass);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(ApplicationLoader.applicationContext, notificationChannelName);
        builder.setWhen(DateExtKt.now());
        builder.setSmallIcon(i);
        builder.setChannelId(NotificationsController.OTHER_NOTIFICATIONS_CHANNEL);
        builder.setContentTitle(LocaleController.getString("AppName", C3632R.string.AppName));
        builder.setProgress(0, 0, true);
        builder.addAction(0, LocaleController.getString("Cancel", C3632R.string.Cancel), PendingIntent.getBroadcast(ApplicationLoader.applicationContext, 2, intent, 167772160));
        return builder;
    }
}
