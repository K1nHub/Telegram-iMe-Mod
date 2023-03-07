package org.telegram.messenger;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p048ui.Components.spoilers.SpoilerEffect;
import org.telegram.p048ui.PopupNotificationActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_account_updateNotifySettings;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputNotifyBroadcasts;
import org.telegram.tgnet.TLRPC$TL_inputNotifyChats;
import org.telegram.tgnet.TLRPC$TL_inputNotifyForumTopic;
import org.telegram.tgnet.TLRPC$TL_inputNotifyPeer;
import org.telegram.tgnet.TLRPC$TL_inputNotifyUsers;
import org.telegram.tgnet.TLRPC$TL_inputPeerNotifySettings;
import org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp;
import org.telegram.tgnet.TLRPC$TL_messageActionEmpty;
import org.telegram.tgnet.TLRPC$TL_messageActionPinMessage;
import org.telegram.tgnet.TLRPC$TL_messageActionSetMessagesTTL;
import org.telegram.tgnet.TLRPC$TL_messageActionUserJoined;
import org.telegram.tgnet.TLRPC$TL_messageEntitySpoiler;
import org.telegram.tgnet.TLRPC$TL_notificationSoundDefault;
import org.telegram.tgnet.TLRPC$TL_notificationSoundLocal;
import org.telegram.tgnet.TLRPC$TL_notificationSoundNone;
import org.telegram.tgnet.TLRPC$TL_notificationSoundRingtone;
import org.telegram.tgnet.TLRPC$TL_peerNotifySettings;
import org.telegram.tgnet.TLRPC$User;
import p034j$.util.function.Consumer;
/* loaded from: classes4.dex */
public class NotificationsController extends BaseController {
    public static final String EXTRA_VOICE_REPLY = "extra_voice_reply";
    private static volatile NotificationsController[] Instance = null;
    public static String OTHER_NOTIFICATIONS_CHANNEL = null;
    public static final int SETTING_MUTE_2_DAYS = 2;
    public static final int SETTING_MUTE_8_HOURS = 1;
    public static final int SETTING_MUTE_CUSTOM = 5;
    public static final int SETTING_MUTE_FOREVER = 3;
    public static final int SETTING_MUTE_HOUR = 0;
    public static final int SETTING_MUTE_UNMUTE = 4;
    public static final int SETTING_SOUND_OFF = 1;
    public static final int SETTING_SOUND_ON = 0;
    public static final int TYPE_CHANNEL = 2;
    public static final int TYPE_GROUP = 0;
    public static final int TYPE_PRIVATE = 1;
    protected static AudioManager audioManager;
    private static final Object[] lockObjects;
    private static NotificationManagerCompat notificationManager;
    private static NotificationManager systemNotificationManager;
    private AlarmManager alarmManager;
    private boolean channelGroupsCreated;
    private ArrayList<MessageObject> delayedPushMessages;
    NotificationsSettingsFacade dialogsNotificationsFacade;
    private LongSparseArray<MessageObject> fcmRandomMessagesDict;
    private Boolean groupsCreated;
    private boolean inChatSoundEnabled;
    private int lastBadgeCount;
    private int lastButtonId;
    public long lastNotificationChannelCreateTime;
    private int lastOnlineFromOtherDevice;
    private long lastSoundOutPlay;
    private long lastSoundPlay;
    private LongSparseArray<Integer> lastWearNotifiedMessageId;
    private String launcherClassName;
    private SpoilerEffect mediaSpoilerEffect;
    private Runnable notificationDelayRunnable;
    private PowerManager.WakeLock notificationDelayWakelock;
    private String notificationGroup;
    private int notificationId;
    private boolean notifyCheck;
    private long openedDialogId;
    private HashSet<Long> openedInBubbleDialogs;
    private int openedTopicId;
    private int personalCount;
    public ArrayList<MessageObject> popupMessages;
    public ArrayList<MessageObject> popupReplyMessages;
    private LongSparseArray<Integer> pushDialogs;
    private LongSparseArray<Integer> pushDialogsOverrideMention;
    private ArrayList<MessageObject> pushMessages;
    private LongSparseArray<SparseArray<MessageObject>> pushMessagesDict;
    public boolean showBadgeMessages;
    public boolean showBadgeMuted;
    public boolean showBadgeNumber;
    private LongSparseArray<Point> smartNotificationsDialogs;
    private int soundIn;
    private boolean soundInLoaded;
    private int soundOut;
    private boolean soundOutLoaded;
    private SoundPool soundPool;
    private int soundRecord;
    private boolean soundRecordLoaded;
    char[] spoilerChars;
    private int total_unread_count;
    private LongSparseArray<Integer> wearNotificationsIds;
    private static DispatchQueue notificationsQueue = new DispatchQueue("notificationsQueue");
    public static long globalSecretChatId = DialogObject.makeEncryptedDialogId(1);

