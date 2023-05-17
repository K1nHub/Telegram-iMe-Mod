package org.telegram.messenger;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.iMe.manager.notifications.PushNotificationsManager;
import java.util.Map;
import kotlin.Lazy;
import org.koin.java.KoinJavaComponent;
import timber.log.Timber;
/* loaded from: classes4.dex */
public class GcmPushListenerService extends FirebaseMessagingService {
    private final Lazy<PushNotificationsManager> pushNotificationsManager = KoinJavaComponent.inject(PushNotificationsManager.class);

    @Override // com.google.firebase.messaging.EnhancedIntentService, android.app.Service
    public void onDestroy() {
        try {
            this.pushNotificationsManager.getValue().onDestroy();
        } catch (Exception e) {
            Timber.m6e(e);
        }
        super.onDestroy();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        String from = remoteMessage.getFrom();
        Map<String, String> data = remoteMessage.getData();
        long sentTime = remoteMessage.getSentTime();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m52d("FCM received data: " + data + " from: " + from);
        }
        PushListenerController.processRemoteMessage(2, data.get(TtmlNode.TAG_P), sentTime, data);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.GcmPushListenerService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GcmPushListenerService.lambda$onNewToken$0(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onNewToken$0(String str) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m52d("Refreshed FCM token: " + str);
        }
        ApplicationLoader.postInitApplication();
        PushListenerController.sendRegistrationToServer(2, str);
    }
}
