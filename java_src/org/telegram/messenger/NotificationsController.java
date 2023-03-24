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
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$Poll;
import org.telegram.tgnet.TLRPC$TL_account_updateNotifySettings;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputNotifyBroadcasts;
import org.telegram.tgnet.TLRPC$TL_inputNotifyChats;
import org.telegram.tgnet.TLRPC$TL_inputNotifyForumTopic;
import org.telegram.tgnet.TLRPC$TL_inputNotifyPeer;
import org.telegram.tgnet.TLRPC$TL_inputNotifyUsers;
import org.telegram.tgnet.TLRPC$TL_inputPeerNotifySettings;
import org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate;
import org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom;
import org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser;
import org.telegram.tgnet.TLRPC$TL_messageActionChatCreate;
import org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser;
import org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle;
import org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink;
import org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest;
import org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo;
import org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp;
import org.telegram.tgnet.TLRPC$TL_messageActionEmpty;
import org.telegram.tgnet.TLRPC$TL_messageActionGameScore;
import org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached;
import org.telegram.tgnet.TLRPC$TL_messageActionGroupCall;
import org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled;
import org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall;
import org.telegram.tgnet.TLRPC$TL_messageActionLoginUnknownLocation;
import org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent;
import org.telegram.tgnet.TLRPC$TL_messageActionPhoneCall;
import org.telegram.tgnet.TLRPC$TL_messageActionPinMessage;
import org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken;
import org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme;
import org.telegram.tgnet.TLRPC$TL_messageActionSetMessagesTTL;
import org.telegram.tgnet.TLRPC$TL_messageActionUserJoined;
import org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto;
import org.telegram.tgnet.TLRPC$TL_messageEntitySpoiler;
import org.telegram.tgnet.TLRPC$TL_messageMediaContact;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaGame;
import org.telegram.tgnet.TLRPC$TL_messageMediaGeo;
import org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
import org.telegram.tgnet.TLRPC$TL_messageService;
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
        int i3 = 0;
        while (i3 < longSparseArray.size()) {
            long keyAt = longSparseArray2.keyAt(i3);
            SparseArray<MessageObject> sparseArray = this.pushMessagesDict.get(keyAt);
            if (sparseArray != null) {
                ArrayList arrayList2 = (ArrayList) longSparseArray2.get(keyAt);
                int size = arrayList2.size();
                int i4 = i2;
                while (i4 < size) {
                    int intValue = ((Integer) arrayList2.get(i4)).intValue();
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
                                int i5 = this.total_unread_count - (num2.intValue() > 0 ? 1 : 0);
                                this.total_unread_count = i5;
                                this.total_unread_count = i5 + (num.intValue() > 0 ? 1 : 0);
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
                    i4++;
                    keyAt = j;
                }
                long j2 = keyAt;
                if (sparseArray.size() == 0) {
                    this.pushMessagesDict.remove(j2);
                }
            }
            i3++;
            longSparseArray2 = longSparseArray;
            i2 = 0;
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
        int i2 = 0;
        Integer num2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= longSparseIntArray.size()) {
                break;
            }
            long keyAt = longSparseIntArray.keyAt(i3);
            long j = -keyAt;
            long j2 = longSparseIntArray.get(keyAt);
            Integer num3 = this.pushDialogs.get(j);
            if (num3 == null) {
                num3 = num2;
            }
            int i4 = i2;
            Integer num4 = num3;
            while (i4 < this.pushMessages.size()) {
                MessageObject messageObject = this.pushMessages.get(i4);
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
                        i4--;
                        if (isPersonalMessage(messageObject)) {
                            this.personalCount--;
                        }
                        arrayList.add(messageObject);
                        num4 = Integer.valueOf(num4.intValue() - 1);
                    }
                } else {
                    num = num2;
                }
                i4++;
                num2 = num;
            }
            Integer num5 = num2;
            if (num4.intValue() <= 0) {
                this.smartNotificationsDialogs.remove(j);
                num4 = num5;
            }
            if (!num4.equals(num3)) {
                if (getMessagesController().isForum(j)) {
                    int i5 = this.total_unread_count - (num3.intValue() > 0 ? 1 : 0);
                    this.total_unread_count = i5;
                    this.total_unread_count = i5 + (num4.intValue() <= 0 ? 0 : 1);
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
            i3++;
            num2 = num5;
            i2 = 0;
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
            r0 = r1
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
            r0 = r1
        L59:
            if (r0 == 0) goto L6e
            org.telegram.tgnet.TLRPC$Message r6 = r5.messageOwner
            org.telegram.tgnet.TLRPC$Peer r6 = r6.peer_id
            long r6 = r6.channel_id
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 == 0) goto L6e
            boolean r6 = r5.isSupergroup()
            if (r6 != 0) goto L6e
            r0 = r1
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
            longSparseArray.keyAt(i);
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
        int i;
        int intValue;
        int i2;
        boolean z2;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        int i3;
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
        int i4 = 1;
        if (arrayList3 != null) {
            int i5 = 0;
            while (i5 < arrayList.size()) {
                TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList3.get(i5);
                if (tLRPC$Message != null && ((tLRPC$MessageFwdHeader = tLRPC$Message.fwd_from) == null || !tLRPC$MessageFwdHeader.imported)) {
                    TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
                    if (!(tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetMessagesTTL) && (!tLRPC$Message.silent || (!(tLRPC$MessageAction instanceof TLRPC$TL_messageActionContactSignUp) && !(tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserJoined)))) {
                        long j3 = tLRPC$Message.peer_id.channel_id;
                        long j4 = j3 != j2 ? -j3 : j2;
                        SparseArray<MessageObject> sparseArray3 = this.pushMessagesDict.get(j4);
                        if (sparseArray3 == null || sparseArray3.indexOfKey(tLRPC$Message.f1524id) < 0) {
                            MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message, z4, z4);
                            if (isPersonalMessage(messageObject)) {
                                this.personalCount += i4;
                            }
                            i3 = i5;
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
                                sparseArray2.put(tLRPC$Message.f1524id, messageObject);
                                appendMessage(messageObject);
                                if (dialogId != j) {
                                    Integer num = this.pushDialogsOverrideMention.get(dialogId);
                                    this.pushDialogsOverrideMention.put(dialogId, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                                }
                            }
                            i5 = i3 + 1;
                            arrayList3 = arrayList;
                            z4 = false;
                            j2 = 0;
                            i4 = 1;
                        }
                    }
                }
                i3 = i5;
                i5 = i3 + 1;
                arrayList3 = arrayList;
                z4 = false;
                j2 = 0;
                i4 = 1;
            }
        }
        for (int i6 = 0; i6 < longSparseArray.size(); i6++) {
            long keyAt = longSparseArray.keyAt(i6);
            int indexOfKey2 = longSparseArray2.indexOfKey(keyAt);
            if (indexOfKey2 >= 0) {
                z2 = ((Boolean) longSparseArray2.valueAt(indexOfKey2)).booleanValue();
                i2 = 0;
            } else {
                i2 = 0;
                int notifyOverride2 = getNotifyOverride(notificationsSettings, keyAt, 0);
                if (notifyOverride2 == -1) {
                    z2 = isGlobalNotificationsEnabled(keyAt);
                } else {
                    z2 = notifyOverride2 != 2;
                }
                longSparseArray2.put(keyAt, Boolean.valueOf(z2));
            }
            if (z2) {
                int intValue2 = ((Integer) longSparseArray.valueAt(i6)).intValue();
                this.pushDialogs.put(keyAt, Integer.valueOf(intValue2));
                if (getMessagesController().isForum(keyAt)) {
                    this.total_unread_count += intValue2 > 0 ? 1 : i2;
                } else {
                    this.total_unread_count += intValue2;
                }
            }
        }
        if (arrayList2 != null) {
            for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                MessageObject messageObject2 = (MessageObject) arrayList2.get(i7);
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
                            LongSparseArray<Integer> longSparseArray3 = this.pushDialogsOverrideMention;
                            if (num2 == null) {
                                intValue = 1;
                                i = 1;
                            } else {
                                i = 1;
                                intValue = num2.intValue() + 1;
                            }
                            longSparseArray3.put(dialogId2, Integer.valueOf(intValue));
                        } else {
                            i = 1;
                        }
                        Integer num3 = this.pushDialogs.get(fromChatId);
                        int intValue3 = num3 != null ? num3.intValue() + 1 : i;
                        if (getMessagesController().isForum(fromChatId)) {
                            if (num3 != null) {
                                this.total_unread_count -= num3.intValue() > 0 ? i : 0;
                            }
                            this.total_unread_count += intValue3 > 0 ? i : 0;
                        } else {
                            if (num3 != null) {
                                this.total_unread_count -= num3.intValue();
                            }
                            this.total_unread_count += intValue3;
                        }
                        this.pushDialogs.put(fromChatId, Integer.valueOf(intValue3));
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
                                    if ((tLRPC$Dialog == null || !DialogObject.isChatDialog(tLRPC$Dialog.f1506id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog.f1506id)))) && tLRPC$Dialog != null) {
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
                                if ((!DialogObject.isChatDialog(tLRPC$Dialog2.f1506id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog2.f1506id)))) && MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog2) != 0) {
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

    /* JADX WARN: Code restructure failed: missing block: B:149:0x024a, code lost:
        if (r6.getBoolean(r7, true) == false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0259, code lost:
        if (r6.getBoolean(r24, r11) != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0263, code lost:
        if (r6.getBoolean(r23, r11) != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0265, code lost:
        r2 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0275, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L659;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0277, code lost:
        r27[0] = null;
        r6 = r2.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x027e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0286, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0289, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) != false) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x028d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp) == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0293, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02a3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactNewPhoto", org.telegram.messenger.C3301R.string.NotificationContactNewPhoto, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02a7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionLoginUnknownLocation) == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02a9, code lost:
        r1 = org.telegram.messenger.LocaleController.formatString("formatDateAtTime", org.telegram.messenger.C3301R.string.formatDateAtTime, org.telegram.messenger.LocaleController.getInstance().formatterYear.format(r26.messageOwner.date * 1000), org.telegram.messenger.LocaleController.getInstance().formatterDay.format(r26.messageOwner.date * 1000));
        r2 = org.telegram.messenger.C3301R.string.NotificationUnrecognizedDevice;
        r0 = r26.messageOwner.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0303, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationUnrecognizedDevice", r2, getUserConfig().getCurrentUser().first_name, r1, r0.title, r0.address);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0306, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) != false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x030a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0310, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPhoneCall) == false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0314, code lost:
        if (r6.video == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x031e, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageVideoIncomingMissed", org.telegram.messenger.C3301R.string.CallMessageVideoIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0327, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageIncomingMissed", org.telegram.messenger.C3301R.string.CallMessageIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x032a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser) == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x032c, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0332, code lost:
        if (r2 != 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x033b, code lost:
        if (r6.users.size() != 1) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x033d, code lost:
        r2 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0352, code lost:
        if (r2 == 0) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x035c, code lost:
        if (r26.messageOwner.peer_id.channel_id == 0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0360, code lost:
        if (r5.megagroup != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0375, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3301R.string.ChannelAddedByNotification, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0378, code lost:
        if (r2 != r19) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x038d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3301R.string.NotificationInvitedToGroup, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x038e, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x039a, code lost:
        if (r0 != null) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x039c, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x03a1, code lost:
        if (r9 != r0.f1640id) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03a5, code lost:
        if (r5.megagroup == false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03ba, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3301R.string.NotificationGroupAddSelfMega, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03ce, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3301R.string.NotificationGroupAddSelf, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x03e8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3301R.string.NotificationGroupAddMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x03e9, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x03f9, code lost:
        if (r3 >= r26.messageOwner.action.users.size()) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x03fb, code lost:
        r4 = getMessagesController().getUser(r26.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x040f, code lost:
        if (r4 == null) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0411, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0419, code lost:
        if (r2.length() == 0) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x041b, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0420, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0423, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x043f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3301R.string.NotificationGroupAddMember, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0443, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0457, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3301R.string.NotificationGroupCreatedCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x045a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled) == false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0462, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0465, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall) == false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0467, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x046d, code lost:
        if (r2 != 0) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0476, code lost:
        if (r6.users.size() != 1) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0478, code lost:
        r2 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x048d, code lost:
        if (r2 == 0) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0491, code lost:
        if (r2 != r19) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x04a6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3301R.string.NotificationGroupInvitedYouToCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x04a7, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x04b3, code lost:
        if (r0 != null) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x04b5, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x04cf, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3301R.string.NotificationGroupInvitedToCall, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x04d0, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x04e0, code lost:
        if (r3 >= r26.messageOwner.action.users.size()) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04e2, code lost:
        r4 = getMessagesController().getUser(r26.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x04f6, code lost:
        if (r4 == null) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04f8, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0500, code lost:
        if (r2.length() == 0) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x0502, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0507, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x050a, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0526, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3301R.string.NotificationGroupInvitedToCall, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x052a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x053f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3301R.string.NotificationInvitedToGroupByLink, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0545, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0557, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3301R.string.NotificationEditedGroupName, r1, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x055a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L639;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x055e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0564, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0566, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x056a, code lost:
        if (r2 != r19) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x057f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3301R.string.NotificationGroupKickYou, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0585, code lost:
        if (r2 != r9) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0597, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3301R.string.NotificationGroupLeftMember, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0598, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r26.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x05aa, code lost:
        if (r0 != null) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x05ac, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x05c7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3301R.string.NotificationGroupKickMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x05ca, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05d2, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x05d5, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05dd, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05e0, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05f2, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3301R.string.ActionMigrateFromGroupNotify, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05f7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0607, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3301R.string.ActionMigrateFromGroupNotify, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x060a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0612, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0615, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L618;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x061b, code lost:
        if (r5 == null) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0621, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0625, code lost:
        if (r5.megagroup == false) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0627, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0629, code lost:
        if (r0 != null) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x063e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0646, code lost:
        if (r0.isMusic() == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0658, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3301R.string.NotificationActionPinnedMusic, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x065f, code lost:
        if (r0.isVideo() == false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0665, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x066f, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0698, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3301R.string.NotificationActionPinnedText, r1, "📹 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x06ac, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3301R.string.NotificationActionPinnedVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x06b1, code lost:
        if (r0.isGif() == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x06b7, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x06c1, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06ea, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3301R.string.NotificationActionPinnedText, r1, "🎬 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06fe, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3301R.string.NotificationActionPinnedGif, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0706, code lost:
        if (r0.isVoice() == false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0718, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3301R.string.NotificationActionPinnedVoice, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x071d, code lost:
        if (r0.isRoundVideo() == false) goto L340;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x072f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3301R.string.NotificationActionPinnedRound, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0734, code lost:
        if (r0.isSticker() != false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x073a, code lost:
        if (r0.isAnimatedSticker() == false) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x073e, code lost:
        r4 = r0.messageOwner;
        r7 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0744, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x074a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0752, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x077b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3301R.string.NotificationActionPinnedText, r1, "📎 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x078f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3301R.string.NotificationActionPinnedFile, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0792, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0796, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x079c, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x07b1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeoLive, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x07b6, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x07b8, code lost:
        r7 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x07d6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3301R.string.NotificationActionPinnedContact2, r1, r5.title, org.telegram.messenger.ContactsController.formatName(r7.first_name, r7.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x07d9, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x07db, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r7).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x07e1, code lost:
        if (r0.quiz == false) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x07fb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3301R.string.NotificationActionPinnedQuiz2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0814, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3301R.string.NotificationActionPinnedPoll2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0817, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x081d, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0825, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x084e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3301R.string.NotificationActionPinnedText, r1, "🖼 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0862, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3301R.string.NotificationActionPinnedPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0868, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x087a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3301R.string.NotificationActionPinnedGame, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x087b, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x087d, code lost:
        if (r4 == null) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0883, code lost:
        if (r4.length() <= 0) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0885, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x088b, code lost:
        if (r0.length() <= 20) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x088d, code lost:
        r4 = new java.lang.StringBuilder();
        r7 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x08a2, code lost:
        r7 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x08a3, code lost:
        r2 = org.telegram.messenger.C3301R.string.NotificationActionPinnedText;
        r3 = new java.lang.Object[3];
        r3[r7] = r1;
        r3[1] = r0;
        r3[2] = r5.title;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x08b6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x08ca, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x08de, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x08df, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x08e5, code lost:
        if (r0 == null) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x08fb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3301R.string.NotificationActionPinnedStickerEmoji, r1, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x090d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3301R.string.NotificationActionPinnedSticker, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x090f, code lost:
        if (r5 == null) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0911, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0913, code lost:
        if (r0 != null) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0924, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x092a, code lost:
        if (r0.isMusic() == false) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x093a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedMusicChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0941, code lost:
        if (r0.isVideo() == false) goto L428;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0947, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0951, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0977, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextChannel, r5.title, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0988, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedVideoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x098d, code lost:
        if (r0.isGif() == false) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0993, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x099d, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x09c3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextChannel, r5.title, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x09d4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedGifChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x09db, code lost:
        if (r0.isVoice() == false) goto L442;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x09eb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedVoiceChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x09f0, code lost:
        if (r0.isRoundVideo() == false) goto L446;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0a00, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedRoundChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0a05, code lost:
        if (r0.isSticker() != false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0a0b, code lost:
        if (r0.isAnimatedSticker() == false) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0a0f, code lost:
        r1 = r0.messageOwner;
        r6 = r1.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x0a15, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x0a1b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0a23, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0a49, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextChannel, r5.title, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0a5a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedFileChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0a5d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0a61, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0a67, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0a79, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeoLiveChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0a7d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0a7f, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0a9b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3301R.string.NotificationActionPinnedContactChannel2, r5.title, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0a9e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0aa0, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x0aa6, code lost:
        if (r0.quiz == false) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0abd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3301R.string.NotificationActionPinnedQuizChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0ad3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3301R.string.NotificationActionPinnedPollChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0ad6, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0adc, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0ae4, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0b0a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextChannel, r5.title, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0b1b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedPhotoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r2) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0b20, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0b30, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedGameChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0b31, code lost:
        r1 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0b33, code lost:
        if (r1 == null) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0b39, code lost:
        if (r1.length() <= 0) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0b3b, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0b41, code lost:
        if (r0.length() <= 20) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x0b43, code lost:
        r1 = new java.lang.StringBuilder();
        r6 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0b58, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0b59, code lost:
        r1 = org.telegram.messenger.C3301R.string.NotificationActionPinnedTextChannel;
        r2 = new java.lang.Object[2];
        r2[r6] = r5.title;
        r2[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0b69, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0b7a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0b8b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0b8c, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0b91, code lost:
        if (r0 == null) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0ba5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedStickerEmojiChannel, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0bb5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3301R.string.NotificationActionPinnedStickerChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0bb6, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0bb9, code lost:
        if (r0 != null) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0bc7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0bcc, code lost:
        if (r0.isMusic() == false) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0bda, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedMusicUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0be1, code lost:
        if (r0.isVideo() == false) goto L532;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0be7, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x0bf1, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0c15, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextUser, r1, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0c24, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedVideoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0c29, code lost:
        if (r0.isGif() == false) goto L542;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0c2f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0c39, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0c5d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextUser, r1, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0c6c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedGifUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0c73, code lost:
        if (r0.isVoice() == false) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0c81, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedVoiceUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0c86, code lost:
        if (r0.isRoundVideo() == false) goto L550;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0c94, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedRoundUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0c99, code lost:
        if (r0.isSticker() != false) goto L612;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0c9f, code lost:
        if (r0.isAnimatedSticker() == false) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0ca3, code lost:
        r4 = r0.messageOwner;
        r6 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0ca9, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L564;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0caf, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0cb7, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0cdb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextUser, r1, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0cea, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedFileUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0ced, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0cf1, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x0cf7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x0d07, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeoLiveUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x0d0b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x0d0d, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x0d27, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedContactUser, r1, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x0d2a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L584;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x0d2c, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:610:0x0d32, code lost:
        if (r0.quiz == false) goto L582;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0d47, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedQuizUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0d5b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedPollUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0d5e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L594;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0d64, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0d6c, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x0d90, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedTextUser, r1, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x0d9f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedPhotoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x0da4, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L598;
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x0db2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedGameUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:629:0x0db3, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x0db5, code lost:
        if (r4 == null) goto L608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x0dbb, code lost:
        if (r4.length() <= 0) goto L608;
     */
    /* JADX WARN: Code restructure failed: missing block: B:633:0x0dbd, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0dc3, code lost:
        if (r0.length() <= 20) goto L607;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x0dc5, code lost:
        r4 = new java.lang.StringBuilder();
        r6 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x0dda, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x0ddb, code lost:
        r2 = org.telegram.messenger.C3301R.string.NotificationActionPinnedTextUser;
        r3 = new java.lang.Object[2];
        r3[r6] = r1;
        r3[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x0de9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0df8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x0e07, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedGeoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x0e08, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x0e0e, code lost:
        if (r0 == null) goto L616;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0e1f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedStickerEmojiUser, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0e2c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerUser", org.telegram.messenger.C3301R.string.NotificationActionPinnedStickerUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0e2f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L634;
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x0e31, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r6).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x0e39, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x0e3d, code lost:
        if (r3 != r19) goto L626;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0e61, code lost:
        if (r3 != r19) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x0e7f, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3301R.string.ChatThemeChangedTo, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x0e82, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L638;
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x0e8a, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:666:0x0e8b, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:668:0x0e94, code lost:
        if (r2.peer_id.channel_id == 0) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:670:0x0e98, code lost:
        if (r5.megagroup != false) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:672:0x0e9e, code lost:
        if (r26.isVideoAvatar() == false) goto L647;
     */
    /* JADX WARN: Code restructure failed: missing block: B:674:0x0eb0, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3301R.string.ChannelVideoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:676:0x0ec1, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3301R.string.ChannelPhotoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:678:0x0ec7, code lost:
        if (r26.isVideoAvatar() == false) goto L653;
     */
    /* JADX WARN: Code restructure failed: missing block: B:680:0x0edb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3301R.string.NotificationEditedGroupVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x0eee, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3301R.string.NotificationEditedGroupPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x0ef5, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:686:0x0f04, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactJoined", org.telegram.messenger.C3301R.string.NotificationContactJoined, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x0f09, code lost:
        if (r26.isMediaEmpty() == false) goto L667;
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x0f13, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:692:0x0f19, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:694:0x0f22, code lost:
        return org.telegram.messenger.LocaleController.getString(r22, org.telegram.messenger.C3301R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:695:0x0f23, code lost:
        r1 = r22;
        r2 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:696:0x0f2b, code lost:
        if ((r2.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:698:0x0f31, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:700:0x0f39, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:702:0x0f4e, code lost:
        return "🖼 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:704:0x0f55, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L679;
     */
    /* JADX WARN: Code restructure failed: missing block: B:706:0x0f5f, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingPhoto", org.telegram.messenger.C3301R.string.AttachDestructingPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x0f68, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachPhoto", org.telegram.messenger.C3301R.string.AttachPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:710:0x0f6d, code lost:
        if (r26.isVideo() == false) goto L695;
     */
    /* JADX WARN: Code restructure failed: missing block: B:712:0x0f73, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:714:0x0f7d, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:716:0x0f92, code lost:
        return "📹 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:718:0x0f99, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L693;
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x0fa3, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingVideo", org.telegram.messenger.C3301R.string.AttachDestructingVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:722:0x0fac, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachVideo", org.telegram.messenger.C3301R.string.AttachVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:724:0x0fb1, code lost:
        if (r26.isGame() == false) goto L699;
     */
    /* JADX WARN: Code restructure failed: missing block: B:726:0x0fbb, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGame", org.telegram.messenger.C3301R.string.AttachGame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:728:0x0fc0, code lost:
        if (r26.isVoice() == false) goto L703;
     */
    /* JADX WARN: Code restructure failed: missing block: B:730:0x0fca, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachAudio", org.telegram.messenger.C3301R.string.AttachAudio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:732:0x0fcf, code lost:
        if (r26.isRoundVideo() == false) goto L707;
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x0fd9, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachRound", org.telegram.messenger.C3301R.string.AttachRound);
     */
    /* JADX WARN: Code restructure failed: missing block: B:736:0x0fde, code lost:
        if (r26.isMusic() == false) goto L711;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x0fe8, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachMusic", org.telegram.messenger.C3301R.string.AttachMusic);
     */
    /* JADX WARN: Code restructure failed: missing block: B:739:0x0fe9, code lost:
        r2 = r26.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:740:0x0fef, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:742:0x0ff9, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachContact", org.telegram.messenger.C3301R.string.AttachContact);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x0ffc, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L723;
     */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x1004, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r2).poll.quiz == false) goto L721;
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x100e, code lost:
        return org.telegram.messenger.LocaleController.getString("QuizPoll", org.telegram.messenger.C3301R.string.QuizPoll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x1017, code lost:
        return org.telegram.messenger.LocaleController.getString("Poll", org.telegram.messenger.C3301R.string.Poll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:752:0x101a, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L767;
     */
    /* JADX WARN: Code restructure failed: missing block: B:754:0x101e, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L727;
     */
    /* JADX WARN: Code restructure failed: missing block: B:757:0x1024, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:759:0x102e, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLiveLocation", org.telegram.messenger.C3301R.string.AttachLiveLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:761:0x1031, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:763:0x1037, code lost:
        if (r26.isSticker() != false) goto L755;
     */
    /* JADX WARN: Code restructure failed: missing block: B:765:0x103d, code lost:
        if (r26.isAnimatedSticker() == false) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:768:0x1044, code lost:
        if (r26.isGif() == false) goto L747;
     */
    /* JADX WARN: Code restructure failed: missing block: B:770:0x104a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:772:0x1054, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:774:0x1069, code lost:
        return "🎬 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:776:0x1072, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGif", org.telegram.messenger.C3301R.string.AttachGif);
     */
    /* JADX WARN: Code restructure failed: missing block: B:778:0x1077, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:780:0x1081, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:782:0x1096, code lost:
        return "📎 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x109f, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDocument", org.telegram.messenger.C3301R.string.AttachDocument);
     */
    /* JADX WARN: Code restructure failed: missing block: B:785:0x10a0, code lost:
        r0 = r26.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x10a4, code lost:
        if (r0 == null) goto L759;
     */
    /* JADX WARN: Code restructure failed: missing block: B:788:0x10c2, code lost:
        return r0 + " " + org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3301R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:790:0x10cb, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3301R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x10d2, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageText) != false) goto L765;
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x10d8, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:796:0x10df, code lost:
        return org.telegram.messenger.LocaleController.getString(r1, org.telegram.messenger.C3301R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:798:0x10e8, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLocation", org.telegram.messenger.C3301R.string.AttachLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3301R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:813:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3301R.string.ChatThemeDisabled, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3301R.string.ChatThemeChangedYou, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getShortStringForMessage(org.telegram.messenger.MessageObject r26, java.lang.String[] r27, boolean[] r28) {
        /*
            Method dump skipped, instructions count: 4350
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

    private String getStringForMessage(MessageObject messageObject, boolean z, boolean[] zArr, boolean[] zArr2) {
        String str;
        String str2;
        String str3;
        TLRPC$Chat tLRPC$Chat;
        String formatString;
        char c;
        char c2;
        char c3;
        boolean z2;
        String formatString2;
        boolean z3;
        boolean z4;
        if (AndroidUtilities.needShowPasscode() || SharedConfig.isWaitingForPasscodeEnter) {
            return LocaleController.getString("YouHaveNewMessage", C3301R.string.YouHaveNewMessage);
        }
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        long j = tLRPC$Message.dialog_id;
        TLRPC$Peer tLRPC$Peer = tLRPC$Message.peer_id;
        long j2 = tLRPC$Peer.chat_id;
        if (j2 == 0) {
            j2 = tLRPC$Peer.channel_id;
        }
        long j3 = tLRPC$Peer.user_id;
        if (zArr2 != null) {
            zArr2[0] = true;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        boolean z5 = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + j, true);
        if (messageObject.isFcmMessage()) {
            int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i != 0 || j3 == 0) {
                z3 = true;
                if (i != 0) {
                    if (z5 && (messageObject.localChannel || notificationsSettings.getBoolean("EnablePreviewGroup", true))) {
                        if (messageObject.localChannel) {
                            if (notificationsSettings.getBoolean("EnablePreviewChannel", true)) {
                                z4 = true;
                                zArr[0] = z4;
                                return (String) messageObject.messageText;
                            }
                        }
                    }
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString("NotificationMessageGroupNoText", C3301R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString("ChannelMessageNoText", C3301R.string.ChannelMessageNoText, messageObject.localName);
                }
            } else {
                z3 = true;
                if (!z5 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return LocaleController.formatString("NotificationMessageNoText", C3301R.string.NotificationMessageNoText, messageObject.localName);
                }
            }
            z4 = z3;
            zArr[0] = z4;
            return (String) messageObject.messageText;
        }
        long clientUserId = getUserConfig().getClientUserId();
        if (j3 == 0) {
            j3 = messageObject.getFromChatId();
            if (j3 == 0) {
                j3 = -j2;
            }
        } else if (j3 == clientUserId) {
            j3 = messageObject.getFromChatId();
        }
        if (j == 0) {
            if (j2 != 0) {
                j = -j2;
            } else if (j3 != 0) {
                j = j3;
            }
        }
        int i2 = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i2 > 0) {
            if (!messageObject.messageOwner.from_scheduled) {
                str = "NotificationMessageGroupNoText";
                TLRPC$User user = getMessagesController().getUser(Long.valueOf(j3));
                str3 = user != null ? UserObject.getUserName(user) : null;
            } else if (j == clientUserId) {
                str = "NotificationMessageGroupNoText";
                str3 = LocaleController.getString("MessageScheduledReminderNotification", C3301R.string.MessageScheduledReminderNotification);
            } else {
                str = "NotificationMessageGroupNoText";
                str3 = LocaleController.getString("NotificationMessageScheduledName", C3301R.string.NotificationMessageScheduledName);
            }
            str2 = "NotificationMessageNoText";
        } else {
            str = "NotificationMessageGroupNoText";
            str2 = "NotificationMessageNoText";
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-j3));
            str3 = chat != null ? chat.title : null;
        }
        if (str3 == null) {
            return null;
        }
        int i3 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i3 != 0) {
            tLRPC$Chat = getMessagesController().getChat(Long.valueOf(j2));
            if (tLRPC$Chat == null) {
                return null;
            }
        } else {
            tLRPC$Chat = null;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return LocaleController.getString("YouHaveNewMessage", C3301R.string.YouHaveNewMessage);
        }
        long j4 = j3;
        if (i3 == 0 && i2 != 0) {
            if (!z5 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                String str4 = str2;
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return LocaleController.formatString(str4, C3301R.string.NotificationMessageNoText, str3);
            } else {
                TLRPC$Message tLRPC$Message2 = messageObject.messageOwner;
                if (tLRPC$Message2 instanceof TLRPC$TL_messageService) {
                    TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message2.action;
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionGeoProximityReached) {
                        return messageObject.messageText.toString();
                    }
                    if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserJoined) || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionContactSignUp)) {
                        return LocaleController.formatString("NotificationContactJoined", C3301R.string.NotificationContactJoined, str3);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                        return LocaleController.formatString("NotificationContactNewPhoto", C3301R.string.NotificationContactNewPhoto, str3);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionLoginUnknownLocation) {
                        String formatString3 = LocaleController.formatString("formatDateAtTime", C3301R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(messageObject.messageOwner.date * 1000), LocaleController.getInstance().formatterDay.format(messageObject.messageOwner.date * 1000));
                        int i4 = C3301R.string.NotificationUnrecognizedDevice;
                        TLRPC$MessageAction tLRPC$MessageAction2 = messageObject.messageOwner.action;
                        return LocaleController.formatString("NotificationUnrecognizedDevice", i4, getUserConfig().getCurrentUser().first_name, formatString3, tLRPC$MessageAction2.title, tLRPC$MessageAction2.address);
                    } else if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionGameScore) || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPaymentSent)) {
                        return messageObject.messageText.toString();
                    } else {
                        if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPhoneCall) {
                            if (tLRPC$MessageAction.video) {
                                return LocaleController.getString("CallMessageVideoIncomingMissed", C3301R.string.CallMessageVideoIncomingMissed);
                            }
                            return LocaleController.getString("CallMessageIncomingMissed", C3301R.string.CallMessageIncomingMissed);
                        } else if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetChatTheme) {
                            String str5 = ((TLRPC$TL_messageActionSetChatTheme) tLRPC$MessageAction).emoticon;
                            if (!TextUtils.isEmpty(str5)) {
                                c3 = 0;
                                z2 = true;
                                if (j == clientUserId) {
                                    formatString2 = LocaleController.formatString("ChangedChatThemeYou", C3301R.string.ChatThemeChangedYou, str5);
                                } else {
                                    formatString2 = LocaleController.formatString("ChangedChatThemeTo", C3301R.string.ChatThemeChangedTo, str3, str5);
                                }
                            } else if (j == clientUserId) {
                                c3 = 0;
                                formatString2 = LocaleController.formatString("ChatThemeDisabledYou", C3301R.string.ChatThemeDisabledYou, new Object[0]);
                                z2 = true;
                            } else {
                                c3 = 0;
                                z2 = true;
                                formatString2 = LocaleController.formatString("ChatThemeDisabled", C3301R.string.ChatThemeDisabled, str3, str5);
                            }
                            String str6 = formatString2;
                            zArr[c3] = z2;
                            return str6;
                        } else {
                            return null;
                        }
                    }
                } else if (messageObject.isMediaEmpty()) {
                    if (!z && !TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        String formatString4 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString4;
                    }
                    return LocaleController.formatString(str2, C3301R.string.NotificationMessageNoText, str3);
                } else {
                    String str7 = str2;
                    TLRPC$Message tLRPC$Message3 = messageObject.messageOwner;
                    if (tLRPC$Message3.media instanceof TLRPC$TL_messageMediaPhoto) {
                        if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message3.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString("NotificationMessageSDPhoto", C3301R.string.NotificationMessageSDPhoto, str3) : LocaleController.formatString("NotificationMessagePhoto", C3301R.string.NotificationMessagePhoto, str3);
                        }
                        String formatString5 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "🖼 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString5;
                    } else if (messageObject.isVideo()) {
                        if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString("NotificationMessageSDVideo", C3301R.string.NotificationMessageSDVideo, str3) : LocaleController.formatString("NotificationMessageVideo", C3301R.string.NotificationMessageVideo, str3);
                        }
                        String formatString6 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "📹 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString6;
                    } else if (messageObject.isGame()) {
                        return LocaleController.formatString("NotificationMessageGame", C3301R.string.NotificationMessageGame, str3, messageObject.messageOwner.media.game.title);
                    } else {
                        if (messageObject.isVoice()) {
                            return LocaleController.formatString("NotificationMessageAudio", C3301R.string.NotificationMessageAudio, str3);
                        }
                        if (messageObject.isRoundVideo()) {
                            return LocaleController.formatString("NotificationMessageRound", C3301R.string.NotificationMessageRound, str3);
                        }
                        if (messageObject.isMusic()) {
                            return LocaleController.formatString("NotificationMessageMusic", C3301R.string.NotificationMessageMusic, str3);
                        }
                        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
                        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaContact) {
                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia;
                            return LocaleController.formatString("NotificationMessageContact2", C3301R.string.NotificationMessageContact2, str3, ContactsController.formatName(tLRPC$TL_messageMediaContact.first_name, tLRPC$TL_messageMediaContact.last_name));
                        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPoll) {
                            TLRPC$Poll tLRPC$Poll = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia).poll;
                            if (tLRPC$Poll.quiz) {
                                formatString = LocaleController.formatString("NotificationMessageQuiz2", C3301R.string.NotificationMessageQuiz2, str3, tLRPC$Poll.question);
                            } else {
                                formatString = LocaleController.formatString("NotificationMessagePoll2", C3301R.string.NotificationMessagePoll2, str3, tLRPC$Poll.question);
                            }
                        } else if ((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaVenue)) {
                            return LocaleController.formatString("NotificationMessageMap", C3301R.string.NotificationMessageMap, str3);
                        } else {
                            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGeoLive) {
                                return LocaleController.formatString("NotificationMessageLiveLocation", C3301R.string.NotificationMessageLiveLocation, str3);
                            }
                            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) {
                                if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                    String stickerEmoji = messageObject.getStickerEmoji();
                                    if (stickerEmoji != null) {
                                        formatString = LocaleController.formatString("NotificationMessageStickerEmoji", C3301R.string.NotificationMessageStickerEmoji, str3, stickerEmoji);
                                    } else {
                                        formatString = LocaleController.formatString("NotificationMessageSticker", C3301R.string.NotificationMessageSticker, str3);
                                    }
                                } else if (messageObject.isGif()) {
                                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                        return LocaleController.formatString("NotificationMessageGif", C3301R.string.NotificationMessageGif, str3);
                                    }
                                    String formatString7 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "🎬 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return formatString7;
                                } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    return LocaleController.formatString("NotificationMessageDocument", C3301R.string.NotificationMessageDocument, str3);
                                } else {
                                    String formatString8 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "📎 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return formatString8;
                                }
                            } else if (z || TextUtils.isEmpty(messageObject.messageText)) {
                                return LocaleController.formatString(str7, C3301R.string.NotificationMessageNoText, str3);
                            } else {
                                String formatString9 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, messageObject.messageText);
                                zArr[0] = true;
                                return formatString9;
                            }
                        }
                    }
                }
            }
        } else {
            if (i3 == 0) {
                return null;
            }
            boolean z6 = ChatObject.isChannel(tLRPC$Chat) && !tLRPC$Chat.megagroup;
            if (!z5 || ((z6 || !notificationsSettings.getBoolean("EnablePreviewGroup", true)) && !(z6 && notificationsSettings.getBoolean("EnablePreviewChannel", true)))) {
                String str8 = str;
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) ? LocaleController.formatString(str8, C3301R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("ChannelMessageNoText", C3301R.string.ChannelMessageNoText, str3);
            }
            TLRPC$Message tLRPC$Message4 = messageObject.messageOwner;
            if (tLRPC$Message4 instanceof TLRPC$TL_messageService) {
                TLRPC$MessageAction tLRPC$MessageAction3 = tLRPC$Message4.action;
                if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatAddUser) {
                    long j5 = tLRPC$MessageAction3.user_id;
                    if (j5 == 0 && tLRPC$MessageAction3.users.size() == 1) {
                        j5 = messageObject.messageOwner.action.users.get(0).longValue();
                    }
                    if (j5 != 0) {
                        if (messageObject.messageOwner.peer_id.channel_id != 0 && !tLRPC$Chat.megagroup) {
                            formatString = LocaleController.formatString("ChannelAddedByNotification", C3301R.string.ChannelAddedByNotification, str3, tLRPC$Chat.title);
                        } else if (j5 == clientUserId) {
                            formatString = LocaleController.formatString("NotificationInvitedToGroup", C3301R.string.NotificationInvitedToGroup, str3, tLRPC$Chat.title);
                        } else {
                            TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(j5));
                            if (user2 == null) {
                                return null;
                            }
                            if (j4 == user2.f1640id) {
                                if (tLRPC$Chat.megagroup) {
                                    formatString = LocaleController.formatString("NotificationGroupAddSelfMega", C3301R.string.NotificationGroupAddSelfMega, str3, tLRPC$Chat.title);
                                } else {
                                    formatString = LocaleController.formatString("NotificationGroupAddSelf", C3301R.string.NotificationGroupAddSelf, str3, tLRPC$Chat.title);
                                }
                            } else {
                                formatString = LocaleController.formatString("NotificationGroupAddMember", C3301R.string.NotificationGroupAddMember, str3, tLRPC$Chat.title, UserObject.getUserName(user2));
                            }
                        }
                    } else {
                        StringBuilder sb = new StringBuilder();
                        for (int i5 = 0; i5 < messageObject.messageOwner.action.users.size(); i5++) {
                            TLRPC$User user3 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i5));
                            if (user3 != null) {
                                String userName = UserObject.getUserName(user3);
                                if (sb.length() != 0) {
                                    sb.append(", ");
                                }
                                sb.append(userName);
                            }
                        }
                        formatString = LocaleController.formatString("NotificationGroupAddMember", C3301R.string.NotificationGroupAddMember, str3, tLRPC$Chat.title, sb.toString());
                    }
                } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionGroupCall) {
                    return LocaleController.formatString("NotificationGroupCreatedCall", C3301R.string.NotificationGroupCreatedCall, str3, tLRPC$Chat.title);
                } else {
                    if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionGroupCallScheduled) {
                        return messageObject.messageText.toString();
                    }
                    if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionInviteToGroupCall) {
                        long j6 = tLRPC$MessageAction3.user_id;
                        if (j6 == 0 && tLRPC$MessageAction3.users.size() == 1) {
                            j6 = messageObject.messageOwner.action.users.get(0).longValue();
                        }
                        if (j6 == 0) {
                            StringBuilder sb2 = new StringBuilder();
                            for (int i6 = 0; i6 < messageObject.messageOwner.action.users.size(); i6++) {
                                TLRPC$User user4 = getMessagesController().getUser(messageObject.messageOwner.action.users.get(i6));
                                if (user4 != null) {
                                    String userName2 = UserObject.getUserName(user4);
                                    if (sb2.length() != 0) {
                                        sb2.append(", ");
                                    }
                                    sb2.append(userName2);
                                }
                            }
                            formatString = LocaleController.formatString("NotificationGroupInvitedToCall", C3301R.string.NotificationGroupInvitedToCall, str3, tLRPC$Chat.title, sb2.toString());
                        } else if (j6 == clientUserId) {
                            formatString = LocaleController.formatString("NotificationGroupInvitedYouToCall", C3301R.string.NotificationGroupInvitedYouToCall, str3, tLRPC$Chat.title);
                        } else {
                            TLRPC$User user5 = getMessagesController().getUser(Long.valueOf(j6));
                            if (user5 == null) {
                                return null;
                            }
                            formatString = LocaleController.formatString("NotificationGroupInvitedToCall", C3301R.string.NotificationGroupInvitedToCall, str3, tLRPC$Chat.title, UserObject.getUserName(user5));
                        }
                    } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatJoinedByLink) {
                        return LocaleController.formatString("NotificationInvitedToGroupByLink", C3301R.string.NotificationInvitedToGroupByLink, str3, tLRPC$Chat.title);
                    } else {
                        if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatEditTitle) {
                            return LocaleController.formatString("NotificationEditedGroupName", C3301R.string.NotificationEditedGroupName, str3, tLRPC$MessageAction3.title);
                        }
                        if ((tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatEditPhoto) || (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatDeletePhoto)) {
                            return (tLRPC$Message4.peer_id.channel_id == 0 || tLRPC$Chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString("NotificationEditedGroupVideo", C3301R.string.NotificationEditedGroupVideo, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationEditedGroupPhoto", C3301R.string.NotificationEditedGroupPhoto, str3, tLRPC$Chat.title) : messageObject.isVideoAvatar() ? LocaleController.formatString("ChannelVideoEditNotification", C3301R.string.ChannelVideoEditNotification, tLRPC$Chat.title) : LocaleController.formatString("ChannelPhotoEditNotification", C3301R.string.ChannelPhotoEditNotification, tLRPC$Chat.title);
                        } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatDeleteUser) {
                            long j7 = tLRPC$MessageAction3.user_id;
                            if (j7 == clientUserId) {
                                return LocaleController.formatString("NotificationGroupKickYou", C3301R.string.NotificationGroupKickYou, str3, tLRPC$Chat.title);
                            }
                            if (j7 == j4) {
                                return LocaleController.formatString("NotificationGroupLeftMember", C3301R.string.NotificationGroupLeftMember, str3, tLRPC$Chat.title);
                            }
                            TLRPC$User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                            if (user6 == null) {
                                return null;
                            }
                            return LocaleController.formatString("NotificationGroupKickMember", C3301R.string.NotificationGroupKickMember, str3, tLRPC$Chat.title, UserObject.getUserName(user6));
                        } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatCreate) {
                            return messageObject.messageText.toString();
                        } else {
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChannelCreate) {
                                return messageObject.messageText.toString();
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatMigrateTo) {
                                return LocaleController.formatString("ActionMigrateFromGroupNotify", C3301R.string.ActionMigrateFromGroupNotify, tLRPC$Chat.title);
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChannelMigrateFrom) {
                                return LocaleController.formatString("ActionMigrateFromGroupNotify", C3301R.string.ActionMigrateFromGroupNotify, tLRPC$MessageAction3.title);
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionScreenshotTaken) {
                                return messageObject.messageText.toString();
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionPinMessage) {
                                if (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) {
                                    MessageObject messageObject2 = messageObject.replyMessageObject;
                                    if (messageObject2 == null) {
                                        return LocaleController.formatString("NotificationActionPinnedNoText", C3301R.string.NotificationActionPinnedNoText, str3, tLRPC$Chat.title);
                                    }
                                    if (messageObject2.isMusic()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedMusic", C3301R.string.NotificationActionPinnedMusic, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isVideo()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedText", C3301R.string.NotificationActionPinnedText, str3, "📹 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedVideo", C3301R.string.NotificationActionPinnedVideo, str3, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject2.isGif()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedText", C3301R.string.NotificationActionPinnedText, str3, "🎬 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGif", C3301R.string.NotificationActionPinnedGif, str3, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject2.isVoice()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedVoice", C3301R.string.NotificationActionPinnedVoice, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isRoundVideo()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedRound", C3301R.string.NotificationActionPinnedRound, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                                        String stickerEmoji2 = messageObject2.getStickerEmoji();
                                        if (stickerEmoji2 != null) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerEmoji", C3301R.string.NotificationActionPinnedStickerEmoji, str3, tLRPC$Chat.title, stickerEmoji2);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedSticker", C3301R.string.NotificationActionPinnedSticker, str3, tLRPC$Chat.title);
                                        }
                                    } else {
                                        TLRPC$Message tLRPC$Message5 = messageObject2.messageOwner;
                                        TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$Message5.media;
                                        if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaDocument) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message5.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", C3301R.string.NotificationActionPinnedText, str3, "📎 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedFile", C3301R.string.NotificationActionPinnedFile, str3, tLRPC$Chat.title);
                                            }
                                        } else if ((tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaVenue)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeo", C3301R.string.NotificationActionPinnedGeo, str3, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGeoLive) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoLive", C3301R.string.NotificationActionPinnedGeoLive, str3, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaContact) {
                                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact2 = (TLRPC$TL_messageMediaContact) messageObject.messageOwner.media;
                                            formatString = LocaleController.formatString("NotificationActionPinnedContact2", C3301R.string.NotificationActionPinnedContact2, str3, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact2.first_name, tLRPC$TL_messageMediaContact2.last_name));
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaPoll) {
                                            TLRPC$Poll tLRPC$Poll2 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia2).poll;
                                            if (tLRPC$Poll2.quiz) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedQuiz2", C3301R.string.NotificationActionPinnedQuiz2, str3, tLRPC$Chat.title, tLRPC$Poll2.question);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPoll2", C3301R.string.NotificationActionPinnedPoll2, str3, tLRPC$Chat.title, tLRPC$Poll2.question);
                                            }
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaPhoto) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message5.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", C3301R.string.NotificationActionPinnedText, str3, "🖼 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPhoto", C3301R.string.NotificationActionPinnedPhoto, str3, tLRPC$Chat.title);
                                            }
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGame) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGame", C3301R.string.NotificationActionPinnedGame, str3, tLRPC$Chat.title);
                                        } else {
                                            CharSequence charSequence = messageObject2.messageText;
                                            if (charSequence != null && charSequence.length() > 0) {
                                                CharSequence charSequence2 = messageObject2.messageText;
                                                if (charSequence2.length() > 20) {
                                                    StringBuilder sb3 = new StringBuilder();
                                                    c = 0;
                                                    sb3.append((Object) charSequence2.subSequence(0, 20));
                                                    sb3.append("...");
                                                    charSequence2 = sb3.toString();
                                                } else {
                                                    c = 0;
                                                }
                                                int i7 = C3301R.string.NotificationActionPinnedText;
                                                Object[] objArr = new Object[3];
                                                objArr[c] = str3;
                                                objArr[1] = charSequence2;
                                                objArr[2] = tLRPC$Chat.title;
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", i7, objArr);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedNoText", C3301R.string.NotificationActionPinnedNoText, str3, tLRPC$Chat.title);
                                            }
                                        }
                                    }
                                } else {
                                    MessageObject messageObject3 = messageObject.replyMessageObject;
                                    if (messageObject3 == null) {
                                        return LocaleController.formatString("NotificationActionPinnedNoTextChannel", C3301R.string.NotificationActionPinnedNoTextChannel, tLRPC$Chat.title);
                                    }
                                    if (messageObject3.isMusic()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedMusicChannel", C3301R.string.NotificationActionPinnedMusicChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isVideo()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3301R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "📹 " + messageObject3.messageOwner.message);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedVideoChannel", C3301R.string.NotificationActionPinnedVideoChannel, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject3.isGif()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3301R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "🎬 " + messageObject3.messageOwner.message);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGifChannel", C3301R.string.NotificationActionPinnedGifChannel, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject3.isVoice()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedVoiceChannel", C3301R.string.NotificationActionPinnedVoiceChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isRoundVideo()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedRoundChannel", C3301R.string.NotificationActionPinnedRoundChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                                        String stickerEmoji3 = messageObject3.getStickerEmoji();
                                        if (stickerEmoji3 != null) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", C3301R.string.NotificationActionPinnedStickerEmojiChannel, tLRPC$Chat.title, stickerEmoji3);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerChannel", C3301R.string.NotificationActionPinnedStickerChannel, tLRPC$Chat.title);
                                        }
                                    } else {
                                        TLRPC$Message tLRPC$Message6 = messageObject3.messageOwner;
                                        TLRPC$MessageMedia tLRPC$MessageMedia3 = tLRPC$Message6.media;
                                        if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaDocument) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message6.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3301R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "📎 " + messageObject3.messageOwner.message);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedFileChannel", C3301R.string.NotificationActionPinnedFileChannel, tLRPC$Chat.title);
                                            }
                                        } else if ((tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaVenue)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoChannel", C3301R.string.NotificationActionPinnedGeoChannel, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGeoLive) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", C3301R.string.NotificationActionPinnedGeoLiveChannel, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaContact) {
                                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact3 = (TLRPC$TL_messageMediaContact) messageObject.messageOwner.media;
                                            formatString = LocaleController.formatString("NotificationActionPinnedContactChannel2", C3301R.string.NotificationActionPinnedContactChannel2, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact3.first_name, tLRPC$TL_messageMediaContact3.last_name));
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaPoll) {
                                            TLRPC$Poll tLRPC$Poll3 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia3).poll;
                                            if (tLRPC$Poll3.quiz) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedQuizChannel2", C3301R.string.NotificationActionPinnedQuizChannel2, tLRPC$Chat.title, tLRPC$Poll3.question);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPollChannel2", C3301R.string.NotificationActionPinnedPollChannel2, tLRPC$Chat.title, tLRPC$Poll3.question);
                                            }
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaPhoto) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message6.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3301R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "🖼 " + messageObject3.messageOwner.message);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPhotoChannel", C3301R.string.NotificationActionPinnedPhotoChannel, tLRPC$Chat.title);
                                            }
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGame) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGameChannel", C3301R.string.NotificationActionPinnedGameChannel, tLRPC$Chat.title);
                                        } else {
                                            CharSequence charSequence3 = messageObject3.messageText;
                                            if (charSequence3 != null && charSequence3.length() > 0) {
                                                CharSequence charSequence4 = messageObject3.messageText;
                                                if (charSequence4.length() > 20) {
                                                    StringBuilder sb4 = new StringBuilder();
                                                    c2 = 0;
                                                    sb4.append((Object) charSequence4.subSequence(0, 20));
                                                    sb4.append("...");
                                                    charSequence4 = sb4.toString();
                                                } else {
                                                    c2 = 0;
                                                }
                                                int i8 = C3301R.string.NotificationActionPinnedTextChannel;
                                                Object[] objArr2 = new Object[2];
                                                objArr2[c2] = tLRPC$Chat.title;
                                                objArr2[1] = charSequence4;
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", i8, objArr2);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedNoTextChannel", C3301R.string.NotificationActionPinnedNoTextChannel, tLRPC$Chat.title);
                                            }
                                        }
                                    }
                                }
                            } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionGameScore) {
                                return messageObject.messageText.toString();
                            } else {
                                if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionSetChatTheme) {
                                    String str9 = ((TLRPC$TL_messageActionSetChatTheme) tLRPC$MessageAction3).emoticon;
                                    if (TextUtils.isEmpty(str9)) {
                                        if (j == clientUserId) {
                                            formatString = LocaleController.formatString("ChatThemeDisabledYou", C3301R.string.ChatThemeDisabledYou, new Object[0]);
                                        } else {
                                            formatString = LocaleController.formatString("ChatThemeDisabled", C3301R.string.ChatThemeDisabled, str3, str9);
                                        }
                                    } else if (j == clientUserId) {
                                        formatString = LocaleController.formatString("ChangedChatThemeYou", C3301R.string.ChatThemeChangedYou, str9);
                                    } else {
                                        formatString = LocaleController.formatString("ChangedChatThemeTo", C3301R.string.ChatThemeChangedTo, str3, str9);
                                    }
                                } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatJoinedByRequest) {
                                    return messageObject.messageText.toString();
                                } else {
                                    return null;
                                }
                            }
                        }
                    }
                }
            } else if (ChatObject.isChannel(tLRPC$Chat) && !tLRPC$Chat.megagroup) {
                if (messageObject.isMediaEmpty()) {
                    if (z || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString("ChannelMessageNoText", C3301R.string.ChannelMessageNoText, str3);
                    }
                    String formatString10 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString10;
                }
                TLRPC$Message tLRPC$Message7 = messageObject.messageOwner;
                if (tLRPC$Message7.media instanceof TLRPC$TL_messageMediaPhoto) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message7.message)) {
                        return LocaleController.formatString("ChannelMessagePhoto", C3301R.string.ChannelMessagePhoto, str3);
                    }
                    String formatString11 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "🖼 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString11;
                } else if (messageObject.isVideo()) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString("ChannelMessageVideo", C3301R.string.ChannelMessageVideo, str3);
                    }
                    String formatString12 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "📹 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString12;
                } else if (messageObject.isVoice()) {
                    return LocaleController.formatString("ChannelMessageAudio", C3301R.string.ChannelMessageAudio, str3);
                } else {
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.formatString("ChannelMessageRound", C3301R.string.ChannelMessageRound, str3);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.formatString("ChannelMessageMusic", C3301R.string.ChannelMessageMusic, str3);
                    }
                    TLRPC$MessageMedia tLRPC$MessageMedia4 = messageObject.messageOwner.media;
                    if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaContact) {
                        TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact4 = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia4;
                        return LocaleController.formatString("ChannelMessageContact2", C3301R.string.ChannelMessageContact2, str3, ContactsController.formatName(tLRPC$TL_messageMediaContact4.first_name, tLRPC$TL_messageMediaContact4.last_name));
                    } else if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaPoll) {
                        TLRPC$Poll tLRPC$Poll4 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia4).poll;
                        if (tLRPC$Poll4.quiz) {
                            formatString = LocaleController.formatString("ChannelMessageQuiz2", C3301R.string.ChannelMessageQuiz2, str3, tLRPC$Poll4.question);
                        } else {
                            formatString = LocaleController.formatString("ChannelMessagePoll2", C3301R.string.ChannelMessagePoll2, str3, tLRPC$Poll4.question);
                        }
                    } else if ((tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaVenue)) {
                        return LocaleController.formatString("ChannelMessageMap", C3301R.string.ChannelMessageMap, str3);
                    } else {
                        if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaGeoLive) {
                            return LocaleController.formatString("ChannelMessageLiveLocation", C3301R.string.ChannelMessageLiveLocation, str3);
                        }
                        if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaDocument) {
                            if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                String stickerEmoji4 = messageObject.getStickerEmoji();
                                if (stickerEmoji4 != null) {
                                    formatString = LocaleController.formatString("ChannelMessageStickerEmoji", C3301R.string.ChannelMessageStickerEmoji, str3, stickerEmoji4);
                                } else {
                                    formatString = LocaleController.formatString("ChannelMessageSticker", C3301R.string.ChannelMessageSticker, str3);
                                }
                            } else if (messageObject.isGif()) {
                                if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    return LocaleController.formatString("ChannelMessageGIF", C3301R.string.ChannelMessageGIF, str3);
                                }
                                String formatString13 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "🎬 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return formatString13;
                            } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString("ChannelMessageDocument", C3301R.string.ChannelMessageDocument, str3);
                            } else {
                                String formatString14 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, "📎 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return formatString14;
                            }
                        } else if (z || TextUtils.isEmpty(messageObject.messageText)) {
                            return LocaleController.formatString("ChannelMessageNoText", C3301R.string.ChannelMessageNoText, str3);
                        } else {
                            String formatString15 = LocaleController.formatString("NotificationMessageText", C3301R.string.NotificationMessageText, str3, messageObject.messageText);
                            zArr[0] = true;
                            return formatString15;
                        }
                    }
                }
            } else if (messageObject.isMediaEmpty()) {
                return (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(str, C3301R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, messageObject.messageOwner.message);
            } else {
                String str10 = str;
                TLRPC$Message tLRPC$Message8 = messageObject.messageOwner;
                if (tLRPC$Message8.media instanceof TLRPC$TL_messageMediaPhoto) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message8.message)) {
                        return LocaleController.formatString("NotificationMessageGroupPhoto", C3301R.string.NotificationMessageGroupPhoto, str3, tLRPC$Chat.title);
                    }
                    return LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "🖼 " + messageObject.messageOwner.message);
                } else if (messageObject.isVideo()) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString(" ", C3301R.string.NotificationMessageGroupVideo, str3, tLRPC$Chat.title);
                    }
                    return LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "📹 " + messageObject.messageOwner.message);
                } else if (messageObject.isVoice()) {
                    return LocaleController.formatString("NotificationMessageGroupAudio", C3301R.string.NotificationMessageGroupAudio, str3, tLRPC$Chat.title);
                } else {
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.formatString("NotificationMessageGroupRound", C3301R.string.NotificationMessageGroupRound, str3, tLRPC$Chat.title);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.formatString("NotificationMessageGroupMusic", C3301R.string.NotificationMessageGroupMusic, str3, tLRPC$Chat.title);
                    }
                    TLRPC$MessageMedia tLRPC$MessageMedia5 = messageObject.messageOwner.media;
                    if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaContact) {
                        TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact5 = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia5;
                        return LocaleController.formatString("NotificationMessageGroupContact2", C3301R.string.NotificationMessageGroupContact2, str3, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact5.first_name, tLRPC$TL_messageMediaContact5.last_name));
                    } else if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaPoll) {
                        TLRPC$Poll tLRPC$Poll5 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia5).poll;
                        if (tLRPC$Poll5.quiz) {
                            formatString = LocaleController.formatString("NotificationMessageGroupQuiz2", C3301R.string.NotificationMessageGroupQuiz2, str3, tLRPC$Chat.title, tLRPC$Poll5.question);
                        } else {
                            formatString = LocaleController.formatString("NotificationMessageGroupPoll2", C3301R.string.NotificationMessageGroupPoll2, str3, tLRPC$Chat.title, tLRPC$Poll5.question);
                        }
                    } else if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGame) {
                        return LocaleController.formatString("NotificationMessageGroupGame", C3301R.string.NotificationMessageGroupGame, str3, tLRPC$Chat.title, tLRPC$MessageMedia5.game.title);
                    } else {
                        if ((tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaVenue)) {
                            return LocaleController.formatString("NotificationMessageGroupMap", C3301R.string.NotificationMessageGroupMap, str3, tLRPC$Chat.title);
                        }
                        if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGeoLive) {
                            return LocaleController.formatString("NotificationMessageGroupLiveLocation", C3301R.string.NotificationMessageGroupLiveLocation, str3, tLRPC$Chat.title);
                        }
                        if (!(tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaDocument)) {
                            return (z || TextUtils.isEmpty(messageObject.messageText)) ? LocaleController.formatString(str10, C3301R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, messageObject.messageText);
                        } else if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                            String stickerEmoji5 = messageObject.getStickerEmoji();
                            if (stickerEmoji5 != null) {
                                formatString = LocaleController.formatString("NotificationMessageGroupStickerEmoji", C3301R.string.NotificationMessageGroupStickerEmoji, str3, tLRPC$Chat.title, stickerEmoji5);
                            } else {
                                formatString = LocaleController.formatString("NotificationMessageGroupSticker", C3301R.string.NotificationMessageGroupSticker, str3, tLRPC$Chat.title);
                            }
                        } else if (messageObject.isGif()) {
                            if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString("NotificationMessageGroupGif", C3301R.string.NotificationMessageGroupGif, str3, tLRPC$Chat.title);
                            }
                            return LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "🎬 " + messageObject.messageOwner.message);
                        } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString("NotificationMessageGroupDocument", C3301R.string.NotificationMessageGroupDocument, str3, tLRPC$Chat.title);
                        } else {
                            return LocaleController.formatString("NotificationMessageGroupText", C3301R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "📎 " + messageObject.messageOwner.message);
                        }
                    }
                }
            }
        }
        return formatString;
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
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C3301R.C3306raw.sound_in, 1);
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

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5 A[Catch: Exception -> 0x0154, TryCatch #0 {Exception -> 0x0154, blocks: (B:9:0x0021, B:12:0x0061, B:14:0x006b, B:18:0x007b, B:20:0x00a4, B:22:0x00b4, B:24:0x00be, B:26:0x00f5, B:28:0x00fe, B:30:0x0107, B:38:0x0126, B:42:0x013d, B:32:0x010e, B:34:0x0114, B:36:0x0119, B:35:0x0117, B:37:0x011e, B:27:0x00fa, B:17:0x0077, B:13:0x0066), top: B:47:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fa A[Catch: Exception -> 0x0154, TryCatch #0 {Exception -> 0x0154, blocks: (B:9:0x0021, B:12:0x0061, B:14:0x006b, B:18:0x007b, B:20:0x00a4, B:22:0x00b4, B:24:0x00be, B:26:0x00f5, B:28:0x00fe, B:30:0x0107, B:38:0x0126, B:42:0x013d, B:32:0x010e, B:34:0x0114, B:36:0x0119, B:35:0x0117, B:37:0x011e, B:27:0x00fa, B:17:0x0077, B:13:0x0066), top: B:47:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0107 A[Catch: Exception -> 0x0154, TryCatch #0 {Exception -> 0x0154, blocks: (B:9:0x0021, B:12:0x0061, B:14:0x006b, B:18:0x007b, B:20:0x00a4, B:22:0x00b4, B:24:0x00be, B:26:0x00f5, B:28:0x00fe, B:30:0x0107, B:38:0x0126, B:42:0x013d, B:32:0x010e, B:34:0x0114, B:36:0x0119, B:35:0x0117, B:37:0x011e, B:27:0x00fa, B:17:0x0077, B:13:0x0066), top: B:47:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String createNotificationShortcut(androidx.core.app.NotificationCompat.Builder r17, long r18, java.lang.String r20, org.telegram.tgnet.TLRPC$User r21, org.telegram.tgnet.TLRPC$Chat r22, androidx.core.app.Person r23) {
        /*
            Method dump skipped, instructions count: 345
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
                arrayList.add(new NotificationChannelGroup(str2, LocaleController.getString("NotificationsChannels", C3301R.string.NotificationsChannels) + str6));
            }
            if (str3 != null) {
                arrayList.add(new NotificationChannelGroup(str3, LocaleController.getString("NotificationsGroups", C3301R.string.NotificationsGroups) + str6));
            }
            if (str5 != null) {
                arrayList.add(new NotificationChannelGroup(str5, LocaleController.getString("NotificationsPrivateChats", C3301R.string.NotificationsPrivateChats) + str6));
            }
            if (str4 != null) {
                arrayList.add(new NotificationChannelGroup(str4, LocaleController.getString("NotificationsOther", C3301R.string.NotificationsOther) + str6));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x0407 A[LOOP:1: B:189:0x0404->B:191:0x0407, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0466  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String validateChannelId(long r26, int r28, java.lang.String r29, long[] r30, int r31, android.net.Uri r32, int r33, boolean r34, boolean r35, boolean r36, int r37) {
        /*
            Method dump skipped, instructions count: 1358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.validateChannelId(long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:381:0x08c2, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 26) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0164, code lost:
        if (r20 == 0) goto L465;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0166, code lost:
        r3 = org.telegram.messenger.LocaleController.getString("NotificationHiddenChatName", org.telegram.messenger.C3301R.string.NotificationHiddenChatName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x016f, code lost:
        r3 = org.telegram.messenger.LocaleController.getString("NotificationHiddenName", org.telegram.messenger.C3301R.string.NotificationHiddenName);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01cc A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01e8 A[Catch: Exception -> 0x0b82, TRY_ENTER, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0207 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0259 A[Catch: Exception -> 0x0b82, TRY_ENTER, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02cc A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0385 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0457 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04a5 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x061b A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x062b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0632 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x063f  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x064a A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x06c1 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0754 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x07e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0830 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0882  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x09c4 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x09ce  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x09d5 A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x09e3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014a A[Catch: Exception -> 0x0b82, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018c A[Catch: Exception -> 0x0b82, TRY_ENTER, TryCatch #4 {Exception -> 0x0b82, blocks: (B:13:0x002c, B:15:0x0050, B:17:0x0054, B:19:0x0062, B:21:0x0066, B:23:0x007a, B:25:0x0080, B:29:0x0094, B:33:0x00a2, B:35:0x00ae, B:36:0x00b4, B:38:0x00c4, B:40:0x00d2, B:42:0x00d8, B:51:0x00f5, B:53:0x0101, B:62:0x011e, B:64:0x0124, B:69:0x0134, B:71:0x013c, B:76:0x0144, B:78:0x014a, B:90:0x0181, B:93:0x018c, B:95:0x0194, B:98:0x01c1, B:100:0x01cc, B:109:0x0243, B:112:0x0259, B:117:0x0276, B:123:0x02b8, B:149:0x0387, B:161:0x03a2, B:163:0x03be, B:166:0x03f2, B:168:0x03fc, B:179:0x0457, B:184:0x047c, B:188:0x048b, B:190:0x04a5, B:192:0x04db, B:194:0x0503, B:196:0x0511, B:202:0x0532, B:204:0x053c, B:206:0x0551, B:225:0x0615, B:227:0x061b, B:236:0x0632, B:238:0x0638, B:246:0x064a, B:249:0x0654, B:252:0x065d, B:269:0x0685, B:272:0x068e, B:274:0x06c1, B:277:0x06cc, B:282:0x06e8, B:284:0x06ee, B:287:0x06f4, B:289:0x06fd, B:292:0x0705, B:294:0x0709, B:296:0x070d, B:298:0x0715, B:322:0x0776, B:325:0x07e5, B:327:0x07e9, B:329:0x07ef, B:337:0x0830, B:339:0x083d, B:359:0x0889, B:388:0x08ce, B:397:0x090d, B:399:0x0915, B:401:0x0919, B:403:0x0921, B:407:0x092a, B:425:0x09c4, B:429:0x09d5, B:446:0x0a3d, B:448:0x0a43, B:450:0x0a47, B:452:0x0a52, B:454:0x0a58, B:456:0x0a63, B:458:0x0a72, B:460:0x0a7e, B:462:0x0a9f, B:463:0x0aa4, B:465:0x0ad3, B:466:0x0ae5, B:470:0x0b10, B:472:0x0b16, B:474:0x0b1e, B:476:0x0b24, B:478:0x0b36, B:479:0x0b4d, B:480:0x0b63, B:432:0x09e6, B:440:0x0a0a, B:442:0x0a1e, B:408:0x0954, B:409:0x0959, B:410:0x095c, B:412:0x0962, B:415:0x096c, B:417:0x0974, B:421:0x09b2, B:422:0x09ba, B:391:0x08d8, B:393:0x08e0, B:395:0x0908, B:445:0x0a2a, B:377:0x08b3, B:369:0x089d, B:373:0x08a9, B:380:0x08bc, B:304:0x072e, B:306:0x0732, B:308:0x0736, B:310:0x073e, B:280:0x06de, B:316:0x0754, B:318:0x0761, B:320:0x076c, B:205:0x0549, B:207:0x0574, B:209:0x0580, B:211:0x0595, B:210:0x058d, B:214:0x05bc, B:216:0x05c6, B:218:0x05db, B:217:0x05d3, B:193:0x04ed, B:169:0x0414, B:171:0x0427, B:172:0x0433, B:174:0x0437, B:118:0x028a, B:120:0x028f, B:121:0x02a3, B:124:0x02cc, B:126:0x02f0, B:128:0x0308, B:133:0x0312, B:134:0x0318, B:138:0x0325, B:139:0x0339, B:141:0x033e, B:142:0x0352, B:143:0x0365, B:145:0x036d, B:146:0x0376, B:104:0x01db, B:107:0x01e8, B:108:0x0207, B:96:0x01a1, B:86:0x0166, B:87:0x016f, B:88:0x0178, B:67:0x012d, B:68:0x0130, B:43:0x00db, B:45:0x00e1, B:28:0x0092, B:331:0x0807, B:262:0x0676, B:419:0x097e), top: B:494:0x002c, inners: #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c0  */
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
            Method dump skipped, instructions count: 2956
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
        String string = LocaleController.getString("DefaultRingtone", C3301R.string.DefaultRingtone);
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

    /* JADX WARN: Can't wrap try/catch for region: R(68:68|(2:70|(1:72)(5:476|(1:478)|479|480|481))(3:482|(1:492)(2:486|(59:490|74|(1:76)(2:473|(1:475))|77|78|(3:80|(1:82)(1:471)|83)(1:472)|(3:85|(2:87|(1:89)(3:458|459|(3:461|(1:463)(1:465)|464)))(1:469)|466)(1:470)|(3:91|(1:97)|98)(1:457)|99|(3:452|(1:454)(1:456)|455)(1:102)|103|(1:105)|106|(1:444)(1:110)|111|(3:114|(1:116)|(3:118|119|(41:123|124|125|(4:129|130|131|132)|137|(1:437)(1:140)|141|(1:436)|148|(1:435)(1:155)|156|(7:159|(1:161)(3:166|(1:168)(2:343|(1:347))|(3:170|(1:172)|173)(22:174|(1:176)|177|(2:339|(1:341)(1:342))(1:183)|184|(12:(1:187)(2:335|(1:337))|188|(3:(2:191|(2:(2:194|(1:196))(1:328)|197)(3:329|(1:331)|332))|333|332)(1:334)|(3:298|(1:327)(3:304|(1:326)(4:307|(1:311)|(1:325)(1:321)|322)|323)|324)(1:201)|202|203|(6:205|(1:296)(7:218|(1:295)(3:222|(12:271|272|273|274|275|276|277|278|279|280|281|282)(1:224)|225)|226|(1:228)(1:270)|229|(2:265|266)(3:231|(1:233)|264)|(6:235|(1:237)|238|(1:240)|241|(2:246|(3:248|(2:253|254)(1:250)|(1:252)))))|263|(0)|241|(3:244|246|(0)))(1:297)|257|(3:261|262|165)|163|164|165)|338|188|(0)(0)|(1:199)|298|(1:300)|327|324|202|203|(0)(0)|257|(4:259|261|262|165)|163|164|165))|162|163|164|165|157)|348|349|(1:351)(2:431|(1:433)(1:434))|352|(1:354)|355|(1:357)|358|(2:360|(1:362)(1:426))(2:427|(1:429)(1:430))|(1:364)(1:425)|365|366|367|(1:369)|(1:371)|(1:373)|374|(1:421)(1:378)|379|(1:381)|(1:383)|384|(3:389|(4:391|(3:393|(4:395|(1:397)|398|399)(2:401|402)|400)|403|404)|405)|406|(1:420)(2:409|(1:413))|414|(1:416)|417|418)))|443|137|(0)|437|141|(1:143)|436|148|(1:151)|435|156|(1:157)|348|349|(0)(0)|352|(0)|355|(0)|358|(0)(0)|(0)(0)|365|366|367|(0)|(0)|(0)|374|(1:376)|421|379|(0)|(0)|384|(4:386|389|(0)|405)|406|(0)|420|414|(0)|417|418))|491)|73|74|(0)(0)|77|78|(0)(0)|(0)(0)|(0)(0)|99|(0)|446|448|450|452|(0)(0)|455|103|(0)|106|(1:108)|444|111|(3:114|(0)|(0))|443|137|(0)|437|141|(0)|436|148|(0)|435|156|(1:157)|348|349|(0)(0)|352|(0)|355|(0)|358|(0)(0)|(0)(0)|365|366|367|(0)|(0)|(0)|374|(0)|421|379|(0)|(0)|384|(0)|406|(0)|420|414|(0)|417|418) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02c7, code lost:
        if (r9.local_id != 0) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0ca6, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0ca7, code lost:
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
    /* JADX WARN: Removed duplicated region for block: B:302:0x0722  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0759  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0808  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0910  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0913  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x093d  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0993  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x09cd  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x09dc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:427:0x09ee  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0a34  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0a49  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0ab2  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0abc  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0aed  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b0b  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0b63  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0b9a  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x0bbf  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0be2  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0cac  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0cb7  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0cbc  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0cc6  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0cda  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0cdf  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0ceb  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0cf8  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0d7f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0db0  */
    /* JADX WARN: Removed duplicated region for block: B:580:0x091c A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
        int f1443id;
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
            this.f1443id = i;
            this.name = str;
            this.user = tLRPC$User;
            this.chat = tLRPC$Chat;
            this.notification = builder;
            this.dialogId = j;
            this.topicId = i2;
        }

        void call() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m43w("show dialog notification with id " + this.f1443id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.f1443id, this.notification.build());
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
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C3301R.C3306raw.sound_out, 1);
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
            tLRPC$TL_notificationSoundRingtone.f1613id = j2;
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
            tLRPC$TL_notificationSoundRingtone.f1613id = j;
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
            r1 = r2
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