    public static String getGlobalNotificationsKey(int i) {
        return i == 0 ? "EnableGroup2" : i == 1 ? "EnableAll2" : "EnableChannel2";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$40(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public void setDialogNotificationsSettings(long j, int i, int i2) {
        setDialogNotificationsSettings(j, i, i2, null, null);
    }

    public void updateServerNotificationsSettings(long j, int i) {
        updateServerNotificationsSettings(j, i, null, null);
    }

    public void updateServerNotificationsSettings(long j, int i, boolean z) {
        updateServerNotificationsSettings(j, i, z, null, null);
    }

    static {
        notificationManager = null;
        systemNotificationManager = null;
        if (Build.VERSION.SDK_INT >= 26 && ApplicationLoader.applicationContext != null) {
            notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
            systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService("notification");
            checkOtherNotificationsChannel();
        }
        audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService("audio");
        Instance = new NotificationsController[5];
        lockObjects = new Object[5];
        for (int i = 0; i < 5; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static NotificationsController getInstance(int i) {
        NotificationsController notificationsController = Instance[i];
        if (notificationsController == null) {
            synchronized (lockObjects[i]) {
                notificationsController = Instance[i];
                if (notificationsController == null) {
                    NotificationsController[] notificationsControllerArr = Instance;
                    NotificationsController notificationsController2 = new NotificationsController(i);
                    notificationsControllerArr[i] = notificationsController2;
                    notificationsController = notificationsController2;
                }
            }
        }
        return notificationsController;
    }

    public NotificationsController(int i) {
        super(i);
        this.pushMessages = new ArrayList<>();
        this.delayedPushMessages = new ArrayList<>();
        this.pushMessagesDict = new LongSparseArray<>();
        this.fcmRandomMessagesDict = new LongSparseArray<>();
        this.smartNotificationsDialogs = new LongSparseArray<>();
        this.pushDialogs = new LongSparseArray<>();
        this.wearNotificationsIds = new LongSparseArray<>();
        this.lastWearNotifiedMessageId = new LongSparseArray<>();
        this.pushDialogsOverrideMention = new LongSparseArray<>();
        this.popupMessages = new ArrayList<>();
        this.popupReplyMessages = new ArrayList<>();
        this.openedInBubbleDialogs = new HashSet<>();
        this.openedDialogId = 0L;
        this.openedTopicId = 0;
        this.lastButtonId = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.notifyCheck = false;
        this.lastOnlineFromOtherDevice = 0;
        this.lastBadgeCount = -1;
        this.mediaSpoilerEffect = new SpoilerEffect();
        this.spoilerChars = new char[]{10252, 10338, 10385, 10280};
        this.notificationId = this.currentAccount + 1;
        StringBuilder sb = new StringBuilder();
        sb.append("messages");
        int i2 = this.currentAccount;
        sb.append(i2 == 0 ? "" : Integer.valueOf(i2));
        this.notificationGroup = sb.toString();
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        this.inChatSoundEnabled = notificationsSettings.getBoolean("EnableInChatSound", true);
        this.showBadgeNumber = notificationsSettings.getBoolean("badgeNumber", true);
        this.showBadgeMuted = notificationsSettings.getBoolean("badgeNumberMuted", false);
        this.showBadgeMessages = notificationsSettings.getBoolean("badgeNumberMessages", true);
        notificationManager = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
        systemNotificationManager = (NotificationManager) ApplicationLoader.applicationContext.getSystemService("notification");
        try {
            audioManager = (AudioManager) ApplicationLoader.applicationContext.getSystemService("audio");
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
        try {
            PowerManager.WakeLock newWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.m45e(e3);
        }
        this.notificationDelayRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$new$0();
            }
        };
        this.dialogsNotificationsFacade = new NotificationsSettingsFacade(this.currentAccount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m48d("delay reached");
        }
        if (!this.delayedPushMessages.isEmpty()) {
            showOrUpdateNotification(true);
            this.delayedPushMessages.clear();
        }
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static void checkOtherNotificationsChannel() {
        SharedPreferences sharedPreferences;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            OTHER_NOTIFICATIONS_CHANNEL = sharedPreferences.getString("OtherKey", "Other3");
        } else {
            sharedPreferences = null;
        }
        NotificationChannel notificationChannel = systemNotificationManager.getNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
        if (notificationChannel != null && notificationChannel.getImportance() == 0) {
            systemNotificationManager.deleteNotificationChannel(OTHER_NOTIFICATIONS_CHANNEL);
            OTHER_NOTIFICATIONS_CHANNEL = null;
            notificationChannel = null;
        }
        if (OTHER_NOTIFICATIONS_CHANNEL == null) {
            if (sharedPreferences == null) {
                sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("Notifications", 0);
            }
            OTHER_NOTIFICATIONS_CHANNEL = "Other" + Utilities.random.nextLong();
            sharedPreferences.edit().putString("OtherKey", OTHER_NOTIFICATIONS_CHANNEL).commit();
        }
        if (notificationChannel == null) {
            NotificationChannel notificationChannel2 = new NotificationChannel(OTHER_NOTIFICATIONS_CHANNEL, "Internal notifications", 3);
            notificationChannel2.enableLights(false);
            notificationChannel2.enableVibration(false);
            notificationChannel2.setSound(null, null);
            try {
                systemNotificationManager.createNotificationChannel(notificationChannel2);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    public static String getSharedPrefKey(long j, int i) {
        String l = Long.toString(j);
        if (i != 0) {
            return l + "_" + i;
        }
        return l;
    }

    public void muteUntil(long j, int i, int i2) {
        long j2 = 0;
        if (j != 0) {
            SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
            boolean z = i != 0;
            boolean isGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j);
            String sharedPrefKey = getSharedPrefKey(j, i);
            if (i2 != Integer.MAX_VALUE) {
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 3);
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + sharedPrefKey, getConnectionsManager().getCurrentTime() + i2);
                j2 = (((long) i2) << 32) | 1;
            } else if (!isGlobalNotificationsEnabled && !z) {
                edit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
            } else {
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey, 2);
                j2 = 1L;
            }
            edit.apply();
            if (i == 0) {
                getInstance(this.currentAccount).removeNotificationsForDialog(j);
                MessagesStorage.getInstance(this.currentAccount).setDialogFlags(j, j2);
                TLRPC$Dialog tLRPC$Dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j);
                if (tLRPC$Dialog != null) {
                    TLRPC$TL_peerNotifySettings tLRPC$TL_peerNotifySettings = new TLRPC$TL_peerNotifySettings();
                    tLRPC$Dialog.notify_settings = tLRPC$TL_peerNotifySettings;
                    if (i2 != Integer.MAX_VALUE || isGlobalNotificationsEnabled) {
                        tLRPC$TL_peerNotifySettings.mute_until = i2;
                    }
                }
            }
            getInstance(this.currentAccount).updateServerNotificationsSettings(j, i);
        }
    }

    public void cleanup() {
        this.popupMessages.clear();
        this.popupReplyMessages.clear();
        this.channelGroupsCreated = false;
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$cleanup$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$1() {
        this.openedDialogId = 0L;
        this.openedTopicId = 0;
        this.total_unread_count = 0;
        this.personalCount = 0;
        this.pushMessages.clear();
        this.pushMessagesDict.clear();
        this.fcmRandomMessagesDict.clear();
        this.pushDialogs.clear();
        this.wearNotificationsIds.clear();
        this.lastWearNotifiedMessageId.clear();
        this.openedInBubbleDialogs.clear();
        this.delayedPushMessages.clear();
        this.notifyCheck = false;
        this.lastBadgeCount = 0;
        try {
            if (this.notificationDelayWakelock.isHeld()) {
                this.notificationDelayWakelock.release();
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        dismissNotification();
        setBadge(getTotalAllUnreadCount());
        SharedPreferences.Editor edit = getAccountInstance().getNotificationsSettings().edit();
        edit.clear();
        edit.commit();
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                systemNotificationManager.deleteNotificationChannelGroup("channels" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("groups" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("private" + this.currentAccount);
                systemNotificationManager.deleteNotificationChannelGroup("other" + this.currentAccount);
                String str = this.currentAccount + "channel";
                List<NotificationChannel> notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                for (int i = 0; i < size; i++) {
                    String id = notificationChannels.get(i).getId();
                    if (id.startsWith(str)) {
                        try {
                            systemNotificationManager.deleteNotificationChannel(id);
                        } catch (Exception e2) {
                            FileLog.m45e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m48d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m45e(th);
            }
        }
    }

    public void setInChatSoundEnabled(boolean z) {
        this.inChatSoundEnabled = z;
    }

    public void setOpenedDialogId(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$setOpenedDialogId$2(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedDialogId$2(long j, int i) {
        this.openedDialogId = j;
        this.openedTopicId = i;
    }

    public void setOpenedInBubble(final long j, final boolean z) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$setOpenedInBubble$3(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenedInBubble$3(boolean z, long j) {
        if (z) {
            this.openedInBubbleDialogs.add(Long.valueOf(j));
        } else {
            this.openedInBubbleDialogs.remove(Long.valueOf(j));
        }
    }

    public void setLastOnlineFromOtherDevice(final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$setLastOnlineFromOtherDevice$4(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastOnlineFromOtherDevice$4(int i) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m48d("set last online from other device = " + i);
        }
        this.lastOnlineFromOtherDevice = i;
    }

    public void removeNotificationsForDialog(long j) {
        processReadMessages(null, j, 0, Integer.MAX_VALUE, false);
        LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
        longSparseIntArray.put(j, 0);
        processDialogsUpdateRead(longSparseIntArray);
    }

    public boolean hasMessagesToReply() {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if ((!tLRPC$Message.mentioned || !(tLRPC$Message.action instanceof TLRPC$TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forceShowPopupForReply() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$forceShowPopupForReply$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$6() {
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.pushMessages.size(); i++) {
            MessageObject messageObject = this.pushMessages.get(i);
            long dialogId = messageObject.getDialogId();
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if ((!tLRPC$Message.mentioned || !(tLRPC$Message.action instanceof TLRPC$TL_messageActionPinMessage)) && !DialogObject.isEncryptedDialog(dialogId) && (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup())) {
                arrayList.add(0, messageObject);
            }
        }
        if (arrayList.isEmpty() || AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$forceShowPopupForReply$5(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forceShowPopupForReply$5(ArrayList arrayList) {
        this.popupReplyMessages = arrayList;
        Intent intent = new Intent(ApplicationLoader.applicationContext, PopupNotificationActivity.class);
        intent.putExtra("force", true);
        intent.putExtra("currentAccount", this.currentAccount);
        intent.setFlags(268763140);
        ApplicationLoader.applicationContext.startActivity(intent);
        ApplicationLoader.applicationContext.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    public void removeDeletedMessagesFromNotifications(final LongSparseArray<ArrayList<Integer>> longSparseArray, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$removeDeletedMessagesFromNotifications$9(longSparseArray, z, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$9(LongSparseArray longSparseArray, boolean z, final ArrayList arrayList) {
        long j;
        Integer num;
        LongSparseArray longSparseArray2 = longSparseArray;
        int i = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        int i2 = 0;
        while (i2 < longSparseArray.size()) {
            long keyAt = longSparseArray2.keyAt(i2);
            SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(keyAt);
            if (sparseArray != null) {
                ArrayList arrayList2 = (ArrayList) longSparseArray2.get(keyAt);
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    int intValue = ((Integer) arrayList2.get(i3)).intValue();
                    MessageObject messageObject = sparseArray.get(intValue);
                    if (messageObject == null || (z && !messageObject.isReactionPush)) {
                        j = keyAt;
                    } else {
                        j = keyAt;
                        long dialogId = messageObject.getDialogId();
                        Integer num2 = this.pushDialogs.get(dialogId);
                        if (num2 == null) {
                            num2 = 0;
                        }
                        Integer valueOf = Integer.valueOf(num2.intValue() - 1);
                        if (valueOf.intValue() <= 0) {
                            this.smartNotificationsDialogs.remove(dialogId);
                            num = 0;
                        } else {
                            num = valueOf;
                        }
                        if (!num.equals(num2)) {
                            if (getMessagesController().isForum(dialogId)) {
                                int i4 = this.total_unread_count - (num2.intValue() > 0 ? 1 : 0);
                                this.total_unread_count = i4;
                                this.total_unread_count = i4 + (num.intValue() > 0 ? 1 : 0);
                            } else {
                                int intValue2 = this.total_unread_count - num2.intValue();
                                this.total_unread_count = intValue2;
                                this.total_unread_count = intValue2 + num.intValue();
                            }
                            this.pushDialogs.put(dialogId, num);
                        }
                        if (num.intValue() == 0) {
                            this.pushDialogs.remove(dialogId);
                            this.pushDialogsOverrideMention.remove(dialogId);
                        }
                        sparseArray.remove(intValue);
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                    }
                    i3++;
                    keyAt = j;
                }
                long j2 = keyAt;
                if (sparseArray.size() == 0) {
                    this.pushMessagesDict.remove(j2);
                }
            }
            i2++;
            longSparseArray2 = longSparseArray;
        }
        if (!arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$removeDeletedMessagesFromNotifications$7(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (!this.notifyCheck) {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            }
            final int size2 = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$removeDeletedMessagesFromNotifications$8(size2);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$7(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$8(int i) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void removeDeletedHisoryFromNotifications(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$removeDeletedHisoryFromNotifications$12(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$12(LongSparseIntArray longSparseIntArray, final ArrayList arrayList) {
        Integer num;
        int i = this.total_unread_count;
        getAccountInstance().getNotificationsSettings();
        Integer num2 = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= longSparseIntArray.size()) {
                break;
            }
            long keyAt = longSparseIntArray.keyAt(i2);
            long j = -keyAt;
            long j2 = longSparseIntArray.get(keyAt);
            Integer num3 = this.pushDialogs.get(j);
            if (num3 == null) {
                num3 = num2;
            }
            Integer num4 = num3;
            int i3 = 0;
            while (i3 < this.pushMessages.size()) {
                MessageObject messageObject = this.pushMessages.get(i3);
                if (messageObject.getDialogId() == j) {
                    num = num2;
                    if (messageObject.getId() <= j2) {
                        SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(j);
                        if (sparseArray != null) {
                            sparseArray.remove(messageObject.getId());
                            if (sparseArray.size() == 0) {
                                this.pushMessagesDict.remove(j);
                            }
                        }
                        this.delayedPushMessages.remove(messageObject);
                        this.pushMessages.remove(messageObject);
                        i3--;
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        num4 = Integer.valueOf(num4.intValue() - 1);
                    }
                } else {
                    num = num2;
                }
                i3++;
                num2 = num;
            }
            Integer num5 = num2;
            if (num4.intValue() <= 0) {
                this.smartNotificationsDialogs.remove(j);
                num4 = num5;
            }
            if (!num4.equals(num3)) {
                if (getMessagesController().isForum(j)) {
                    int i4 = this.total_unread_count - (num3.intValue() > 0 ? 1 : 0);
                    this.total_unread_count = i4;
                    this.total_unread_count = i4 + (num4.intValue() <= 0 ? 0 : 1);
                } else {
                    int intValue = this.total_unread_count - num3.intValue();
                    this.total_unread_count = intValue;
                    this.total_unread_count = intValue + num4.intValue();
                }
                this.pushDialogs.put(j, num4);
            }
            if (num4.intValue() == 0) {
                this.pushDialogs.remove(j);
                this.pushDialogsOverrideMention.remove(j);
            }
            i2++;
            num2 = num5;
        }
        if (arrayList.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$removeDeletedHisoryFromNotifications$10(arrayList);
                }
            });
        }
        if (i != this.total_unread_count) {
            if (!this.notifyCheck) {
                this.delayedPushMessages.clear();
                showOrUpdateNotification(this.notifyCheck);
            } else {
                scheduleNotificationDelay(this.lastOnlineFromOtherDevice > getConnectionsManager().getCurrentTime());
            }
            final int size = this.pushDialogs.size();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$removeDeletedHisoryFromNotifications$11(size);
                }
            });
        }
        this.notifyCheck = false;
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$10(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$11(int i) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processReadMessages(final LongSparseIntArray longSparseIntArray, final long j, final int i, final int i2, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processReadMessages$14(longSparseIntArray, arrayList, j, i2, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d7, code lost:
        r8 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processReadMessages$14(org.telegram.messenger.support.LongSparseIntArray r19, final java.util.ArrayList r20, long r21, int r23, int r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processReadMessages$14(org.telegram.messenger.support.LongSparseIntArray, java.util.ArrayList, long, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadMessages$13(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
        if (r0 == 2) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int addToPopupMessages(java.util.ArrayList<org.telegram.messenger.MessageObject> r4, org.telegram.messenger.MessageObject r5, long r6, boolean r8, android.content.SharedPreferences r9) {
        /*
            r3 = this;
            boolean r0 = org.telegram.messenger.DialogObject.isEncryptedDialog(r6)
            r1 = 0
            if (r0 != 0) goto L58
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "custom_"
            r0.append(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            boolean r0 = r9.getBoolean(r0, r1)
            if (r0 == 0) goto L34
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "popup_"
            r0.append(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.getInt(r0, r1)
            goto L35
        L34:
            r0 = 0
        L35:
            if (r0 != 0) goto L50
            if (r8 == 0) goto L40
            java.lang.String r6 = "popupChannel"
            int r0 = r9.getInt(r6, r1)
            goto L59
        L40:
            boolean r6 = org.telegram.messenger.DialogObject.isChatDialog(r6)
            if (r6 == 0) goto L49
            java.lang.String r6 = "popupGroup"
            goto L4b
        L49:
            java.lang.String r6 = "popupAll"
        L4b:
            int r0 = r9.getInt(r6, r1)
            goto L59
        L50:
            r6 = 1
            if (r0 != r6) goto L55
            r0 = 3
            goto L59
        L55:
            r6 = 2
            if (r0 != r6) goto L59
        L58:
            r0 = 0
        L59:
            if (r0 == 0) goto L6e
            org.telegram.tgnet.TLRPC$Message r6 = r5.messageOwner
            org.telegram.tgnet.TLRPC$Peer r6 = r6.peer_id
            long r6 = r6.channel_id
            r8 = 0
            int r2 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r2 == 0) goto L6e
            boolean r6 = r5.isSupergroup()
            if (r6 != 0) goto L6e
            r0 = 0
        L6e:
            if (r0 == 0) goto L73
            r4.add(r1, r5)
        L73:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.addToPopupMessages(java.util.ArrayList, org.telegram.messenger.MessageObject, long, boolean, android.content.SharedPreferences):int");
    }

    public void processEditedMessages(final LongSparseArray<ArrayList<MessageObject>> longSparseArray) {
        if (longSparseArray.size() == 0) {
            return;
        }
        new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processEditedMessages$15(longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processEditedMessages$15(LongSparseArray longSparseArray) {
        int size = longSparseArray.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (this.pushDialogs.indexOfKey(longSparseArray.keyAt(i)) >= 0) {
                ArrayList arrayList = (ArrayList) longSparseArray.valueAt(i);
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    MessageObject messageObject = (MessageObject) arrayList.get(i2);
                    long j = messageObject.messageOwner.peer_id.channel_id;
                    SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(j != 0 ? -j : 0L);
                    if (sparseArray == null) {
                        break;
                    }
                    MessageObject messageObject2 = sparseArray.get(messageObject.getId());
                    if (messageObject2 != null && messageObject2.isReactionPush) {
                        messageObject2 = null;
                    }
                    if (messageObject2 != null) {
                        sparseArray.put(messageObject.getId(), messageObject);
                        int indexOf = this.pushMessages.indexOf(messageObject2);
                        if (indexOf >= 0) {
                            this.pushMessages.set(indexOf, messageObject);
                        }
                        int indexOf2 = this.delayedPushMessages.indexOf(messageObject2);
                        if (indexOf2 >= 0) {
                            this.delayedPushMessages.set(indexOf2, messageObject);
                        }
                        z = true;
                    }
                }
            }
        }
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processNewMessages(final ArrayList<MessageObject> arrayList, final boolean z, final boolean z2, final CountDownLatch countDownLatch) {
        if (!arrayList.isEmpty()) {
            final ArrayList arrayList2 = new ArrayList(0);
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$processNewMessages$18(arrayList, arrayList2, z2, z, countDownLatch);
                }
            });
        } else if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processNewMessages$18(java.util.ArrayList r30, final java.util.ArrayList r31, boolean r32, boolean r33, java.util.concurrent.CountDownLatch r34) {
        /*
            Method dump skipped, instructions count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processNewMessages$18(java.util.ArrayList, java.util.ArrayList, boolean, boolean, java.util.concurrent.CountDownLatch):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$16(ArrayList arrayList, int i) {
        this.popupMessages.addAll(0, arrayList);
        if (ApplicationLoader.mainInterfacePaused || !ApplicationLoader.isScreenOn) {
            if (i == 3 || ((i == 1 && ApplicationLoader.isScreenOn) || (i == 2 && !ApplicationLoader.isScreenOn))) {
                Intent intent = new Intent(ApplicationLoader.applicationContext, PopupNotificationActivity.class);
                intent.setFlags(268763140);
                try {
                    ApplicationLoader.applicationContext.startActivity(intent);
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$17(int i) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private void appendMessage(MessageObject messageObject) {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            if (this.pushMessages.get(i).getId() == messageObject.getId() && this.pushMessages.get(i).getDialogId() == messageObject.getDialogId()) {
                return;
            }
        }
        this.pushMessages.add(0, messageObject);
    }

    public int getTotalUnreadCount() {
        return this.total_unread_count;
    }

    public void processDialogsUpdateRead(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList();
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processDialogsUpdateRead$21(longSparseIntArray, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0093 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processDialogsUpdateRead$21(org.telegram.messenger.support.LongSparseIntArray r18, final java.util.ArrayList r19) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processDialogsUpdateRead$21(org.telegram.messenger.support.LongSparseIntArray, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$19(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$20(int i) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processLoadedUnreadMessages(final LongSparseArray<Integer> longSparseArray, final ArrayList<TLRPC$Message> arrayList, final ArrayList<MessageObject> arrayList2, ArrayList<TLRPC$User> arrayList3, ArrayList<TLRPC$Chat> arrayList4, ArrayList<TLRPC$EncryptedChat> arrayList5) {
        getMessagesController().putUsers(arrayList3, true);
        getMessagesController().putChats(arrayList4, true);
        getMessagesController().putEncryptedChats(arrayList5, true);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processLoadedUnreadMessages$23(arrayList, longSparseArray, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$23(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2) {
        boolean z;
        boolean z2;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        int i;
        SparseArray<MessageObject> sparseArray;
        long j;
        boolean z3;
        SparseArray<MessageObject> sparseArray2;
        ArrayList arrayList3 = arrayList;
        this.pushDialogs.clear();
        this.pushMessages.clear();
        this.pushMessagesDict.clear();
        boolean z4 = false;
        this.total_unread_count = 0;
        this.personalCount = 0;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        LongSparseArray longSparseArray2 = new LongSparseArray();
        long j2 = 0;
        int i2 = 1;
        if (arrayList3 != null) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList3.get(i3);
                if (tLRPC$Message != null && ((tLRPC$MessageFwdHeader = tLRPC$Message.fwd_from) == null || !tLRPC$MessageFwdHeader.imported)) {
                    TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
                    if (!(tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetMessagesTTL) && (!tLRPC$Message.silent || (!(tLRPC$MessageAction instanceof TLRPC$TL_messageActionContactSignUp) && !(tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserJoined)))) {
                        long j3 = tLRPC$Message.peer_id.channel_id;
                        long j4 = j3 != j2 ? -j3 : j2;
                        SparseArray<MessageObject> sparseArray3 = this.pushMessagesDict.get(j4);
                        if (sparseArray3 == null || sparseArray3.indexOfKey(tLRPC$Message.f1518id) < 0) {
                            MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message, z4, z4);
                            if (isPersonalMessage(messageObject)) {
                                this.personalCount += i2;
                            }
                            i = i3;
                            long dialogId = messageObject.getDialogId();
                            int topicId = MessageObject.getTopicId(messageObject.messageOwner, getMessagesController().isForum(messageObject));
                            if (messageObject.messageOwner.mentioned) {
                                sparseArray = sparseArray3;
                                j = messageObject.getFromChatId();
                            } else {
                                sparseArray = sparseArray3;
                                j = dialogId;
                            }
                            int indexOfKey = longSparseArray2.indexOfKey(j);
                            if (indexOfKey >= 0 && topicId == 0) {
                                z3 = ((Boolean) longSparseArray2.valueAt(indexOfKey)).booleanValue();
                            } else {
                                int notifyOverride = getNotifyOverride(notificationsSettings, j, topicId);
                                if (notifyOverride == -1) {
                                    z3 = isGlobalNotificationsEnabled(j);
                                } else {
                                    z3 = notifyOverride != 2;
                                }
                                longSparseArray2.put(j, Boolean.valueOf(z3));
                            }
                            if (z3 && (j != this.openedDialogId || !ApplicationLoader.isScreenOn)) {
                                if (sparseArray == null) {
                                    sparseArray2 = new SparseArray<>();
                                    this.pushMessagesDict.put(j4, sparseArray2);
                                } else {
                                    sparseArray2 = sparseArray;
                                }
                                sparseArray2.put(tLRPC$Message.f1518id, messageObject);
                                appendMessage(messageObject);
                                if (dialogId != j) {
                                    Integer num = this.pushDialogsOverrideMention.get(dialogId);
                                    this.pushDialogsOverrideMention.put(dialogId, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                                }
                            }
                            i3 = i + 1;
                            arrayList3 = arrayList;
                            z4 = false;
                            j2 = 0;
                            i2 = 1;
                        }
                    }
                }
                i = i3;
                i3 = i + 1;
                arrayList3 = arrayList;
                z4 = false;
                j2 = 0;
                i2 = 1;
            }
        }
        for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
            long keyAt = longSparseArray.keyAt(i4);
            int indexOfKey2 = longSparseArray2.indexOfKey(keyAt);
            if (indexOfKey2 >= 0) {
                z2 = ((Boolean) longSparseArray2.valueAt(indexOfKey2)).booleanValue();
            } else {
                int notifyOverride2 = getNotifyOverride(notificationsSettings, keyAt, 0);
                if (notifyOverride2 == -1) {
                    z2 = isGlobalNotificationsEnabled(keyAt);
                } else {
                    z2 = notifyOverride2 != 2;
                }
                longSparseArray2.put(keyAt, Boolean.valueOf(z2));
            }
            if (z2) {
                int intValue = ((Integer) longSparseArray.valueAt(i4)).intValue();
                this.pushDialogs.put(keyAt, Integer.valueOf(intValue));
                if (getMessagesController().isForum(keyAt)) {
                    this.total_unread_count += intValue > 0 ? 1 : 0;
                } else {
                    this.total_unread_count += intValue;
                }
            }
        }
        if (arrayList2 != null) {
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                MessageObject messageObject2 = (MessageObject) arrayList2.get(i5);
                int id = messageObject2.getId();
                if (this.pushMessagesDict.indexOfKey(id) < 0) {
                    if (isPersonalMessage(messageObject2)) {
                        this.personalCount++;
                    }
                    long dialogId2 = messageObject2.getDialogId();
                    int topicId2 = MessageObject.getTopicId(messageObject2.messageOwner, getMessagesController().isForum(messageObject2));
                    TLRPC$Message tLRPC$Message2 = messageObject2.messageOwner;
                    long j5 = tLRPC$Message2.random_id;
                    long fromChatId = tLRPC$Message2.mentioned ? messageObject2.getFromChatId() : dialogId2;
                    int indexOfKey3 = longSparseArray2.indexOfKey(fromChatId);
                    if (indexOfKey3 >= 0 && topicId2 == 0) {
                        z = ((Boolean) longSparseArray2.valueAt(indexOfKey3)).booleanValue();
                    } else {
                        int notifyOverride3 = getNotifyOverride(notificationsSettings, fromChatId, topicId2);
                        if (notifyOverride3 == -1) {
                            z = isGlobalNotificationsEnabled(fromChatId);
                        } else {
                            z = notifyOverride3 != 2;
                        }
                        longSparseArray2.put(fromChatId, Boolean.valueOf(z));
                    }
                    if (z && (fromChatId != this.openedDialogId || !ApplicationLoader.isScreenOn)) {
                        if (id != 0) {
                            long j6 = messageObject2.messageOwner.peer_id.channel_id;
                            long j7 = j6 != 0 ? -j6 : 0L;
                            SparseArray<MessageObject> sparseArray4 = this.pushMessagesDict.get(j7);
                            if (sparseArray4 == null) {
                                sparseArray4 = new SparseArray<>();
                                this.pushMessagesDict.put(j7, sparseArray4);
                            }
                            sparseArray4.put(id, messageObject2);
                        } else if (j5 != 0) {
                            this.fcmRandomMessagesDict.put(j5, messageObject2);
                        }
                        appendMessage(messageObject2);
                        if (dialogId2 != fromChatId) {
                            Integer num2 = this.pushDialogsOverrideMention.get(dialogId2);
                            this.pushDialogsOverrideMention.put(dialogId2, Integer.valueOf(num2 == null ? 1 : num2.intValue() + 1));
                        }
                        Integer num3 = this.pushDialogs.get(fromChatId);
                        int intValue2 = num3 != null ? num3.intValue() + 1 : 1;
                        if (getMessagesController().isForum(fromChatId)) {
                            if (num3 != null) {
                                this.total_unread_count -= num3.intValue() > 0 ? 1 : 0;
                            }
                            this.total_unread_count += intValue2 > 0 ? 1 : 0;
                        } else {
                            if (num3 != null) {
                                this.total_unread_count -= num3.intValue();
                            }
                            this.total_unread_count += intValue2;
                        }
                        this.pushDialogs.put(fromChatId, Integer.valueOf(intValue2));
                    }
                }
            }
        }
        final int size = this.pushDialogs.size();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processLoadedUnreadMessages$22(size);
            }
        });
        showOrUpdateNotification(SystemClock.elapsedRealtime() / 1000 < 60);
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$22(int i) {
        if (this.total_unread_count == 0) {
            this.popupMessages.clear();
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private int getTotalAllUnreadCount() {
        int size;
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            if (UserConfig.getInstance(i2).isClientActivated()) {
                NotificationsController notificationsController = getInstance(i2);
                if (notificationsController.showBadgeNumber) {
                    if (notificationsController.showBadgeMessages) {
                        if (notificationsController.showBadgeMuted) {
                            try {
                                ArrayList arrayList = new ArrayList(MessagesController.getInstance(i2).allDialogs);
                                int size2 = arrayList.size();
                                for (int i3 = 0; i3 < size2; i3++) {
                                    TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) arrayList.get(i3);
                                    if ((tLRPC$Dialog == null || !DialogObject.isChatDialog(tLRPC$Dialog.f1500id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog.f1500id)))) && tLRPC$Dialog != null) {
                                        i += MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m45e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                        }
                    } else if (notificationsController.showBadgeMuted) {
                        try {
                            int size3 = MessagesController.getInstance(i2).allDialogs.size();
                            for (int i4 = 0; i4 < size3; i4++) {
                                TLRPC$Dialog tLRPC$Dialog2 = MessagesController.getInstance(i2).allDialogs.get(i4);
                                if ((!DialogObject.isChatDialog(tLRPC$Dialog2.f1500id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog2.f1500id)))) && MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog2) != 0) {
                                    i++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m44e((Throwable) e2, false);
                        }
                    } else {
                        size = notificationsController.pushDialogs.size();
                    }
                    i += size;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateBadge$24() {
        setBadge(getTotalAllUnreadCount());
    }

    public void updateBadge() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$updateBadge$24();
            }
        });
    }

    private void setBadge(int i) {
        if (this.lastBadgeCount == i) {
            return;
        }
        this.lastBadgeCount = i;
        NotificationBadge.applyCount(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x0243, code lost:
        if (r12.getBoolean("EnablePreviewAll", true) == false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x024f, code lost:
        if (r12.getBoolean("EnablePreviewGroup", r6) != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0259, code lost:
        if (r12.getBoolean(r24, r6) != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x025b, code lost:
        r1 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0269, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L659;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x026b, code lost:
        r27[0] = null;
        r2 = r1.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0273, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x027b, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x027e, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) != false) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0282, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp) == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0288, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0298, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactNewPhoto", org.telegram.messenger.C3158R.string.NotificationContactNewPhoto, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x029c, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionLoginUnknownLocation) == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x029e, code lost:
        r1 = org.telegram.messenger.LocaleController.formatString("formatDateAtTime", org.telegram.messenger.C3158R.string.formatDateAtTime, org.telegram.messenger.LocaleController.getInstance().formatterYear.format(r26.messageOwner.date * 1000), org.telegram.messenger.LocaleController.getInstance().formatterDay.format(r26.messageOwner.date * 1000));
        r2 = org.telegram.messenger.C3158R.string.NotificationUnrecognizedDevice;
        r0 = r26.messageOwner.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02fa, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationUnrecognizedDevice", r2, getUserConfig().getCurrentUser().first_name, r1, r0.title, r0.address);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x02fd, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) != false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0301, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0307, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPhoneCall) == false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x030b, code lost:
        if (r2.video == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0315, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageVideoIncomingMissed", org.telegram.messenger.C3158R.string.CallMessageVideoIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x031e, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageIncomingMissed", org.telegram.messenger.C3158R.string.CallMessageIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0321, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser) == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0323, code lost:
        r3 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0329, code lost:
        if (r3 != 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0332, code lost:
        if (r2.users.size() != 1) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0334, code lost:
        r3 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0349, code lost:
        if (r3 == 0) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0353, code lost:
        if (r26.messageOwner.peer_id.channel_id == 0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0357, code lost:
        if (r5.megagroup != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x036c, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3158R.string.ChannelAddedByNotification, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x036f, code lost:
        if (r3 != r19) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0384, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3158R.string.NotificationInvitedToGroup, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0385, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0391, code lost:
        if (r0 != null) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0393, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0399, code lost:
        if (r9 != r0.f1633id) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x039d, code lost:
        if (r5.megagroup == false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03b2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3158R.string.NotificationGroupAddSelfMega, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x03c6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3158R.string.NotificationGroupAddSelf, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03e0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3158R.string.NotificationGroupAddMember, r7, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x03e1, code lost:
        r1 = new java.lang.StringBuilder();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x03f1, code lost:
        if (r2 >= r26.messageOwner.action.users.size()) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x03f3, code lost:
        r3 = getMessagesController().getUser(r26.messageOwner.action.users.get(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0407, code lost:
        if (r3 == null) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0409, code lost:
        r3 = org.telegram.messenger.UserObject.getUserName(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0411, code lost:
        if (r1.length() == 0) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0413, code lost:
        r1.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0418, code lost:
        r1.append(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x041b, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0437, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3158R.string.NotificationGroupAddMember, r7, r5.title, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x043b, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x044f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3158R.string.NotificationGroupCreatedCall, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0452, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled) == false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x045a, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x045d, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall) == false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x045f, code lost:
        r3 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0465, code lost:
        if (r3 != 0) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x046e, code lost:
        if (r2.users.size() != 1) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0470, code lost:
        r3 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0485, code lost:
        if (r3 == 0) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0489, code lost:
        if (r3 != r19) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x049e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedYouToCall, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x049f, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x04ab, code lost:
        if (r0 != null) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x04ad, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x04c8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedToCall, r7, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04c9, code lost:
        r1 = new java.lang.StringBuilder();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04d9, code lost:
        if (r2 >= r26.messageOwner.action.users.size()) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x04db, code lost:
        r3 = getMessagesController().getUser(r26.messageOwner.action.users.get(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04ef, code lost:
        if (r3 == null) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x04f1, code lost:
        r3 = org.telegram.messenger.UserObject.getUserName(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x04f9, code lost:
        if (r1.length() == 0) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x04fb, code lost:
        r1.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0500, code lost:
        r1.append(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0503, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x051f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedToCall, r7, r5.title, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0523, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0538, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3158R.string.NotificationInvitedToGroupByLink, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x053e, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0550, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3158R.string.NotificationEditedGroupName, r7, r2.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0553, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L639;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0557, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x055d, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x055f, code lost:
        r1 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0563, code lost:
        if (r1 != r19) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0578, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3158R.string.NotificationGroupKickYou, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x057e, code lost:
        if (r1 != r9) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0590, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3158R.string.NotificationGroupLeftMember, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0591, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r26.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x05a3, code lost:
        if (r0 != null) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x05a5, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05c1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3158R.string.NotificationGroupKickMember, r7, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x05c4, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05cc, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05cf, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05d7, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05da, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x05ec, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3158R.string.ActionMigrateFromGroupNotify, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x05f1, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0601, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3158R.string.ActionMigrateFromGroupNotify, r2.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0604, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x060c, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x060f, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L618;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0615, code lost:
        if (r5 == null) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x061b, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x061f, code lost:
        if (r5.megagroup == false) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0621, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0623, code lost:
        if (r0 != null) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0638, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoText, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0640, code lost:
        if (r0.isMusic() == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0652, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3158R.string.NotificationActionPinnedMusic, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0659, code lost:
        if (r0.isVideo() == false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x065f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0669, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0692, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r7, "📹 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x06a6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3158R.string.NotificationActionPinnedVideo, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x06ab, code lost:
        if (r0.isGif() == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06b1, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06bb, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06e4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r7, "🎬 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06f8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3158R.string.NotificationActionPinnedGif, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0700, code lost:
        if (r0.isVoice() == false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0712, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3158R.string.NotificationActionPinnedVoice, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0717, code lost:
        if (r0.isRoundVideo() == false) goto L340;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0729, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3158R.string.NotificationActionPinnedRound, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x072e, code lost:
        if (r0.isSticker() != false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0734, code lost:
        if (r0.isAnimatedSticker() == false) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0738, code lost:
        r3 = r0.messageOwner;
        r6 = r3.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x073e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0744, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x074c, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0775, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r7, "📎 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0789, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3158R.string.NotificationActionPinnedFile, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x078c, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0790, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0796, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x07ab, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoLive, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x07b0, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x07b2, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x07d0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3158R.string.NotificationActionPinnedContact2, r7, r5.title, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x07d3, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x07d5, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x07db, code lost:
        if (r0.quiz == false) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x07f5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3158R.string.NotificationActionPinnedQuiz2, r7, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x080e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3158R.string.NotificationActionPinnedPoll2, r7, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0811, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x0817, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x081f, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0848, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r7, "🖼 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x085c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3158R.string.NotificationActionPinnedPhoto, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x0862, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0874, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3158R.string.NotificationActionPinnedGame, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0875, code lost:
        r3 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0877, code lost:
        if (r3 == null) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x087d, code lost:
        if (r3.length() <= 0) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x087f, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0885, code lost:
        if (r0.length() <= 20) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0887, code lost:
        r3 = new java.lang.StringBuilder();
        r6 = 0;
        r3.append((java.lang.Object) r0.subSequence(0, 20));
        r3.append("...");
        r0 = r3.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x089c, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x089d, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationActionPinnedText;
        r2 = new java.lang.Object[3];
        r2[r6] = r7;
        r2[1] = r0;
        r2[2] = r5.title;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x08b0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x08c4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoText, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x08d8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeo, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x08d9, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x08df, code lost:
        if (r0 == null) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x08f5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerEmoji, r7, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0907, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3158R.string.NotificationActionPinnedSticker, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0909, code lost:
        if (r5 == null) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x090b, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x090d, code lost:
        if (r0 != null) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x091e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0924, code lost:
        if (r0.isMusic() == false) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0934, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedMusicChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x093b, code lost:
        if (r0.isVideo() == false) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0941, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x094b, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0971, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r5.title, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0982, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedVideoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0987, code lost:
        if (r0.isGif() == false) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x098d, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0997, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x09bd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r5.title, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x09ce, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGifChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x09d5, code lost:
        if (r0.isVoice() == false) goto L442;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x09e5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedVoiceChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x09ea, code lost:
        if (r0.isRoundVideo() == false) goto L446;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x09fa, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedRoundChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x09ff, code lost:
        if (r0.isSticker() != false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0a05, code lost:
        if (r0.isAnimatedSticker() == false) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0a09, code lost:
        r3 = r0.messageOwner;
        r6 = r3.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0a0f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0a15, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0a1d, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0a43, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r5.title, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0a54, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedFileChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0a57, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0a5b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0a61, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0a73, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoLiveChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0a77, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0a79, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x0a95, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedContactChannel2, r5.title, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0a98, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0a9a, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0aa0, code lost:
        if (r0.quiz == false) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0ab7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedQuizChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0acd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedPollChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0ad0, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0ad6, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0ade, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r2) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0b04, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r5.title, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0b15, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedPhotoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0b1a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0b2a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGameChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0b2b, code lost:
        r3 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0b2d, code lost:
        if (r3 == null) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0b33, code lost:
        if (r3.length() <= 0) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0b35, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0b3b, code lost:
        if (r0.length() <= 20) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0b3d, code lost:
        r3 = new java.lang.StringBuilder();
        r9 = 0;
        r3.append((java.lang.Object) r0.subSequence(0, 20));
        r3.append("...");
        r0 = r3.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0b52, code lost:
        r9 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0b53, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel;
        r2 = new java.lang.Object[2];
        r2[r9] = r5.title;
        r2[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0b63, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0b74, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0b85, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0b86, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0b8b, code lost:
        if (r0 == null) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0b9f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerEmojiChannel, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0baf, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0bb0, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0bb3, code lost:
        if (r0 != null) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0bc1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0bc6, code lost:
        if (r0.isMusic() == false) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0bd4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedMusicUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x0bdb, code lost:
        if (r0.isVideo() == false) goto L532;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0be1, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0beb, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0c0f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextUser, r7, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0c1e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedVideoUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0c23, code lost:
        if (r0.isGif() == false) goto L542;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0c29, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0c33, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0c57, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextUser, r7, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0c66, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedGifUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0c6d, code lost:
        if (r0.isVoice() == false) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0c7b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedVoiceUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0c80, code lost:
        if (r0.isRoundVideo() == false) goto L550;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0c8e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedRoundUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0c93, code lost:
        if (r0.isSticker() != false) goto L612;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0c99, code lost:
        if (r0.isAnimatedSticker() == false) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0c9d, code lost:
        r3 = r0.messageOwner;
        r5 = r3.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0ca3, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L564;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0ca9, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0cb1, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0cd5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextUser, r7, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0ce4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedFileUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x0ce7, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0ceb, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x0cf1, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x0d01, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoLiveUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x0d05, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x0d07, code lost:
        r5 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:610:0x0d21, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedContactUser, r7, org.telegram.messenger.ContactsController.formatName(r5.first_name, r5.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0d24, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L584;
     */
    /* JADX WARN: Code restructure failed: missing block: B:613:0x0d26, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r5).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0d2c, code lost:
        if (r0.quiz == false) goto L582;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0d41, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedQuizUser, r7, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0d55, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedPollUser, r7, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0d58, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L594;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x0d5e, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x0d66, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x0d8a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextUser, r7, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x0d99, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedPhotoUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x0d9e, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L598;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x0dac, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedGameUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:633:0x0dad, code lost:
        r3 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0daf, code lost:
        if (r3 == null) goto L608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x0db5, code lost:
        if (r3.length() <= 0) goto L608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x0db7, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x0dbd, code lost:
        if (r0.length() <= 20) goto L607;
     */
    /* JADX WARN: Code restructure failed: missing block: B:639:0x0dbf, code lost:
        r3 = new java.lang.StringBuilder();
        r5 = 0;
        r3.append((java.lang.Object) r0.subSequence(0, 20));
        r3.append("...");
        r0 = r3.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0dd4, code lost:
        r5 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x0dd5, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationActionPinnedTextUser;
        r2 = new java.lang.Object[2];
        r2[r5] = r7;
        r2[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x0de3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x0df2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0e01, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:647:0x0e02, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0e08, code lost:
        if (r0 == null) goto L616;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0e19, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerEmojiUser, r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x0e26, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerUser", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerUser, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x0e29, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L634;
     */
    /* JADX WARN: Code restructure failed: missing block: B:655:0x0e2b, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r2).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x0e33, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0e37, code lost:
        if (r3 != r19) goto L626;
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x0e5b, code lost:
        if (r3 != r19) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x0e79, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3158R.string.ChatThemeChangedTo, r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:667:0x0e7c, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L638;
     */
    /* JADX WARN: Code restructure failed: missing block: B:669:0x0e84, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:670:0x0e85, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x0e8f, code lost:
        if (r1.peer_id.channel_id == 0) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x0e93, code lost:
        if (r5.megagroup != false) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:677:0x0e99, code lost:
        if (r26.isVideoAvatar() == false) goto L647;
     */
    /* JADX WARN: Code restructure failed: missing block: B:679:0x0eab, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3158R.string.ChannelVideoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:681:0x0ebc, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3158R.string.ChannelPhotoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:683:0x0ec2, code lost:
        if (r26.isVideoAvatar() == false) goto L653;
     */
    /* JADX WARN: Code restructure failed: missing block: B:685:0x0ed6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3158R.string.NotificationEditedGroupVideo, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:687:0x0ee9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3158R.string.NotificationEditedGroupPhoto, r7, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:689:0x0ef0, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:691:0x0eff, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactJoined", org.telegram.messenger.C3158R.string.NotificationContactJoined, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:693:0x0f04, code lost:
        if (r26.isMediaEmpty() == false) goto L667;
     */
    /* JADX WARN: Code restructure failed: missing block: B:695:0x0f0e, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:697:0x0f14, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:699:0x0f1d, code lost:
        return org.telegram.messenger.LocaleController.getString(r23, org.telegram.messenger.C3158R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:700:0x0f1e, code lost:
        r1 = r23;
        r2 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:701:0x0f26, code lost:
        if ((r2.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:703:0x0f2c, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:705:0x0f34, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:707:0x0f49, code lost:
        return "🖼 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:709:0x0f50, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L679;
     */
    /* JADX WARN: Code restructure failed: missing block: B:711:0x0f5a, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingPhoto", org.telegram.messenger.C3158R.string.AttachDestructingPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:713:0x0f63, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachPhoto", org.telegram.messenger.C3158R.string.AttachPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:715:0x0f68, code lost:
        if (r26.isVideo() == false) goto L695;
     */
    /* JADX WARN: Code restructure failed: missing block: B:717:0x0f6e, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:719:0x0f78, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:721:0x0f8d, code lost:
        return "📹 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:723:0x0f94, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L693;
     */
    /* JADX WARN: Code restructure failed: missing block: B:725:0x0f9e, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingVideo", org.telegram.messenger.C3158R.string.AttachDestructingVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:727:0x0fa7, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachVideo", org.telegram.messenger.C3158R.string.AttachVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:729:0x0fac, code lost:
        if (r26.isGame() == false) goto L699;
     */
    /* JADX WARN: Code restructure failed: missing block: B:731:0x0fb6, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGame", org.telegram.messenger.C3158R.string.AttachGame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:733:0x0fbb, code lost:
        if (r26.isVoice() == false) goto L703;
     */
    /* JADX WARN: Code restructure failed: missing block: B:735:0x0fc5, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachAudio", org.telegram.messenger.C3158R.string.AttachAudio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:737:0x0fca, code lost:
        if (r26.isRoundVideo() == false) goto L707;
     */
    /* JADX WARN: Code restructure failed: missing block: B:739:0x0fd4, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachRound", org.telegram.messenger.C3158R.string.AttachRound);
     */
    /* JADX WARN: Code restructure failed: missing block: B:741:0x0fd9, code lost:
        if (r26.isMusic() == false) goto L711;
     */
    /* JADX WARN: Code restructure failed: missing block: B:743:0x0fe3, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachMusic", org.telegram.messenger.C3158R.string.AttachMusic);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x0fe4, code lost:
        r2 = r26.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:745:0x0fea, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x0ff4, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachContact", org.telegram.messenger.C3158R.string.AttachContact);
     */
    /* JADX WARN: Code restructure failed: missing block: B:749:0x0ff7, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L723;
     */
    /* JADX WARN: Code restructure failed: missing block: B:751:0x0fff, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r2).poll.quiz == false) goto L721;
     */
    /* JADX WARN: Code restructure failed: missing block: B:753:0x1009, code lost:
        return org.telegram.messenger.LocaleController.getString("QuizPoll", org.telegram.messenger.C3158R.string.QuizPoll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:755:0x1012, code lost:
        return org.telegram.messenger.LocaleController.getString("Poll", org.telegram.messenger.C3158R.string.Poll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:757:0x1015, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L767;
     */
    /* JADX WARN: Code restructure failed: missing block: B:759:0x1019, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L727;
     */
    /* JADX WARN: Code restructure failed: missing block: B:762:0x101f, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:764:0x1029, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLiveLocation", org.telegram.messenger.C3158R.string.AttachLiveLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:766:0x102c, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:768:0x1032, code lost:
        if (r26.isSticker() != false) goto L755;
     */
    /* JADX WARN: Code restructure failed: missing block: B:770:0x1038, code lost:
        if (r26.isAnimatedSticker() == false) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x103f, code lost:
        if (r26.isGif() == false) goto L747;
     */
    /* JADX WARN: Code restructure failed: missing block: B:775:0x1045, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:777:0x104f, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:779:0x1064, code lost:
        return "🎬 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:781:0x106d, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGif", org.telegram.messenger.C3158R.string.AttachGif);
     */
    /* JADX WARN: Code restructure failed: missing block: B:783:0x1072, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:785:0x107c, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:787:0x1091, code lost:
        return "📎 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:789:0x109a, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDocument", org.telegram.messenger.C3158R.string.AttachDocument);
     */
    /* JADX WARN: Code restructure failed: missing block: B:790:0x109b, code lost:
        r0 = r26.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:791:0x109f, code lost:
        if (r0 == null) goto L759;
     */
    /* JADX WARN: Code restructure failed: missing block: B:793:0x10bd, code lost:
        return r0 + " " + org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3158R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:795:0x10c6, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3158R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:797:0x10cd, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageText) != false) goto L765;
     */
    /* JADX WARN: Code restructure failed: missing block: B:799:0x10d3, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x10da, code lost:
        return org.telegram.messenger.LocaleController.getString(r1, org.telegram.messenger.C3158R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:803:0x10e3, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLocation", org.telegram.messenger.C3158R.string.AttachLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:817:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3158R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3158R.string.ChatThemeDisabled, r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:819:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3158R.string.ChatThemeChangedYou, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getShortStringForMessage(org.telegram.messenger.MessageObject r26, java.lang.String[] r27, boolean[] r28) {
        /*
            Method dump skipped, instructions count: 4345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.getShortStringForMessage(org.telegram.messenger.MessageObject, java.lang.String[], boolean[]):java.lang.String");
    }

    private String replaceSpoilers(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        String str = tLRPC$Message.message;
        if (str == null || tLRPC$Message == null || tLRPC$Message.entities == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        for (int i = 0; i < messageObject.messageOwner.entities.size(); i++) {
            if (messageObject.messageOwner.entities.get(i) instanceof TLRPC$TL_messageEntitySpoiler) {
                TLRPC$TL_messageEntitySpoiler tLRPC$TL_messageEntitySpoiler = (TLRPC$TL_messageEntitySpoiler) messageObject.messageOwner.entities.get(i);
                for (int i2 = 0; i2 < tLRPC$TL_messageEntitySpoiler.length; i2++) {
                    char[] cArr = this.spoilerChars;
                    sb.setCharAt(tLRPC$TL_messageEntitySpoiler.offset + i2, cArr[i2 % cArr.length]);
                }
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:257:0x05ea, code lost:
        if (r12.getBoolean(r22, true) == false) goto L817;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x05f6, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r13) != false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x05f8, code lost:
        r8 = r27.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x05fc, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x05fe, code lost:
        r9 = r8.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0602, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser) == false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0604, code lost:
        r3 = r9.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x060a, code lost:
        if (r3 != 0) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0613, code lost:
        if (r9.users.size() != 1) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0615, code lost:
        r3 = r27.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x062a, code lost:
        if (r3 == 0) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0634, code lost:
        if (r27.messageOwner.peer_id.channel_id == 0) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0638, code lost:
        if (r14.megagroup != false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x063a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3158R.string.ChannelAddedByNotification, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0651, code lost:
        if (r3 != r19) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0653, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3158R.string.NotificationInvitedToGroup, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0668, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0674, code lost:
        if (r0 != null) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0676, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x067c, code lost:
        if (r24 != r0.f1633id) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x0680, code lost:
        if (r14.megagroup == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0682, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3158R.string.NotificationGroupAddSelfMega, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0697, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3158R.string.NotificationGroupAddSelf, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x06ac, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3158R.string.NotificationGroupAddMember, r2, r14.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x06c7, code lost:
        r1 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x06d7, code lost:
        if (r3 >= r27.messageOwner.action.users.size()) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x06d9, code lost:
        r4 = getMessagesController().getUser(r27.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x06ed, code lost:
        if (r4 == null) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x06ef, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x06f7, code lost:
        if (r1.length() == 0) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x06f9, code lost:
        r1.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x06fe, code lost:
        r1.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0701, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0704, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3158R.string.NotificationGroupAddMember, r2, r14.title, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0722, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L319;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x073a, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled) == false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0746, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall) == false) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0748, code lost:
        r3 = r9.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x074e, code lost:
        if (r3 != 0) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0757, code lost:
        if (r9.users.size() != 1) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0759, code lost:
        r3 = r27.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x076e, code lost:
        if (r3 == 0) goto L339;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0772, code lost:
        if (r3 != r19) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0774, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedYouToCall, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0789, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0795, code lost:
        if (r0 != null) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0797, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0799, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedToCall, r2, r14.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x07b4, code lost:
        r1 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x07c4, code lost:
        if (r3 >= r27.messageOwner.action.users.size()) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x07c6, code lost:
        r4 = getMessagesController().getUser(r27.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x07da, code lost:
        if (r4 == null) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x07dc, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x07e4, code lost:
        if (r1.length() == 0) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x07e6, code lost:
        r1.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x07eb, code lost:
        r1.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x07ee, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x07f1, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3158R.string.NotificationGroupInvitedToCall, r2, r14.title, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x080f, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0829, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x083f, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0843, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0849, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x084b, code lost:
        r3 = r9.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x084f, code lost:
        if (r3 != r19) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x086b, code lost:
        if (r3 != r24) goto L375;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x087f, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r27.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0891, code lost:
        if (r0 != null) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0893, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x08b0, code lost:
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x08b3, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x08bf, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x08cb, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x08e3, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x08f7, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0903, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x090b, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r14) == false) goto L489;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x090f, code lost:
        if (r14.megagroup == false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x0913, code lost:
        r2 = r27.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0915, code lost:
        if (r2 != null) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x092f, code lost:
        if (r2.isMusic() == false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0931, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedMusicChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0947, code lost:
        if (r2.isVideo() == false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x094d, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0957, code lost:
        if (android.text.TextUtils.isEmpty(r2.messageOwner.message) != false) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0959, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r14.title, "📹 " + r2.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x097f, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedVideoChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0995, code lost:
        if (r2.isGif() == false) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x099b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x09a5, code lost:
        if (android.text.TextUtils.isEmpty(r2.messageOwner.message) != false) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x09a7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r14.title, "🎬 " + r2.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x09cd, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGifChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x09e5, code lost:
        if (r2.isVoice() == false) goto L432;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x09e7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedVoiceChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x09fb, code lost:
        if (r2.isRoundVideo() == false) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x09fd, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedRoundChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0a11, code lost:
        if (r2.isSticker() != false) goto L485;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x0a17, code lost:
        if (r2.isAnimatedSticker() == false) goto L439;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x0a1b, code lost:
        r3 = r2.messageOwner;
        r5 = r3.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0a21, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0a27, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L446;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0a2f, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L446;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0a31, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r14.title, "📎 " + r2.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0a57, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedFileChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0a6b, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x0a6f, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L451;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0a75, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L454;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0a77, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoLiveChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x0a8b, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0a8d, code lost:
        r0 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r27.messageOwner.media;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedContactChannel2, r14.title, org.telegram.messenger.ContactsController.formatName(r0.first_name, r0.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0ab2, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L463;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0ab4, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r5).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0aba, code lost:
        if (r0.quiz == false) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0abc, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedQuizChannel2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0ad3, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3158R.string.NotificationActionPinnedPollChannel2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x0aec, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L471;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0af2, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0afa, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0afc, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel, r14.title, "🖼 " + r2.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0b22, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedPhotoChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x0b38, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L474;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0b3a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGameChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0b4a, code lost:
        r0 = r2.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0b4c, code lost:
        if (r0 == null) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0b52, code lost:
        if (r0.length() <= 0) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0b54, code lost:
        r0 = r2.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0b5a, code lost:
        if (r0.length() <= 20) goto L482;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x0b5c, code lost:
        r1 = new java.lang.StringBuilder();
        r3 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0b73, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0b74, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationActionPinnedTextChannel;
        r2 = new java.lang.Object[2];
        r2[r3] = r14.title;
        r2[1] = r0;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x0b86, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0b98, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0baa, code lost:
        r0 = r2.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x0baf, code lost:
        if (r0 == null) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x0bb1, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerEmojiChannel, r14.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0bc5, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x0bd6, code lost:
        r8 = r27.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0bd9, code lost:
        if (r8 != null) goto L493;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0bf5, code lost:
        if (r8.isMusic() == false) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0bf7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3158R.string.NotificationActionPinnedMusic, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0c0f, code lost:
        if (r8.isVideo() == false) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0c15, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x0c1f, code lost:
        if (android.text.TextUtils.isEmpty(r8.messageOwner.message) != false) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0c21, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r2, "📹 " + r8.messageOwner.message, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x0c49, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3158R.string.NotificationActionPinnedVideo, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0c62, code lost:
        if (r8.isGif() == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0c68, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L511;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0c72, code lost:
        if (android.text.TextUtils.isEmpty(r8.messageOwner.message) != false) goto L511;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x0c74, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r2, "🎬 " + r8.messageOwner.message, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0c9c, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3158R.string.NotificationActionPinnedGif, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0cb8, code lost:
        if (r8.isVoice() == false) goto L515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0cba, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3158R.string.NotificationActionPinnedVoice, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0cd0, code lost:
        if (r8.isRoundVideo() == false) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0cd2, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3158R.string.NotificationActionPinnedRound, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0ce8, code lost:
        if (r8.isSticker() != false) goto L568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0cee, code lost:
        if (r8.isAnimatedSticker() == false) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0cf2, code lost:
        r3 = r8.messageOwner;
        r5 = r3.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0cf8, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x0cfe, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0d06, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0d08, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r2, "📎 " + r8.messageOwner.message, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0d30, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3158R.string.NotificationActionPinnedFile, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0d47, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L567;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0d4b, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0d51, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0d53, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeoLive, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0d6a, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:519:0x0d6c, code lost:
        r0 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r27.messageOwner.media;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3158R.string.NotificationActionPinnedContact2, r2, r14.title, org.telegram.messenger.ContactsController.formatName(r0.first_name, r0.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x0d93, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0d95, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r5).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0d9b, code lost:
        if (r0.quiz == false) goto L545;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0d9d, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3158R.string.NotificationActionPinnedQuiz2, r2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:0x0db6, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3158R.string.NotificationActionPinnedPoll2, r2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0dd1, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x0dd7, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L553;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0ddf, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L553;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0de1, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3158R.string.NotificationActionPinnedText, r2, "🖼 " + r8.messageOwner.message, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0e09, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3158R.string.NotificationActionPinnedPhoto, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0e23, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L557;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0e25, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3158R.string.NotificationActionPinnedGame, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0e37, code lost:
        r0 = r8.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0e39, code lost:
        if (r0 == null) goto L566;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0e3f, code lost:
        if (r0.length() <= 0) goto L566;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0e41, code lost:
        r0 = r8.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0e47, code lost:
        if (r0.length() <= 20) goto L565;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0e49, code lost:
        r1 = new java.lang.StringBuilder();
        r3 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0e60, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0e61, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationActionPinnedText;
        r4 = new java.lang.Object[3];
        r4[r3] = r2;
        r4[1] = r0;
        r4[2] = r14.title;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0e75, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoText, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0e8a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3158R.string.NotificationActionPinnedGeo, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0e9f, code lost:
        r0 = r8.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0ea5, code lost:
        if (r0 == null) goto L571;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0ea7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3158R.string.NotificationActionPinnedStickerEmoji, r2, r14.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0ebc, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3158R.string.NotificationActionPinnedSticker, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0ed1, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x0edd, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L588;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0edf, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r9).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0ee7, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L584;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0eeb, code lost:
        if (r3 != r19) goto L583;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0eed, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3158R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0efa, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3158R.string.ChatThemeDisabled, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0f11, code lost:
        if (r3 != r19) goto L587;
     */
    /* JADX WARN: Code restructure failed: missing block: B:565:0x0f13, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3158R.string.ChatThemeChangedYou, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0f21, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3158R.string.ChatThemeChangedTo, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0f34, code lost:
        if ((r9 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0f46, code lost:
        if (r8.peer_id.channel_id == 0) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x0f4a, code lost:
        if (r14.megagroup != false) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0f50, code lost:
        if (r27.isVideoAvatar() == false) goto L600;
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x0f7b, code lost:
        if (r27.isVideoAvatar() == false) goto L606;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0fa9, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r14) == false) goto L713;
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0fad, code lost:
        if (r14.megagroup != false) goto L713;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0fb3, code lost:
        if (r27.isMediaEmpty() == false) goto L621;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0fb5, code lost:
        if (r28 != false) goto L619;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0fbf, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L619;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0fc1, code lost:
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3158R.string.NotificationMessageText, r2, r27.messageOwner.message);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0fe8, code lost:
        r4 = r27.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x0ff0, code lost:
        if ((r4.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0ff2, code lost:
        if (r28 != false) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0ff8, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x1000, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x1002, code lost:
        r3 = org.telegram.messenger.C3158R.string.NotificationMessageText;
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", r3, r2, "🖼 " + r27.messageOwner.message);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x103c, code lost:
        if (r27.isVideo() == false) goto L643;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x103e, code lost:
        if (r28 != false) goto L641;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x1044, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L641;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x104e, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L641;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x1050, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageText;
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", r1, r2, "📹 " + r27.messageOwner.message);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x108c, code lost:
        if (r27.isVoice() == false) goto L647;
     */
    /* JADX WARN: Code restructure failed: missing block: B:615:0x10a0, code lost:
        if (r27.isRoundVideo() == false) goto L651;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x10b4, code lost:
        if (r27.isMusic() == false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x10c4, code lost:
        r1 = r27.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:621:0x10ca, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L659;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x10cc, code lost:
        r1 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x10ea, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:625:0x10ec, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r1).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x10f2, code lost:
        if (r0.quiz == false) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:627:0x10f4, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageQuiz2", org.telegram.messenger.C3158R.string.ChannelMessageQuiz2, r2, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x1109, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessagePoll2", org.telegram.messenger.C3158R.string.ChannelMessagePoll2, r2, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x1120, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L711;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x1124, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L669;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x112a, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L673;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x113e, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L703;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x1144, code lost:
        if (r27.isSticker() != false) goto L699;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x114a, code lost:
        if (r27.isAnimatedSticker() == false) goto L679;
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x1152, code lost:
        if (r27.isGif() == false) goto L690;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x1154, code lost:
        if (r28 != false) goto L688;
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x115a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L688;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x1164, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L688;
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x1166, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageText;
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", r1, r2, "🎬 " + r27.messageOwner.message);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:653:0x119c, code lost:
        if (r28 != false) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:655:0x11a2, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:657:0x11ac, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x11ae, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageText;
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", r1, r2, "📎 " + r27.messageOwner.message);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x11e4, code lost:
        r0 = r27.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x11ea, code lost:
        if (r0 == null) goto L702;
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x11ec, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageStickerEmoji", org.telegram.messenger.C3158R.string.ChannelMessageStickerEmoji, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x11fd, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageSticker", org.telegram.messenger.C3158R.string.ChannelMessageSticker, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x120c, code lost:
        if (r28 != false) goto L709;
     */
    /* JADX WARN: Code restructure failed: missing block: B:667:0x1214, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageText) != false) goto L709;
     */
    /* JADX WARN: Code restructure failed: missing block: B:668:0x1216, code lost:
        r14 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3158R.string.NotificationMessageText, r2, r27.messageText);
        r29[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:672:0x124d, code lost:
        if (r27.isMediaEmpty() == false) goto L722;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x124f, code lost:
        if (r28 != false) goto L720;
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x1259, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L720;
     */
    /* JADX WARN: Code restructure failed: missing block: B:678:0x1289, code lost:
        r3 = r27.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:679:0x1291, code lost:
        if ((r3.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L733;
     */
    /* JADX WARN: Code restructure failed: missing block: B:680:0x1293, code lost:
        if (r28 != false) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x1299, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x12a1, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:685:0x12a3, code lost:
        r3 = org.telegram.messenger.C3158R.string.NotificationMessageGroupText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x12e4, code lost:
        if (r27.isVideo() == false) goto L744;
     */
    /* JADX WARN: Code restructure failed: missing block: B:689:0x12e6, code lost:
        if (r28 != false) goto L742;
     */
    /* JADX WARN: Code restructure failed: missing block: B:691:0x12ec, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L742;
     */
    /* JADX WARN: Code restructure failed: missing block: B:693:0x12f6, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L742;
     */
    /* JADX WARN: Code restructure failed: missing block: B:694:0x12f8, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageGroupText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:697:0x133c, code lost:
        if (r27.isVoice() == false) goto L748;
     */
    /* JADX WARN: Code restructure failed: missing block: B:700:0x1354, code lost:
        if (r27.isRoundVideo() == false) goto L752;
     */
    /* JADX WARN: Code restructure failed: missing block: B:703:0x136c, code lost:
        if (r27.isMusic() == false) goto L756;
     */
    /* JADX WARN: Code restructure failed: missing block: B:705:0x1380, code lost:
        r1 = r27.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:706:0x1386, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L760;
     */
    /* JADX WARN: Code restructure failed: missing block: B:707:0x1388, code lost:
        r1 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:709:0x13ab, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L766;
     */
    /* JADX WARN: Code restructure failed: missing block: B:710:0x13ad, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r1).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:711:0x13b3, code lost:
        if (r0.quiz == false) goto L765;
     */
    /* JADX WARN: Code restructure failed: missing block: B:712:0x13b5, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupQuiz2", org.telegram.messenger.C3158R.string.NotificationMessageGroupQuiz2, r2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:713:0x13ce, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupPoll2", org.telegram.messenger.C3158R.string.NotificationMessageGroupPoll2, r2, r14.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:715:0x13e9, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L770;
     */
    /* JADX WARN: Code restructure failed: missing block: B:718:0x1408, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L815;
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x140c, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L774;
     */
    /* JADX WARN: Code restructure failed: missing block: B:723:0x1412, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L778;
     */
    /* JADX WARN: Code restructure failed: missing block: B:726:0x142b, code lost:
        if ((r1 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L808;
     */
    /* JADX WARN: Code restructure failed: missing block: B:728:0x1431, code lost:
        if (r27.isSticker() != false) goto L804;
     */
    /* JADX WARN: Code restructure failed: missing block: B:730:0x1437, code lost:
        if (r27.isAnimatedSticker() == false) goto L784;
     */
    /* JADX WARN: Code restructure failed: missing block: B:733:0x143f, code lost:
        if (r27.isGif() == false) goto L795;
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x1441, code lost:
        if (r28 != false) goto L793;
     */
    /* JADX WARN: Code restructure failed: missing block: B:736:0x1447, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L793;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x1451, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L793;
     */
    /* JADX WARN: Code restructure failed: missing block: B:739:0x1453, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageGroupText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:741:0x1490, code lost:
        if (r28 != false) goto L802;
     */
    /* JADX WARN: Code restructure failed: missing block: B:743:0x1496, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L802;
     */
    /* JADX WARN: Code restructure failed: missing block: B:745:0x14a0, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageOwner.message) != false) goto L802;
     */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x14a2, code lost:
        r1 = org.telegram.messenger.C3158R.string.NotificationMessageGroupText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x14df, code lost:
        r0 = r27.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:749:0x14e5, code lost:
        if (r0 == null) goto L807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x14e7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupStickerEmoji", org.telegram.messenger.C3158R.string.NotificationMessageGroupStickerEmoji, r2, r14.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:751:0x14fc, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupSticker", org.telegram.messenger.C3158R.string.NotificationMessageGroupSticker, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:752:0x150f, code lost:
        if (r28 != false) goto L813;
     */
    /* JADX WARN: Code restructure failed: missing block: B:754:0x1517, code lost:
        if (android.text.TextUtils.isEmpty(r27.messageText) != false) goto L813;
     */
    /* JADX WARN: Code restructure failed: missing block: B:811:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3158R.string.NotificationGroupCreatedCall, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:813:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3158R.string.NotificationInvitedToGroupByLink, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3158R.string.NotificationEditedGroupName, r2, r9.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:815:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3158R.string.NotificationGroupKickYou, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:816:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3158R.string.NotificationGroupLeftMember, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:817:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3158R.string.NotificationGroupKickMember, r2, r14.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:819:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:820:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3158R.string.ActionMigrateFromGroupNotify, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:821:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3158R.string.ActionMigrateFromGroupNotify, r9.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:822:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:823:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoTextChannel, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:824:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3158R.string.NotificationActionPinnedNoText, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:825:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:826:?, code lost:
        return r27.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:827:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3158R.string.ChannelVideoEditNotification, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:828:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3158R.string.ChannelPhotoEditNotification, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:829:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3158R.string.NotificationEditedGroupVideo, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:830:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3158R.string.NotificationEditedGroupPhoto, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:831:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:832:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageNoText", org.telegram.messenger.C3158R.string.ChannelMessageNoText, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:834:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessagePhoto", org.telegram.messenger.C3158R.string.ChannelMessagePhoto, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:835:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:836:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageVideo", org.telegram.messenger.C3158R.string.ChannelMessageVideo, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageAudio", org.telegram.messenger.C3158R.string.ChannelMessageAudio, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:838:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageRound", org.telegram.messenger.C3158R.string.ChannelMessageRound, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:839:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageMusic", org.telegram.messenger.C3158R.string.ChannelMessageMusic, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:840:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageContact2", org.telegram.messenger.C3158R.string.ChannelMessageContact2, r2, org.telegram.messenger.ContactsController.formatName(r1.first_name, r1.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:841:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageLiveLocation", org.telegram.messenger.C3158R.string.ChannelMessageLiveLocation, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:842:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:843:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageGIF", org.telegram.messenger.C3158R.string.ChannelMessageGIF, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:844:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:845:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageDocument", org.telegram.messenger.C3158R.string.ChannelMessageDocument, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:846:?, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:847:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageNoText", org.telegram.messenger.C3158R.string.ChannelMessageNoText, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:848:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageMap", org.telegram.messenger.C3158R.string.ChannelMessageMap, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:849:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3158R.string.NotificationMessageGroupText, r2, r14.title, r27.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:850:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupNoText", org.telegram.messenger.C3158R.string.NotificationMessageGroupNoText, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:851:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", r3, r2, r14.title, "🖼 " + r27.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:852:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupPhoto", org.telegram.messenger.C3158R.string.NotificationMessageGroupPhoto, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:853:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", r1, r2, r14.title, "📹 " + r27.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:854:?, code lost:
        return org.telegram.messenger.LocaleController.formatString(" ", org.telegram.messenger.C3158R.string.NotificationMessageGroupVideo, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:855:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupAudio", org.telegram.messenger.C3158R.string.NotificationMessageGroupAudio, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:856:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupRound", org.telegram.messenger.C3158R.string.NotificationMessageGroupRound, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:857:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupMusic", org.telegram.messenger.C3158R.string.NotificationMessageGroupMusic, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:858:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupContact2", org.telegram.messenger.C3158R.string.NotificationMessageGroupContact2, r2, r14.title, org.telegram.messenger.ContactsController.formatName(r1.first_name, r1.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:859:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupGame", org.telegram.messenger.C3158R.string.NotificationMessageGroupGame, r2, r14.title, r1.game.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:860:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupLiveLocation", org.telegram.messenger.C3158R.string.NotificationMessageGroupLiveLocation, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:861:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", r1, r2, r14.title, "🎬 " + r27.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:862:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupGif", org.telegram.messenger.C3158R.string.NotificationMessageGroupGif, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:863:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", r1, r2, r14.title, "📎 " + r27.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupDocument", org.telegram.messenger.C3158R.string.NotificationMessageGroupDocument, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:865:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3158R.string.NotificationMessageGroupText, r2, r14.title, r27.messageText);
     */
    /* JADX WARN: Code restructure failed: missing block: B:866:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupNoText", org.telegram.messenger.C3158R.string.NotificationMessageGroupNoText, r2, r14.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:867:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupMap", org.telegram.messenger.C3158R.string.NotificationMessageGroupMap, r2, r14.title);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getStringForMessage(org.telegram.messenger.MessageObject r27, boolean r28, boolean[] r29, boolean[] r30) {
        /*
            Method dump skipped, instructions count: 5520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.getStringForMessage(org.telegram.messenger.MessageObject, boolean, boolean[], boolean[]):java.lang.String");
    }

    private void scheduleNotificationRepeat() {
        try {
            Intent intent = new Intent(ApplicationLoader.applicationContext, NotificationRepeat.class);
            intent.putExtra("currentAccount", this.currentAccount);
            PendingIntent service = PendingIntent.getService(ApplicationLoader.applicationContext, 0, intent, ConnectionsManager.FileTypeVideo);
            int i = getAccountInstance().getNotificationsSettings().getInt("repeat_messages", 60);
            if (i > 0 && this.personalCount > 0) {
                this.alarmManager.set(2, SystemClock.elapsedRealtime() + (i * 60 * 1000), service);
            } else {
                this.alarmManager.cancel(service);
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    private boolean isPersonalMessage(MessageObject messageObject) {
        TLRPC$MessageAction tLRPC$MessageAction;
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        TLRPC$Peer tLRPC$Peer = tLRPC$Message.peer_id;
        return tLRPC$Peer != null && tLRPC$Peer.chat_id == 0 && tLRPC$Peer.channel_id == 0 && ((tLRPC$MessageAction = tLRPC$Message.action) == null || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionEmpty));
    }

    private int getNotifyOverride(SharedPreferences sharedPreferences, long j, int i) {
        int property = this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY, j, i, -1);
        if (property != 3 || this.dialogsNotificationsFacade.getProperty(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL, j, i, 0) < getConnectionsManager().getCurrentTime()) {
            return property;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNotifications$25() {
        showOrUpdateNotification(false);
    }

    public void showNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$showNotifications$25();
            }
        });
    }

    public void hideNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$hideNotifications$26();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideNotifications$26() {
        notificationManager.cancel(this.notificationId);
        this.lastWearNotifiedMessageId.clear();
        for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
            notificationManager.cancel(this.wearNotificationsIds.valueAt(i).intValue());
        }
        this.wearNotificationsIds.clear();
    }

    private void dismissNotification() {
        try {
            notificationManager.cancel(this.notificationId);
            this.pushMessages.clear();
            this.pushMessagesDict.clear();
            this.lastWearNotifiedMessageId.clear();
            for (int i = 0; i < this.wearNotificationsIds.size(); i++) {
                if (!this.openedInBubbleDialogs.contains(Long.valueOf(this.wearNotificationsIds.keyAt(i)))) {
                    notificationManager.cancel(this.wearNotificationsIds.valueAt(i).intValue());
                }
            }
            this.wearNotificationsIds.clear();
            AndroidUtilities.runOnUIThread(NotificationsController$$ExternalSyntheticLambda40.INSTANCE);
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$dismissNotification$27() {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    private void playInChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        try {
            if (getNotifyOverride(getAccountInstance().getNotificationsSettings(), this.openedDialogId, this.openedTopicId) == 2) {
                return;
            }
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$playInChatSound$29();
                }
            });
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playInChatSound$29() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundPlay) <= 500) {
            return;
        }
        try {
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(NotificationsController$$ExternalSyntheticLambda3.INSTANCE);
            }
            if (this.soundIn == 0 && !this.soundInLoaded) {
                this.soundInLoaded = true;
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C3158R.C3164raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playInChatSound$28(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m48d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            notificationsQueue.cancelRunnable(this.notificationDelayRunnable);
            notificationsQueue.postRunnable(this.notificationDelayRunnable, z ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : 1000);
        } catch (Exception e) {
            FileLog.m45e(e);
            showOrUpdateNotification(this.notifyCheck);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void repeatNotificationMaybe() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$repeatNotificationMaybe$30();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repeatNotificationMaybe$30() {
        int i = Calendar.getInstance().get(11);
        if (i >= 11 && i <= 22) {
            notificationManager.cancel(this.notificationId);
            showOrUpdateNotification(true);
            return;
        }
        scheduleNotificationRepeat();
    }

    private boolean isEmptyVibration(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return false;
        }
        for (long j : jArr) {
            if (j != 0) {
                return false;
            }
        }
        return true;
    }

    public void deleteNotificationChannel(long j, int i) {
        deleteNotificationChannel(j, i, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteNotificationChannelInternal */
    public void lambda$deleteNotificationChannel$31(long j, int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor edit = notificationsSettings.edit();
            if (i2 == 0 || i2 == -1) {
                String str = "org.telegram.key" + j;
                if (i != 0) {
                    str = str + ".topic" + i;
                }
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    edit.remove(str).remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m48d("delete channel internal " + string);
                    }
                }
            }
            if (i2 == 1 || i2 == -1) {
                String str2 = "org.telegram.keyia" + j;
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    edit.remove(str2).remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m45e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m48d("delete channel internal " + string2);
                    }
                }
            }
            edit.commit();
        } catch (Exception e3) {
            FileLog.m45e(e3);
        }
    }

    public void deleteNotificationChannel(final long j, final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteNotificationChannel$31(j, i, i2);
            }
        });
    }

    public void deleteNotificationChannelGlobal(int i) {
        deleteNotificationChannelGlobal(i, -1);
    }

    /* renamed from: deleteNotificationChannelGlobalInternal */
    public void lambda$deleteNotificationChannelGlobal$32(int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor edit = notificationsSettings.edit();
            if (i2 == 0 || i2 == -1) {
                String str = i == 2 ? "channels" : i == 0 ? "groups" : "private";
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    SharedPreferences.Editor remove = edit.remove(str);
                    remove.remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m48d("delete channel global internal " + string);
                    }
                }
            }
            if (i2 == 1 || i2 == -1) {
                String str2 = i == 2 ? "channels_ia" : i == 0 ? "groups_ia" : "private_ia";
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    SharedPreferences.Editor remove2 = edit.remove(str2);
                    remove2.remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m45e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m48d("delete channel global internal " + string2);
                    }
                }
            }
            edit.remove(i == 2 ? "overwrite_channel" : i == 0 ? "overwrite_group" : "overwrite_private");
            edit.commit();
        } catch (Exception e3) {
            FileLog.m45e(e3);
        }
    }

    public void deleteNotificationChannelGlobal(final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteNotificationChannelGlobal$32(i, i2);
            }
        });
    }

    public void deleteAllNotificationChannels() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteAllNotificationChannels$33();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllNotificationChannels$33() {
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            Map<String, ?> all = notificationsSettings.getAll();
            SharedPreferences.Editor edit = notificationsSettings.edit();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith("org.telegram.key")) {
                    if (!key.endsWith("_s")) {
                        String str = (String) entry.getValue();
                        systemNotificationManager.deleteNotificationChannel(str);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m48d("delete all channel " + str);
                        }
                    }
                    edit.remove(key);
                }
            }
            edit.commit();
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef A[Catch: Exception -> 0x014d, TryCatch #0 {Exception -> 0x014d, blocks: (B:9:0x0020, B:12:0x0060, B:14:0x0068, B:18:0x0078, B:20:0x00a1, B:22:0x00b1, B:24:0x00bb, B:26:0x00ef, B:28:0x00f7, B:30:0x0100, B:38:0x011f, B:42:0x0136, B:32:0x0107, B:34:0x010d, B:36:0x0112, B:35:0x0110, B:37:0x0117, B:27:0x00f3, B:17:0x0074, B:13:0x0064), top: B:49:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f3 A[Catch: Exception -> 0x014d, TryCatch #0 {Exception -> 0x014d, blocks: (B:9:0x0020, B:12:0x0060, B:14:0x0068, B:18:0x0078, B:20:0x00a1, B:22:0x00b1, B:24:0x00bb, B:26:0x00ef, B:28:0x00f7, B:30:0x0100, B:38:0x011f, B:42:0x0136, B:32:0x0107, B:34:0x010d, B:36:0x0112, B:35:0x0110, B:37:0x0117, B:27:0x00f3, B:17:0x0074, B:13:0x0064), top: B:49:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0100 A[Catch: Exception -> 0x014d, TryCatch #0 {Exception -> 0x014d, blocks: (B:9:0x0020, B:12:0x0060, B:14:0x0068, B:18:0x0078, B:20:0x00a1, B:22:0x00b1, B:24:0x00bb, B:26:0x00ef, B:28:0x00f7, B:30:0x0100, B:38:0x011f, B:42:0x0136, B:32:0x0107, B:34:0x010d, B:36:0x0112, B:35:0x0110, B:37:0x0117, B:27:0x00f3, B:17:0x0074, B:13:0x0064), top: B:49:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String createNotificationShortcut(androidx.core.app.NotificationCompat.Builder r18, long r19, java.lang.String r21, org.telegram.tgnet.TLRPC$User r22, org.telegram.tgnet.TLRPC$Chat r23, androidx.core.app.Person r24) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.createNotificationShortcut(androidx.core.app.NotificationCompat$Builder, long, java.lang.String, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, androidx.core.app.Person):java.lang.String");
    }

    protected void ensureGroupsCreated() {
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        if (this.groupsCreated == null) {
            this.groupsCreated = Boolean.valueOf(notificationsSettings.getBoolean("groupsCreated4", false));
        }
        if (!this.groupsCreated.booleanValue()) {
            try {
                String str = this.currentAccount + "channel";
                List<NotificationChannel> notificationChannels = systemNotificationManager.getNotificationChannels();
                int size = notificationChannels.size();
                SharedPreferences.Editor editor = null;
                for (int i = 0; i < size; i++) {
                    NotificationChannel notificationChannel = notificationChannels.get(i);
                    String id = notificationChannel.getId();
                    if (id.startsWith(str)) {
                        int importance = notificationChannel.getImportance();
                        if (importance != 4 && importance != 5 && !id.contains("_ia_")) {
                            if (id.contains("_channels_")) {
                                if (editor == null) {
                                    editor = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editor.remove("priority_channel").remove("vibrate_channel").remove("ChannelSoundPath").remove("ChannelSound");
                            } else if (id.contains("_groups_")) {
                                if (editor == null) {
                                    editor = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editor.remove("priority_group").remove("vibrate_group").remove("GroupSoundPath").remove("GroupSound");
                            } else if (id.contains("_private_")) {
                                if (editor == null) {
                                    editor = getAccountInstance().getNotificationsSettings().edit();
                                }
                                editor.remove("priority_messages");
                                editor.remove("priority_group").remove("vibrate_messages").remove("GlobalSoundPath").remove("GlobalSound");
                            } else {
                                long longValue = Utilities.parseLong(id.substring(9, id.indexOf(95, 9))).longValue();
                                if (longValue != 0) {
                                    if (editor == null) {
                                        editor = getAccountInstance().getNotificationsSettings().edit();
                                    }
                                    editor.remove("priority_" + longValue).remove("vibrate_" + longValue).remove("sound_path_" + longValue).remove("sound_" + longValue);
                                }
                            }
                        }
                        systemNotificationManager.deleteNotificationChannel(id);
                    }
                }
                if (editor != null) {
                    editor.commit();
                }
            } catch (Exception e) {
                FileLog.m45e(e);
            }
            notificationsSettings.edit().putBoolean("groupsCreated4", true).commit();
            this.groupsCreated = Boolean.TRUE;
        }
        if (this.channelGroupsCreated) {
            return;
        }
        List<NotificationChannelGroup> notificationChannelGroups = systemNotificationManager.getNotificationChannelGroups();
        String str2 = "channels" + this.currentAccount;
        String str3 = "groups" + this.currentAccount;
        int size2 = notificationChannelGroups.size();
        String str4 = "other" + this.currentAccount;
        String str5 = "private" + this.currentAccount;
        for (int i2 = 0; i2 < size2; i2++) {
            String id2 = notificationChannelGroups.get(i2).getId();
            if (str2 != null && str2.equals(id2)) {
                str2 = null;
            } else if (str3 != null && str3.equals(id2)) {
                str3 = null;
            } else if (str5 != null && str5.equals(id2)) {
                str5 = null;
            } else if (str4 != null && str4.equals(id2)) {
                str4 = null;
            }
            if (str2 == null && str3 == null && str5 == null && str4 == null) {
                break;
            }
        }
        if (str2 != null || str3 != null || str5 != null || str4 != null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                getUserConfig().getCurrentUser();
            }
            String str6 = user != null ? " (" + ContactsController.formatName(user.first_name, user.last_name) + ")" : "";
            ArrayList arrayList = new ArrayList();
            if (str2 != null) {
                arrayList.add(new NotificationChannelGroup(str2, LocaleController.getString("NotificationsChannels", C3158R.string.NotificationsChannels) + str6));
            }
            if (str3 != null) {
                arrayList.add(new NotificationChannelGroup(str3, LocaleController.getString("NotificationsGroups", C3158R.string.NotificationsGroups) + str6));
            }
            if (str5 != null) {
                arrayList.add(new NotificationChannelGroup(str5, LocaleController.getString("NotificationsPrivateChats", C3158R.string.NotificationsPrivateChats) + str6));
            }
            if (str4 != null) {
                arrayList.add(new NotificationChannelGroup(str4, LocaleController.getString("NotificationsOther", C3158R.string.NotificationsOther) + str6));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x0405 A[LOOP:1: B:189:0x0402->B:191:0x0405, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0465  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String validateChannelId(long r26, int r28, java.lang.String r29, long[] r30, int r31, android.net.Uri r32, int r33, boolean r34, boolean r35, boolean r36, int r37) {
        /*
            Method dump skipped, instructions count: 1362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.validateChannelId(long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:381:0x08c1, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 26) goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0164, code lost:
        if (r21 == 0) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0166, code lost:
        r3 = org.telegram.messenger.LocaleController.getString("NotificationHiddenChatName", org.telegram.messenger.C3158R.string.NotificationHiddenChatName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x016f, code lost:
        r3 = org.telegram.messenger.LocaleController.getString("NotificationHiddenName", org.telegram.messenger.C3158R.string.NotificationHiddenName);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01cb A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01e7 A[Catch: Exception -> 0x0b81, TRY_ENTER, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0206 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0258 A[Catch: Exception -> 0x0b81, TRY_ENTER, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02cb A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0384 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0457 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04a5 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05b4  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0619 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0629 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0630 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x063d  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0648 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06bf A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0752 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x07e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x082e A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0882  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x09c3 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x09cd  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x09d4 A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x09e2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014a A[Catch: Exception -> 0x0b81, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018c A[Catch: Exception -> 0x0b81, TRY_ENTER, TryCatch #4 {Exception -> 0x0b81, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c0, B:100:0x01cb, B:109:0x0242, B:112:0x0258, B:117:0x0275, B:123:0x02b7, B:149:0x0386, B:161:0x03a1, B:163:0x03bd, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04da, B:194:0x0502, B:196:0x0510, B:202:0x0531, B:204:0x053b, B:206:0x0550, B:225:0x0613, B:227:0x0619, B:236:0x0630, B:238:0x0636, B:246:0x0648, B:249:0x0652, B:252:0x065b, B:269:0x0683, B:272:0x068c, B:274:0x06bf, B:277:0x06ca, B:282:0x06e6, B:284:0x06ec, B:287:0x06f2, B:289:0x06fb, B:292:0x0703, B:294:0x0707, B:296:0x070b, B:298:0x0713, B:322:0x0774, B:325:0x07e3, B:327:0x07e7, B:329:0x07ed, B:337:0x082e, B:339:0x083b, B:360:0x0889, B:388:0x08cd, B:397:0x090c, B:399:0x0914, B:401:0x0918, B:403:0x0920, B:407:0x0929, B:425:0x09c3, B:429:0x09d4, B:446:0x0a3c, B:448:0x0a42, B:450:0x0a46, B:452:0x0a51, B:454:0x0a57, B:456:0x0a62, B:458:0x0a71, B:460:0x0a7d, B:462:0x0a9e, B:463:0x0aa3, B:465:0x0ad2, B:466:0x0ae4, B:470:0x0b0f, B:472:0x0b15, B:474:0x0b1d, B:476:0x0b23, B:478:0x0b35, B:479:0x0b4c, B:480:0x0b62, B:432:0x09e5, B:440:0x0a09, B:442:0x0a1d, B:408:0x0953, B:409:0x0958, B:410:0x095b, B:412:0x0961, B:415:0x096b, B:417:0x0973, B:421:0x09b1, B:422:0x09b9, B:391:0x08d7, B:393:0x08df, B:395:0x0907, B:445:0x0a29, B:370:0x089c, B:374:0x08a8, B:377:0x08b1, B:380:0x08bb, B:304:0x072c, B:306:0x0730, B:308:0x0734, B:310:0x073c, B:280:0x06dc, B:316:0x0752, B:318:0x075f, B:320:0x076a, B:205:0x0548, B:207:0x0572, B:209:0x057e, B:211:0x0593, B:210:0x058b, B:214:0x05b9, B:216:0x05c3, B:218:0x05d8, B:217:0x05d0, B:193:0x04ec, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x0289, B:120:0x028e, B:121:0x02a2, B:124:0x02cb, B:126:0x02ef, B:128:0x0307, B:133:0x0311, B:134:0x0317, B:138:0x0324, B:139:0x0338, B:141:0x033d, B:142:0x0351, B:143:0x0364, B:145:0x036c, B:146:0x0375, B:104:0x01da, B:107:0x01e7, B:108:0x0206, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0805, B:419:0x097d, B:262:0x0674), top: B:493:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01bf  */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r49v0, types: [org.telegram.messenger.NotificationsController, org.telegram.messenger.BaseController] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showOrUpdateNotification(boolean r50) {
        /*
            Method dump skipped, instructions count: 2955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.showOrUpdateNotification(boolean):void");
    }

    private boolean isSilentMessage(MessageObject messageObject) {
        return messageObject.messageOwner.silent || messageObject.isReactionPush;
    }

    private void setNotificationChannel(Notification notification, NotificationCompat.Builder builder, boolean z) {
        if (z) {
            builder.setChannelId(OTHER_NOTIFICATIONS_CHANNEL);
        } else {
            builder.setChannelId(notification.getChannelId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetNotificationSound(NotificationCompat.Builder builder, long j, int i, String str, long[] jArr, int i2, Uri uri, int i3, boolean z, boolean z2, boolean z3, int i4) {
        Uri uri2 = Settings.System.DEFAULT_RINGTONE_URI;
        if (uri2 == null || uri == null || TextUtils.equals(uri2.toString(), uri.toString())) {
            return;
        }
        SharedPreferences.Editor edit = getAccountInstance().getNotificationsSettings().edit();
        String uri3 = uri2.toString();
        String string = LocaleController.getString("DefaultRingtone", C3158R.string.DefaultRingtone);
        if (z) {
            if (i4 == 2) {
                edit.putString("ChannelSound", string);
            } else if (i4 == 0) {
                edit.putString("GroupSound", string);
            } else {
                edit.putString("GlobalSound", string);
            }
            if (i4 == 2) {
                edit.putString("ChannelSoundPath", uri3);
            } else if (i4 == 0) {
                edit.putString("GroupSoundPath", uri3);
            } else {
                edit.putString("GlobalSoundPath", uri3);
            }
            getNotificationsController().lambda$deleteNotificationChannelGlobal$32(i4, -1);
        } else {
            edit.putString("sound_" + getSharedPrefKey(j, i), string);
            edit.putString("sound_path_" + getSharedPrefKey(j, i), uri3);
            lambda$deleteNotificationChannel$31(j, i, -1);
        }
        edit.commit();
        builder.setChannelId(validateChannelId(j, i, str, jArr, i2, Settings.System.DEFAULT_RINGTONE_URI, i3, z, z2, z3, i4));
        notificationManager.notify(this.notificationId, builder.build());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(68:68|(2:70|(1:72)(5:478|(1:480)|481|482|483))(3:484|(1:494)(2:488|(59:492|74|(1:76)(2:475|(1:477))|77|78|(3:80|(1:82)(1:473)|83)(1:474)|(3:85|(2:87|(1:89)(3:460|461|(3:463|(1:465)(1:467)|466)))(1:471)|468)(1:472)|(3:91|(1:97)|98)(1:459)|99|(3:454|(1:456)(1:458)|457)(1:102)|103|(1:105)|106|(1:446)(1:110)|111|(3:114|(1:116)|(3:118|119|(41:123|124|125|(4:129|130|131|132)|137|(1:439)(1:140)|141|(1:438)|148|(1:437)(1:155)|156|(7:159|(1:161)(4:166|(1:168)(2:345|(3:347|(1:349)|(3:171|(1:173)(1:175)|174)(22:176|(1:178)|179|(2:341|(1:343)(1:344))(1:185)|186|(12:(1:189)(2:337|(1:339))|190|(3:(2:193|(2:(2:196|(1:198))(1:330)|199)(3:331|(1:333)|334))|335|334)(1:336)|(3:300|(1:329)(3:306|(1:328)(4:309|(1:313)|(1:327)(1:323)|324)|325)|326)(1:203)|204|205|(6:207|(1:298)(7:220|(1:297)(3:224|(12:273|274|275|276|277|278|279|280|281|282|283|284)(1:226)|227)|228|(1:230)(1:272)|231|(2:267|268)(3:233|(1:235)|266)|(6:237|(1:239)|240|(1:242)|243|(2:248|(3:250|(2:255|256)(1:252)|(1:254)))))|265|(0)|243|(3:246|248|(0)))(1:299)|259|(3:263|264|165)|163|164|165)|340|190|(0)(0)|(1:201)|300|(1:302)|329|326|204|205|(0)(0)|259|(4:261|263|264|165)|163|164|165)))|169|(0)(0))|162|163|164|165|157)|350|351|(1:353)(2:433|(1:435)(1:436))|354|(1:356)|357|(1:359)|360|(2:362|(1:364)(1:428))(2:429|(1:431)(1:432))|(1:366)(1:427)|367|368|369|(1:371)|(1:373)|(1:375)|376|(1:423)(1:380)|381|(1:383)|(1:385)|386|(3:391|(4:393|(3:395|(4:397|(1:399)|400|401)(2:403|404)|402)|405|406)|407)|408|(1:422)(2:411|(1:415))|416|(1:418)|419|420)))|445|137|(0)|439|141|(1:143)|438|148|(1:151)|437|156|(1:157)|350|351|(0)(0)|354|(0)|357|(0)|360|(0)(0)|(0)(0)|367|368|369|(0)|(0)|(0)|376|(1:378)|423|381|(0)|(0)|386|(4:388|391|(0)|407)|408|(0)|422|416|(0)|419|420))|493)|73|74|(0)(0)|77|78|(0)(0)|(0)(0)|(0)(0)|99|(0)|448|450|452|454|(0)(0)|457|103|(0)|106|(1:108)|446|111|(3:114|(0)|(0))|445|137|(0)|439|141|(0)|438|148|(0)|437|156|(1:157)|350|351|(0)(0)|354|(0)|357|(0)|360|(0)(0)|(0)(0)|367|368|369|(0)|(0)|(0)|376|(0)|423|381|(0)|(0)|386|(0)|408|(0)|422|416|(0)|419|420) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02c7, code lost:
        if (r9.local_id != 0) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0caa, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0cab, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0453 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x054c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x05ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05dd  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0726  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x075d  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0914  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0917  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0941  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0997  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x09d1  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x09e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:429:0x09f2  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0a38  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0a4d  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0ab6  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0ac0  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0af1  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0b0f  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0b67  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0b9e  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0bc3  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0be6  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0cb0  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0cbb  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0cc0  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0cca  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0cde  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0ce3  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0cef  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0cfc  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0d83 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0db4  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x0920 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0566 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x021f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showExtraNotifications(androidx.core.app.NotificationCompat.Builder r73, java.lang.String r74, long r75, int r77, java.lang.String r78, long[] r79, int r80, android.net.Uri r81, int r82, boolean r83, boolean r84, boolean r85, int r86) {
        /*
            Method dump skipped, instructions count: 3923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.showExtraNotifications(androidx.core.app.NotificationCompat$Builder, java.lang.String, long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.NotificationsController$1NotificationHolder  reason: invalid class name */
    /* loaded from: classes4.dex */
    public class C1NotificationHolder {
        TLRPC$Chat chat;
        long dialogId;

        /* renamed from: id */
        int f1437id;
        String name;
        NotificationCompat.Builder notification;
        int topicId;
        TLRPC$User user;
        final /* synthetic */ String val$chatName;
        final /* synthetic */ int val$chatType;
        final /* synthetic */ int val$importance;
        final /* synthetic */ boolean val$isDefault;
        final /* synthetic */ boolean val$isInApp;
        final /* synthetic */ boolean val$isSilent;
        final /* synthetic */ int val$lastTopicId;
        final /* synthetic */ int val$ledColor;
        final /* synthetic */ Uri val$sound;
        final /* synthetic */ long[] val$vibrationPattern;

        C1NotificationHolder(int i, long j, int i2, String str, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, NotificationCompat.Builder builder, int i3, String str2, long[] jArr, int i4, Uri uri, int i5, boolean z, boolean z2, boolean z3, int i6) {
            this.val$lastTopicId = i3;
            this.val$chatName = str2;
            this.val$vibrationPattern = jArr;
            this.val$ledColor = i4;
            this.val$sound = uri;
            this.val$importance = i5;
            this.val$isDefault = z;
            this.val$isInApp = z2;
            this.val$isSilent = z3;
            this.val$chatType = i6;
            this.f1437id = i;
            this.name = str;
            this.user = tLRPC$User;
            this.chat = tLRPC$Chat;
            this.notification = builder;
            this.dialogId = j;
            this.topicId = i2;
        }

        void call() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m43w("show dialog notification with id " + this.f1437id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.f1437id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.m45e(e);
                NotificationsController.this.resetNotificationSound(this.notification, this.dialogId, this.val$lastTopicId, this.val$chatName, this.val$vibrationPattern, this.val$ledColor, this.val$sound, this.val$importance, this.val$isDefault, this.val$isInApp, this.val$isSilent, this.val$chatType);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showExtraNotifications$34(Uri uri, File file) {
        ApplicationLoader.applicationContext.revokeUriPermission(uri, 1);
        if (file != null) {
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadRoundAvatar$36(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoder.setPostProcessor(NotificationsController$$ExternalSyntheticLambda1.INSTANCE);
    }

    private void loadRoundAvatar(File file, Person.Builder builder) {
        if (file != null) {
            try {
                builder.setIcon(IconCompat.createWithBitmap(ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), NotificationsController$$ExternalSyntheticLambda0.INSTANCE)));
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadRoundAvatar$35(Canvas canvas) {
        Path path = new Path();
        path.setFillType(Path.FillType.INVERSE_EVEN_ODD);
        int width = canvas.getWidth();
        float f = width / 2;
        path.addRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, canvas.getHeight(), f, f, Path.Direction.CW);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(0);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        canvas.drawPath(path, paint);
        return -3;
    }

    public void playOutChatSound() {
        if (!this.inChatSoundEnabled || MediaController.getInstance().isRecordingAudio()) {
            return;
        }
        try {
            if (audioManager.getRingerMode() == 0) {
                return;
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$playOutChatSound$38();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playOutChatSound$38() {
        try {
            if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundOutPlay) <= 100) {
                return;
            }
            this.lastSoundOutPlay = SystemClock.elapsedRealtime();
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(NotificationsController$$ExternalSyntheticLambda2.INSTANCE);
            }
            if (this.soundOut == 0 && !this.soundOutLoaded) {
                this.soundOutLoaded = true;
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C3158R.C3164raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m45e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playOutChatSound$37(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
    }

    public void clearDialogNotificationsSettings(long j, int i) {
        SharedPreferences.Editor edit = getAccountInstance().getNotificationsSettings().edit();
        String sharedPrefKey = getSharedPrefKey(j, i);
        SharedPreferences.Editor remove = edit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + sharedPrefKey);
        remove.remove("custom_" + sharedPrefKey);
        getMessagesStorage().setDialogFlags(j, 0L);
        TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(j);
        if (tLRPC$Dialog != null) {
            tLRPC$Dialog.notify_settings = new TLRPC$TL_peerNotifySettings();
        }
        edit.commit();
        getNotificationsController().updateServerNotificationsSettings(j, i, true);
    }

    public void setDialogNotificationsSettings(long j, int i, int i2, Runnable runnable, Runnable runnable2) {
        SharedPreferences.Editor edit = getAccountInstance().getNotificationsSettings().edit();
        TLRPC$Dialog tLRPC$Dialog = MessagesController.getInstance(UserConfig.selectedAccount).dialogs_dict.get(j);
        if (i2 == 4) {
            if (isGlobalNotificationsEnabled(j)) {
                edit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i));
            } else {
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), 0);
            }
            getMessagesStorage().setDialogFlags(j, 0L);
            if (tLRPC$Dialog != null) {
                tLRPC$Dialog.notify_settings = new TLRPC$TL_peerNotifySettings();
            }
        } else {
            int currentTime = ConnectionsManager.getInstance(UserConfig.selectedAccount).getCurrentTime();
            if (i2 == 0) {
                currentTime += 3600;
            } else if (i2 == 1) {
                currentTime += 28800;
            } else if (i2 == 2) {
                currentTime += 172800;
            } else if (i2 == 3) {
                currentTime = Integer.MAX_VALUE;
            }
            long j2 = 1;
            if (i2 == 3) {
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), 2);
            } else {
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), 3);
                edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, i), currentTime);
                j2 = 1 | (((long) currentTime) << 32);
            }
            getInstance(UserConfig.selectedAccount).removeNotificationsForDialog(j);
            MessagesStorage.getInstance(UserConfig.selectedAccount).setDialogFlags(j, j2);
            if (tLRPC$Dialog != null) {
                TLRPC$TL_peerNotifySettings tLRPC$TL_peerNotifySettings = new TLRPC$TL_peerNotifySettings();
                tLRPC$Dialog.notify_settings = tLRPC$TL_peerNotifySettings;
                tLRPC$TL_peerNotifySettings.mute_until = currentTime;
            }
        }
        edit.commit();
        updateServerNotificationsSettings(j, i, runnable, runnable2);
    }

    public void updateServerNotificationsSettings(long j, int i, Runnable runnable, Runnable runnable2) {
        updateServerNotificationsSettings(j, i, true, runnable, runnable2);
    }

    public void updateServerNotificationsSettings(long j, int i, boolean z, final Runnable runnable, final Runnable runnable2) {
        if (z) {
            getNotificationCenter().postNotificationName(NotificationCenter.notificationsSettingsUpdated, new Object[0]);
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TLRPC$TL_account_updateNotifySettings tLRPC$TL_account_updateNotifySettings = new TLRPC$TL_account_updateNotifySettings();
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings = new TLRPC$TL_inputPeerNotifySettings();
        tLRPC$TL_account_updateNotifySettings.settings = tLRPC$TL_inputPeerNotifySettings;
        tLRPC$TL_inputPeerNotifySettings.flags |= 1;
        tLRPC$TL_inputPeerNotifySettings.show_previews = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + getSharedPrefKey(j, i), true);
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings2 = tLRPC$TL_account_updateNotifySettings.settings;
        tLRPC$TL_inputPeerNotifySettings2.flags = tLRPC$TL_inputPeerNotifySettings2.flags | 2;
        tLRPC$TL_inputPeerNotifySettings2.silent = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + getSharedPrefKey(j, i), false);
        int i2 = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), -1);
        if (i2 != -1) {
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings3 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings3.flags |= 4;
            if (i2 == 3) {
                tLRPC$TL_inputPeerNotifySettings3.mute_until = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, i), 0);
            } else {
                tLRPC$TL_inputPeerNotifySettings3.mute_until = i2 == 2 ? Integer.MAX_VALUE : 0;
            }
        }
        long j2 = notificationsSettings.getLong("sound_document_id_" + getSharedPrefKey(j, i), 0L);
        String string = notificationsSettings.getString("sound_path_" + getSharedPrefKey(j, i), null);
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings4 = tLRPC$TL_account_updateNotifySettings.settings;
        tLRPC$TL_inputPeerNotifySettings4.flags = tLRPC$TL_inputPeerNotifySettings4.flags | 8;
        if (j2 != 0) {
            TLRPC$TL_notificationSoundRingtone tLRPC$TL_notificationSoundRingtone = new TLRPC$TL_notificationSoundRingtone();
            tLRPC$TL_notificationSoundRingtone.f1606id = j2;
            tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundRingtone;
        } else if (string != null) {
            if (string.equals("NoSound")) {
                tLRPC$TL_account_updateNotifySettings.settings.sound = new TLRPC$TL_notificationSoundNone();
            } else {
                TLRPC$TL_notificationSoundLocal tLRPC$TL_notificationSoundLocal = new TLRPC$TL_notificationSoundLocal();
                tLRPC$TL_notificationSoundLocal.title = notificationsSettings.getString("sound_" + getSharedPrefKey(j, i), null);
                tLRPC$TL_notificationSoundLocal.data = string;
                tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundLocal;
            }
        } else {
            tLRPC$TL_inputPeerNotifySettings4.sound = new TLRPC$TL_notificationSoundDefault();
        }
        if (i != 0) {
            TLRPC$TL_inputNotifyForumTopic tLRPC$TL_inputNotifyForumTopic = new TLRPC$TL_inputNotifyForumTopic();
            tLRPC$TL_inputNotifyForumTopic.peer = getMessagesController().getInputPeer(j);
            tLRPC$TL_inputNotifyForumTopic.top_msg_id = i;
            tLRPC$TL_account_updateNotifySettings.peer = tLRPC$TL_inputNotifyForumTopic;
        } else {
            TLRPC$TL_inputNotifyPeer tLRPC$TL_inputNotifyPeer = new TLRPC$TL_inputNotifyPeer();
            tLRPC$TL_account_updateNotifySettings.peer = tLRPC$TL_inputNotifyPeer;
            tLRPC$TL_inputNotifyPeer.peer = getMessagesController().getInputPeer(j);
        }
        getConnectionsManager().sendRequest(tLRPC$TL_account_updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda41
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                NotificationsController.lambda$updateServerNotificationsSettings$39(runnable, runnable2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$39(Runnable runnable, Runnable runnable2, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            if (runnable != null) {
                runnable.run();
            }
        } else if (runnable2 != null) {
            runnable2.run();
        }
    }

    public void updateServerNotificationsSettings(int i) {
        String str;
        String str2;
        String str3;
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TLRPC$TL_account_updateNotifySettings tLRPC$TL_account_updateNotifySettings = new TLRPC$TL_account_updateNotifySettings();
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings = new TLRPC$TL_inputPeerNotifySettings();
        tLRPC$TL_account_updateNotifySettings.settings = tLRPC$TL_inputPeerNotifySettings;
        tLRPC$TL_inputPeerNotifySettings.flags = 5;
        if (i == 0) {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyChats();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableGroup2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewGroup", true);
            str = "GroupSound";
            str2 = "GroupSoundDocId";
            str3 = "GroupSoundPath";
        } else if (i == 1) {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyUsers();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableAll2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewAll", true);
            str = "GlobalSound";
            str2 = "GlobalSoundDocId";
            str3 = "GlobalSoundPath";
        } else {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyBroadcasts();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableChannel2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewChannel", true);
            str = "ChannelSound";
            str2 = "ChannelSoundDocId";
            str3 = "ChannelSoundPath";
        }
        tLRPC$TL_account_updateNotifySettings.settings.flags |= 8;
        long j = notificationsSettings.getLong(str2, 0L);
        String string = notificationsSettings.getString(str3, "NoSound");
        if (j != 0) {
            TLRPC$TL_notificationSoundRingtone tLRPC$TL_notificationSoundRingtone = new TLRPC$TL_notificationSoundRingtone();
            tLRPC$TL_notificationSoundRingtone.f1606id = j;
            tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundRingtone;
        } else if (string != null) {
            if (string.equals("NoSound")) {
                tLRPC$TL_account_updateNotifySettings.settings.sound = new TLRPC$TL_notificationSoundNone();
            } else {
                TLRPC$TL_notificationSoundLocal tLRPC$TL_notificationSoundLocal = new TLRPC$TL_notificationSoundLocal();
                tLRPC$TL_notificationSoundLocal.title = notificationsSettings.getString(str, null);
                tLRPC$TL_notificationSoundLocal.data = string;
                tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundLocal;
            }
        } else {
            tLRPC$TL_account_updateNotifySettings.settings.sound = new TLRPC$TL_notificationSoundDefault();
        }
        getConnectionsManager().sendRequest(tLRPC$TL_account_updateNotifySettings, NotificationsController$$ExternalSyntheticLambda42.INSTANCE);
    }

    public boolean isGlobalNotificationsEnabled(long j) {
        return isGlobalNotificationsEnabled(j, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r4.megagroup == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
        if (r6.booleanValue() != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isGlobalNotificationsEnabled(long r4, java.lang.Boolean r6) {
        /*
            r3 = this;
            boolean r0 = org.telegram.messenger.DialogObject.isChatDialog(r4)
            r1 = 2
            r2 = 0
            if (r0 == 0) goto L2b
            if (r6 == 0) goto L13
            boolean r4 = r6.booleanValue()
            if (r4 == 0) goto L11
            goto L2c
        L11:
            r1 = 0
            goto L2c
        L13:
            org.telegram.messenger.MessagesController r6 = r3.getMessagesController()
            long r4 = -r4
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            org.telegram.tgnet.TLRPC$Chat r4 = r6.getChat(r4)
            boolean r5 = org.telegram.messenger.ChatObject.isChannel(r4)
            if (r5 == 0) goto L11
            boolean r4 = r4.megagroup
            if (r4 != 0) goto L11
            goto L2c
        L2b:
            r1 = 1
        L2c:
            boolean r4 = r3.isGlobalNotificationsEnabled(r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.isGlobalNotificationsEnabled(long, java.lang.Boolean):boolean");
    }

    public boolean isGlobalNotificationsEnabled(int i) {
        return getAccountInstance().getNotificationsSettings().getInt(getGlobalNotificationsKey(i), 0) < getConnectionsManager().getCurrentTime();
    }

    public void setGlobalNotificationsEnabled(int i, int i2) {
        getAccountInstance().getNotificationsSettings().edit().putInt(getGlobalNotificationsKey(i), i2).commit();
        updateServerNotificationsSettings(i);
        getMessagesStorage().updateMutedDialogsFiltersCounters();
        deleteNotificationChannelGlobal(i);
    }

    public void muteDialog(long j, int i, boolean z) {
        if (z) {
            getInstance(this.currentAccount).muteUntil(j, i, Integer.MAX_VALUE);
            return;
        }
        boolean isGlobalNotificationsEnabled = getInstance(this.currentAccount).isGlobalNotificationsEnabled(j);
        boolean z2 = i != 0;
        SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(this.currentAccount).edit();
        if (isGlobalNotificationsEnabled && !z2) {
            edit.remove(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i));
        } else {
            edit.putInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), 0);
        }
        if (i == 0) {
            getMessagesStorage().setDialogFlags(j, 0L);
            TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(j);
            if (tLRPC$Dialog != null) {
                tLRPC$Dialog.notify_settings = new TLRPC$TL_peerNotifySettings();
            }
        }
        edit.apply();
        updateServerNotificationsSettings(j, i);
    }

    public NotificationsSettingsFacade getNotificationsSettingsFacade() {
        return this.dialogsNotificationsFacade;
    }

    public void loadTopicsNotificationsExceptions(final long j, final Consumer<HashSet<Integer>> consumer) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$loadTopicsNotificationsExceptions$42(j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopicsNotificationsExceptions$42(long j, final Consumer consumer) {
        final HashSet hashSet = new HashSet();
        for (Map.Entry<String, ?> entry : MessagesController.getNotificationsSettings(this.currentAccount).getAll().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith(NotificationsSettingsFacade.PROPERTY_NOTIFY + j)) {
                int intValue = Utilities.parseInt((CharSequence) key.replace(NotificationsSettingsFacade.PROPERTY_NOTIFY + j, "")).intValue();
                if (intValue != 0 && getMessagesController().isDialogMuted(j, intValue) != getMessagesController().isDialogMuted(j, 0)) {
                    hashSet.add(Integer.valueOf(intValue));
                }
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.lambda$loadTopicsNotificationsExceptions$41(Consumer.this, hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadTopicsNotificationsExceptions$41(Consumer consumer, HashSet hashSet) {
        if (consumer != null) {
            consumer.accept(hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class DialogKey {
        final long dialogId;
        final int topicId;

        private DialogKey(long j, int i) {
            this.dialogId = j;
            this.topicId = i;
        }
    }
}
