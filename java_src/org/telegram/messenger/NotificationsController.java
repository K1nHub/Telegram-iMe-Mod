package org.telegram.messenger;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.PostProcessor;
import android.graphics.Rect;
import android.graphics.Shader;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Pair;
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
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.spoilers.SpoilerEffect;
import org.telegram.p043ui.PopupNotificationActivity;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$NotificationSound;
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
import org.telegram.tgnet.TLRPC$TL_messageActionSetChatWallPaper;
import org.telegram.tgnet.TLRPC$TL_messageActionSetMessagesTTL;
import org.telegram.tgnet.TLRPC$TL_messageActionSetSameChatWallPaper;
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
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import p033j$.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.ToLongFunction;
/* loaded from: classes6.dex */
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
    public static final int TYPE_STORIES = 3;
    protected static AudioManager audioManager;
    private static final Object[] lockObjects;
    private static NotificationManagerCompat notificationManager;
    private static final LongSparseArray<String> sharedPrefCachedKeys;
    private static NotificationManager systemNotificationManager;
    private AlarmManager alarmManager;
    private boolean channelGroupsCreated;
    private Runnable checkStoryPushesRunnable;
    private final ArrayList<MessageObject> delayedPushMessages;
    NotificationsSettingsFacade dialogsNotificationsFacade;
    private final LongSparseArray<MessageObject> fcmRandomMessagesDict;
    private Boolean groupsCreated;
    private boolean inChatSoundEnabled;
    private int lastBadgeCount;
    private int lastButtonId;
    public long lastNotificationChannelCreateTime;
    private int lastOnlineFromOtherDevice;
    private long lastSoundOutPlay;
    private long lastSoundPlay;
    private final LongSparseArray<Integer> lastWearNotifiedMessageId;
    private String launcherClassName;
    private SpoilerEffect mediaSpoilerEffect;
    private Runnable notificationDelayRunnable;
    private PowerManager.WakeLock notificationDelayWakelock;
    private String notificationGroup;
    private int notificationId;
    private boolean notifyCheck;
    private long openedDialogId;
    private final HashSet<Long> openedInBubbleDialogs;
    private int openedTopicId;
    private int personalCount;
    public final ArrayList<MessageObject> popupMessages;
    public ArrayList<MessageObject> popupReplyMessages;
    private final LongSparseArray<Integer> pushDialogs;
    private final LongSparseArray<Integer> pushDialogsOverrideMention;
    private final ArrayList<MessageObject> pushMessages;
    private final LongSparseArray<SparseArray<MessageObject>> pushMessagesDict;
    public boolean showBadgeMessages;
    public boolean showBadgeMuted;
    public boolean showBadgeNumber;
    private final LongSparseArray<Point> smartNotificationsDialogs;
    private int soundIn;
    private boolean soundInLoaded;
    private int soundOut;
    private boolean soundOutLoaded;
    private SoundPool soundPool;
    private int soundRecord;
    private boolean soundRecordLoaded;
    char[] spoilerChars;
    private final ArrayList<StoryNotification> storyPushMessages;
    private final LongSparseArray<StoryNotification> storyPushMessagesDict;
    private int total_unread_count;
    private final LongSparseArray<Integer> wearNotificationsIds;
    private static final DispatchQueue notificationsQueue = new DispatchQueue("notificationsQueue");
    public static long globalSecretChatId = DialogObject.makeEncryptedDialogId(1);

    public static String getGlobalNotificationsKey(int i) {
        return i == 0 ? "EnableGroup2" : i == 1 ? "EnableAll2" : "EnableChannel2";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$46(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
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
        sharedPrefCachedKeys = new LongSparseArray<>();
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
        this.storyPushMessages = new ArrayList<>();
        this.storyPushMessagesDict = new LongSparseArray<>();
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
        this.checkStoryPushesRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.checkStoryPushes();
            }
        };
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
            FileLog.m67e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
        try {
            PowerManager.WakeLock newWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.m67e(e3);
        }
        this.notificationDelayRunnable = new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda12
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
            FileLog.m70d("delay reached");
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
            FileLog.m67e(e);
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
                FileLog.m67e(e);
            }
        }
    }

    public static String getSharedPrefKey(long j, int i) {
        String valueOf;
        long j2 = (i << 12) + j;
        LongSparseArray<String> longSparseArray = sharedPrefCachedKeys;
        String str = longSparseArray.get(j2);
        if (str != null) {
            return str;
        }
        if (i != 0) {
            valueOf = String.format(Locale.US, "%d_%d", Long.valueOf(j), Integer.valueOf(i));
        } else {
            valueOf = String.valueOf(j);
        }
        longSparseArray.put(j2, valueOf);
        return valueOf;
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda13
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
            FileLog.m67e(e);
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
                systemNotificationManager.deleteNotificationChannelGroup("stories" + this.currentAccount);
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
                            FileLog.m67e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m70d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m67e(th);
            }
        }
    }

    public void setInChatSoundEnabled(boolean z) {
        this.inChatSoundEnabled = z;
    }

    public void setOpenedDialogId(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda28
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda44
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$setLastOnlineFromOtherDevice$4(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastOnlineFromOtherDevice$4(int i) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m70d("set last online from other device = " + i);
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda11
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda36
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda32
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda34
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda19
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
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedMessagesFromNotifications$8(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void removeDeletedHisoryFromNotifications(final LongSparseIntArray longSparseIntArray) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda42
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda35
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda22
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
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeDeletedHisoryFromNotifications$11(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processDeleteStory(final long j, final int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processDeleteStory$13(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processDeleteStory$13(long r4, int r6) {
        /*
            r3 = this;
            androidx.collection.LongSparseArray<org.telegram.messenger.NotificationsController$StoryNotification> r0 = r3.storyPushMessagesDict
            java.lang.Object r0 = r0.get(r4)
            org.telegram.messenger.NotificationsController$StoryNotification r0 = (org.telegram.messenger.NotificationsController.StoryNotification) r0
            r1 = 0
            if (r0 == 0) goto L36
            java.util.HashMap<java.lang.Integer, android.util.Pair<java.lang.Long, java.lang.Long>> r2 = r0.dateByIds
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r2.remove(r6)
            java.util.HashMap<java.lang.Integer, android.util.Pair<java.lang.Long, java.lang.Long>> r6 = r0.dateByIds
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto L2f
            androidx.collection.LongSparseArray<org.telegram.messenger.NotificationsController$StoryNotification> r6 = r3.storyPushMessagesDict
            r6.remove(r4)
            java.util.ArrayList<org.telegram.messenger.NotificationsController$StoryNotification> r6 = r3.storyPushMessages
            r6.remove(r0)
            r6 = 1
            org.telegram.messenger.MessagesStorage r0 = r3.getMessagesStorage()
            r0.deleteStoryPushMessage(r4)
            goto L37
        L2f:
            org.telegram.messenger.MessagesStorage r4 = r3.getMessagesStorage()
            r4.putStoryPushMessage(r0)
        L36:
            r6 = r1
        L37:
            if (r6 == 0) goto L3c
            r3.showOrUpdateNotification(r1)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processDeleteStory$13(long, int):void");
    }

    public void processReadStories(final long j, int i) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processReadStories$14(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadStories$14(long j) {
        boolean z;
        StoryNotification storyNotification = this.storyPushMessagesDict.get(j);
        if (storyNotification != null) {
            this.storyPushMessagesDict.remove(j);
            this.storyPushMessages.remove(storyNotification);
            z = true;
            getMessagesStorage().deleteStoryPushMessage(j);
        } else {
            z = false;
        }
        if (z) {
            showOrUpdateNotification(false);
            updateStoryPushesRunnable();
        }
    }

    public void processIgnoreStories() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processIgnoreStories$15();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$15() {
        boolean z = !this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteAllStoryPushMessages();
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processIgnoreStories(final long j) {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processIgnoreStories$16(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIgnoreStories$16(long j) {
        boolean z = !this.storyPushMessages.isEmpty();
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
        getMessagesStorage().deleteStoryPushMessage(j);
        if (z) {
            showOrUpdateNotification(false);
        }
    }

    public void processReadMessages(final LongSparseIntArray longSparseIntArray, final long j, final int i, final int i2, final boolean z) {
        final ArrayList arrayList = new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processReadMessages$18(longSparseIntArray, arrayList, j, i2, i, z);
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
    public /* synthetic */ void lambda$processReadMessages$18(org.telegram.messenger.support.LongSparseIntArray r19, final java.util.ArrayList r20, long r21, int r23, int r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processReadMessages$18(org.telegram.messenger.support.LongSparseIntArray, java.util.ArrayList, long, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processReadMessages$17(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        if (r0 == 2) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int addToPopupMessages(java.util.ArrayList<org.telegram.messenger.MessageObject> r4, org.telegram.messenger.MessageObject r5, long r6, boolean r8, android.content.SharedPreferences r9) {
        /*
            r3 = this;
            boolean r0 = org.telegram.messenger.DialogObject.isEncryptedDialog(r6)
            r1 = 0
            if (r0 != 0) goto L5c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "custom_"
            r0.append(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            boolean r0 = r9.getBoolean(r0, r1)
            if (r0 == 0) goto L35
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "popup_"
            r0.append(r2)
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            int r0 = r9.getInt(r0, r1)
            goto L36
        L35:
            r0 = r1
        L36:
            if (r0 != 0) goto L54
            if (r8 == 0) goto L42
            java.lang.String r6 = "popupChannel"
            int r0 = r9.getInt(r6, r1)
            goto L5d
        L42:
            boolean r6 = org.telegram.messenger.DialogObject.isChatDialog(r6)
            if (r6 == 0) goto L4c
            java.lang.String r6 = "popupGroup"
            goto L4f
        L4c:
            java.lang.String r6 = "popupAll"
        L4f:
            int r0 = r9.getInt(r6, r1)
            goto L5d
        L54:
            r6 = 1
            if (r0 != r6) goto L59
            r0 = 3
            goto L5d
        L59:
            r6 = 2
            if (r0 != r6) goto L5d
        L5c:
            r0 = r1
        L5d:
            if (r0 == 0) goto L72
            org.telegram.tgnet.TLRPC$Message r6 = r5.messageOwner
            org.telegram.tgnet.TLRPC$Peer r6 = r6.peer_id
            long r6 = r6.channel_id
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 == 0) goto L72
            boolean r6 = r5.isSupergroup()
            if (r6 != 0) goto L72
            r0 = r1
        L72:
            if (r0 == 0) goto L77
            r4.add(r1, r5)
        L77:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.addToPopupMessages(java.util.ArrayList, org.telegram.messenger.MessageObject, long, boolean, android.content.SharedPreferences):int");
    }

    public void processEditedMessages(final LongSparseArray<ArrayList<MessageObject>> longSparseArray) {
        if (longSparseArray.size() == 0) {
            return;
        }
        new ArrayList(0);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processEditedMessages$19(longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processEditedMessages$19(LongSparseArray longSparseArray) {
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
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$processNewMessages$23(arrayList, arrayList2, z2, z, countDownLatch);
                }
            });
        } else if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        if ((r5 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processNewMessages$23(java.util.ArrayList r36, final java.util.ArrayList r37, boolean r38, boolean r39, java.util.concurrent.CountDownLatch r40) {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processNewMessages$23(java.util.ArrayList, java.util.ArrayList, boolean, boolean, java.util.concurrent.CountDownLatch):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processNewMessages$21(ArrayList arrayList, int i) {
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
    public /* synthetic */ void lambda$processNewMessages$22(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    private void appendMessage(MessageObject messageObject) {
        for (int i = 0; i < this.pushMessages.size(); i++) {
            if (this.pushMessages.get(i).getId() == messageObject.getId() && this.pushMessages.get(i).getDialogId() == messageObject.getDialogId() && this.pushMessages.get(i).isStoryPush == messageObject.isStoryPush) {
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
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processDialogsUpdateRead$26(longSparseIntArray, arrayList);
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
    public /* synthetic */ void lambda$processDialogsUpdateRead$26(org.telegram.messenger.support.LongSparseIntArray r18, final java.util.ArrayList r19) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processDialogsUpdateRead$26(org.telegram.messenger.support.LongSparseIntArray, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$24(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.popupMessages.remove(arrayList.get(i));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDialogsUpdateRead$25(int i) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
    }

    public void processLoadedUnreadMessages(final LongSparseArray<Integer> longSparseArray, final ArrayList<TLRPC$Message> arrayList, final ArrayList<MessageObject> arrayList2, ArrayList<TLRPC$User> arrayList3, ArrayList<TLRPC$Chat> arrayList4, ArrayList<TLRPC$EncryptedChat> arrayList5, final Collection<StoryNotification> collection) {
        getMessagesController().putUsers(arrayList3, true);
        getMessagesController().putChats(arrayList4, true);
        getMessagesController().putEncryptedChats(arrayList5, true);
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processLoadedUnreadMessages$29(arrayList, longSparseArray, arrayList2, collection);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$29(ArrayList arrayList, LongSparseArray longSparseArray, ArrayList arrayList2, Collection collection) {
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
        this.storyPushMessages.clear();
        this.storyPushMessagesDict.clear();
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
                        if (sparseArray3 == null || sparseArray3.indexOfKey(tLRPC$Message.f1546id) < 0) {
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
                                sparseArray2.put(tLRPC$Message.f1546id, messageObject);
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
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                StoryNotification storyNotification = (StoryNotification) it.next();
                long j8 = storyNotification.dialogId;
                StoryNotification storyNotification2 = this.storyPushMessagesDict.get(j8);
                if (storyNotification2 != null) {
                    storyNotification2.dateByIds.putAll(storyNotification.dateByIds);
                } else {
                    this.storyPushMessages.add(storyNotification);
                    this.storyPushMessagesDict.put(j8, storyNotification);
                }
            }
            Collections.sort(this.storyPushMessages, Comparator.CC.comparingLong(new ToLongFunction() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda46
                @Override // p033j$.util.function.ToLongFunction
                public final long applyAsLong(Object obj) {
                    long j9;
                    j9 = ((NotificationsController.StoryNotification) obj).date;
                    return j9;
                }
            }));
        }
        final int size = this.pushDialogs.size();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$processLoadedUnreadMessages$28(size);
            }
        });
        showOrUpdateNotification(SystemClock.elapsedRealtime() / 1000 < 60);
        if (this.showBadgeNumber) {
            setBadge(getTotalAllUnreadCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processLoadedUnreadMessages$28(int i) {
        if (this.total_unread_count == 0) {
            this.popupMessages.clear();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsCountUpdated, Integer.valueOf(this.currentAccount));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsUnreadCounterChanged, Integer.valueOf(i));
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
                                    if ((tLRPC$Dialog == null || !DialogObject.isChatDialog(tLRPC$Dialog.f1528id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog.f1528id)))) && tLRPC$Dialog != null) {
                                        i += MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m67e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                        }
                    } else if (notificationsController.showBadgeMuted) {
                        try {
                            int size3 = MessagesController.getInstance(i2).allDialogs.size();
                            for (int i4 = 0; i4 < size3; i4++) {
                                TLRPC$Dialog tLRPC$Dialog2 = MessagesController.getInstance(i2).allDialogs.get(i4);
                                if ((!DialogObject.isChatDialog(tLRPC$Dialog2.f1528id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog2.f1528id)))) && MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog2) != 0) {
                                    i++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m66e((Throwable) e2, false);
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
    public /* synthetic */ void lambda$updateBadge$30() {
        setBadge(getTotalAllUnreadCount());
    }

    public void updateBadge() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$updateBadge$30();
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
        if (r6.getBoolean(r7, true) == false) goto L789;
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
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L667;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0277, code lost:
        r27[0] = null;
        r6 = r2.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x027e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetSameChatWallPaper) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0288, code lost:
        return org.telegram.messenger.LocaleController.getString("WallpaperSameNotification", org.telegram.messenger.C3473R.string.WallpaperSameNotification);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x028b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatWallPaper) == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0295, code lost:
        return org.telegram.messenger.LocaleController.getString("WallpaperNotification", org.telegram.messenger.C3473R.string.WallpaperNotification);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0298, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02a0, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02a3, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) != false) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02a7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp) == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02ad, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x02bd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactNewPhoto", org.telegram.messenger.C3473R.string.NotificationContactNewPhoto, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02c1, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionLoginUnknownLocation) == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x02c3, code lost:
        r1 = org.telegram.messenger.LocaleController.formatString("formatDateAtTime", org.telegram.messenger.C3473R.string.formatDateAtTime, org.telegram.messenger.LocaleController.getInstance().formatterYear.format(r26.messageOwner.date * 1000), org.telegram.messenger.LocaleController.getInstance().formatterDay.format(r26.messageOwner.date * 1000));
        r2 = org.telegram.messenger.C3473R.string.NotificationUnrecognizedDevice;
        r0 = r26.messageOwner.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x031d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationUnrecognizedDevice", r2, getUserConfig().getCurrentUser().first_name, r1, r0.title, r0.address);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0320, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) != false) goto L663;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0324, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent) == false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x032a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPhoneCall) == false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x032e, code lost:
        if (r6.video == false) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0338, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageVideoIncomingMissed", org.telegram.messenger.C3473R.string.CallMessageVideoIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0341, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageIncomingMissed", org.telegram.messenger.C3473R.string.CallMessageIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0344, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser) == false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0346, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x034c, code lost:
        if (r2 != 0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0355, code lost:
        if (r6.users.size() != 1) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0357, code lost:
        r2 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x036c, code lost:
        if (r2 == 0) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0376, code lost:
        if (r26.messageOwner.peer_id.channel_id == 0) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x037a, code lost:
        if (r5.megagroup != false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x038f, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3473R.string.ChannelAddedByNotification, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0392, code lost:
        if (r2 != r19) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03a7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3473R.string.NotificationInvitedToGroup, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03a8, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x03b4, code lost:
        if (r0 != null) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03b6, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x03bb, code lost:
        if (r9 != r0.f1685id) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03bf, code lost:
        if (r5.megagroup == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x03d4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3473R.string.NotificationGroupAddSelfMega, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x03e8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3473R.string.NotificationGroupAddSelf, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0402, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3473R.string.NotificationGroupAddMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0403, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0413, code lost:
        if (r3 >= r26.messageOwner.action.users.size()) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0415, code lost:
        r4 = getMessagesController().getUser(r26.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0429, code lost:
        if (r4 == null) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x042b, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0433, code lost:
        if (r2.length() == 0) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0435, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x043a, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x043d, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0459, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3473R.string.NotificationGroupAddMember, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x045d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0471, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3473R.string.NotificationGroupCreatedCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0474, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled) == false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x047c, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x047f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall) == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0481, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0487, code lost:
        if (r2 != 0) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x0490, code lost:
        if (r6.users.size() != 1) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0492, code lost:
        r2 = r26.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x04a7, code lost:
        if (r2 == 0) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x04ab, code lost:
        if (r2 != r19) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x04c0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3473R.string.NotificationGroupInvitedYouToCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04c1, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x04cd, code lost:
        if (r0 != null) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04cf, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04e9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3473R.string.NotificationGroupInvitedToCall, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x04ea, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x04fa, code lost:
        if (r3 >= r26.messageOwner.action.users.size()) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x04fc, code lost:
        r4 = getMessagesController().getUser(r26.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0510, code lost:
        if (r4 == null) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0512, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x051a, code lost:
        if (r2.length() == 0) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x051c, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0521, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0524, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0540, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3473R.string.NotificationGroupInvitedToCall, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0544, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0559, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3473R.string.NotificationInvitedToGroupByLink, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x055f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0571, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3473R.string.NotificationEditedGroupName, r1, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0574, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L647;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0578, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x057e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0580, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0584, code lost:
        if (r2 != r19) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0599, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3473R.string.NotificationGroupKickYou, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x059f, code lost:
        if (r2 != r9) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x05b1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3473R.string.NotificationGroupLeftMember, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05b2, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r26.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x05c4, code lost:
        if (r0 != null) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x05c6, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05e1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3473R.string.NotificationGroupKickMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05e4, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05ec, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05ef, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x05f7, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x05fa, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x060c, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3473R.string.ActionMigrateFromGroupNotify, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0611, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0621, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3473R.string.ActionMigrateFromGroupNotify, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0624, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x062c, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x062f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L626;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0635, code lost:
        if (r5 == null) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x063b, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x063f, code lost:
        if (r5.megagroup == false) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0641, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0643, code lost:
        if (r0 != null) goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0658, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0660, code lost:
        if (r0.isMusic() == false) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0672, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3473R.string.NotificationActionPinnedMusic, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0679, code lost:
        if (r0.isVideo() == false) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x067f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0689, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x06b2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3473R.string.NotificationActionPinnedText, r1, "📹 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06c6, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3473R.string.NotificationActionPinnedVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06cb, code lost:
        if (r0.isGif() == false) goto L340;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06d1, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06db, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0704, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3473R.string.NotificationActionPinnedText, r1, "🎬 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0718, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3473R.string.NotificationActionPinnedGif, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0720, code lost:
        if (r0.isVoice() == false) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0732, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3473R.string.NotificationActionPinnedVoice, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0737, code lost:
        if (r0.isRoundVideo() == false) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0749, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3473R.string.NotificationActionPinnedRound, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x074e, code lost:
        if (r0.isSticker() != false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0754, code lost:
        if (r0.isAnimatedSticker() == false) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0758, code lost:
        r4 = r0.messageOwner;
        r7 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x075e, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0764, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x076c, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0795, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3473R.string.NotificationActionPinnedText, r1, "📎 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x07a9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3473R.string.NotificationActionPinnedFile, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x07ac, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x07b0, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x07b6, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x07cb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeoLive, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x07d0, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x07d2, code lost:
        r7 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x07f0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3473R.string.NotificationActionPinnedContact2, r1, r5.title, org.telegram.messenger.ContactsController.formatName(r7.first_name, r7.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x07f3, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x07f5, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r7).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x07fb, code lost:
        if (r0.quiz == false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0815, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3473R.string.NotificationActionPinnedQuiz2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x082e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3473R.string.NotificationActionPinnedPoll2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0831, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0837, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x083f, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x0868, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3473R.string.NotificationActionPinnedText, r1, "🖼 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x087c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3473R.string.NotificationActionPinnedPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0882, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0894, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3473R.string.NotificationActionPinnedGame, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0895, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0897, code lost:
        if (r4 == null) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x089d, code lost:
        if (r4.length() <= 0) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x089f, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x08a5, code lost:
        if (r0.length() <= 20) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x08a7, code lost:
        r4 = new java.lang.StringBuilder();
        r7 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x08bc, code lost:
        r7 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x08bd, code lost:
        r2 = org.telegram.messenger.C3473R.string.NotificationActionPinnedText;
        r3 = new java.lang.Object[3];
        r3[r7] = r1;
        r3[1] = r0;
        r3[2] = r5.title;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x08d0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x08e4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x08f8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x08f9, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x08ff, code lost:
        if (r0 == null) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0915, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3473R.string.NotificationActionPinnedStickerEmoji, r1, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0927, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3473R.string.NotificationActionPinnedSticker, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0929, code lost:
        if (r5 == null) goto L522;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x092b, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x092d, code lost:
        if (r0 != null) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x093e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0944, code lost:
        if (r0.isMusic() == false) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0954, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedMusicChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x095b, code lost:
        if (r0.isVideo() == false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0961, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x096b, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0991, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextChannel, r5.title, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x09a2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedVideoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x09a7, code lost:
        if (r0.isGif() == false) goto L446;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x09ad, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L444;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x09b7, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L444;
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x09dd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextChannel, r5.title, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x09ee, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedGifChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x09f5, code lost:
        if (r0.isVoice() == false) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0a05, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedVoiceChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0a0a, code lost:
        if (r0.isRoundVideo() == false) goto L454;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0a1a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedRoundChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0a1f, code lost:
        if (r0.isSticker() != false) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x0a25, code lost:
        if (r0.isAnimatedSticker() == false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0a29, code lost:
        r1 = r0.messageOwner;
        r6 = r1.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0a2f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0a35, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L466;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0a3d, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L466;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0a63, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextChannel, r5.title, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0a74, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedFileChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0a77, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L514;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0a7b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x0a81, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x0a93, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeoLiveChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0a97, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0a99, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0ab5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3473R.string.NotificationActionPinnedContactChannel2, r5.title, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0ab8, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L488;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x0aba, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0ac0, code lost:
        if (r0.quiz == false) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0ad7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3473R.string.NotificationActionPinnedQuizChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0aed, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3473R.string.NotificationActionPinnedPollChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0af0, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r2) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0af6, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0afe, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0b24, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextChannel, r5.title, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0b35, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedPhotoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0b3a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0b4a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedGameChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0b4b, code lost:
        r1 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0b4d, code lost:
        if (r1 == null) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0b53, code lost:
        if (r1.length() <= 0) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0b55, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0b5b, code lost:
        if (r0.length() <= 20) goto L511;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0b5d, code lost:
        r1 = new java.lang.StringBuilder();
        r6 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0b72, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0b73, code lost:
        r1 = org.telegram.messenger.C3473R.string.NotificationActionPinnedTextChannel;
        r2 = new java.lang.Object[2];
        r2[r6] = r5.title;
        r2[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0b83, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0b94, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0ba5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0ba6, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0bab, code lost:
        if (r0 == null) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0bbf, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedStickerEmojiChannel, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0bcf, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3473R.string.NotificationActionPinnedStickerChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0bd0, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0bd3, code lost:
        if (r0 != null) goto L526;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0be1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x0be6, code lost:
        if (r0.isMusic() == false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0bf4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedMusicUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0bfb, code lost:
        if (r0.isVideo() == false) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0c01, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L538;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0c0b, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L538;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0c2f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextUser, r1, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0c3e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedVideoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0c43, code lost:
        if (r0.isGif() == false) goto L550;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0c49, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0c53, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0c77, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextUser, r1, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0c86, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedGifUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0c8d, code lost:
        if (r0.isVoice() == false) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0c9b, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedVoiceUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0ca0, code lost:
        if (r0.isRoundVideo() == false) goto L558;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0cae, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedRoundUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0cb3, code lost:
        if (r0.isSticker() != false) goto L620;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0cb9, code lost:
        if (r0.isAnimatedSticker() == false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0cbd, code lost:
        r4 = r0.messageOwner;
        r6 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0cc3, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0cc9, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L570;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0cd1, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L570;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x0cf5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextUser, r1, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0d04, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedFileUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x0d07, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L618;
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x0d0b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x0d11, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L580;
     */
    /* JADX WARN: Code restructure failed: missing block: B:610:0x0d21, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeoLiveUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0d25, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L584;
     */
    /* JADX WARN: Code restructure failed: missing block: B:613:0x0d27, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0d41, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedContactUser, r1, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0d44, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L592;
     */
    /* JADX WARN: Code restructure failed: missing block: B:617:0x0d46, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0d4c, code lost:
        if (r0.quiz == false) goto L590;
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0d61, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedQuizUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x0d75, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedPollUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x0d78, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x0d7e, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L600;
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x0d86, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L600;
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x0daa, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedTextUser, r1, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x0db9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedPhotoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0dbe, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L606;
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x0dcc, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedGameUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x0dcd, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x0dcf, code lost:
        if (r4 == null) goto L616;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0dd5, code lost:
        if (r4.length() <= 0) goto L616;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x0dd7, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x0ddd, code lost:
        if (r0.length() <= 20) goto L615;
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x0ddf, code lost:
        r4 = new java.lang.StringBuilder();
        r6 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x0df4, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x0df5, code lost:
        r2 = org.telegram.messenger.C3473R.string.NotificationActionPinnedTextUser;
        r3 = new java.lang.Object[2];
        r3[r6] = r1;
        r3[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0e03, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0e12, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0e21, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedGeoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x0e22, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x0e28, code lost:
        if (r0 == null) goto L624;
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x0e39, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedStickerEmojiUser, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x0e46, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerUser", org.telegram.messenger.C3473R.string.NotificationActionPinnedStickerUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0e49, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L642;
     */
    /* JADX WARN: Code restructure failed: missing block: B:659:0x0e4b, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r6).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x0e53, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L636;
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x0e57, code lost:
        if (r3 != r19) goto L634;
     */
    /* JADX WARN: Code restructure failed: missing block: B:666:0x0e7b, code lost:
        if (r3 != r19) goto L640;
     */
    /* JADX WARN: Code restructure failed: missing block: B:669:0x0e99, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3473R.string.ChatThemeChangedTo, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:671:0x0e9c, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L646;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x0ea4, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:674:0x0ea5, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:676:0x0eae, code lost:
        if (r2.peer_id.channel_id == 0) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:678:0x0eb2, code lost:
        if (r5.megagroup != false) goto L657;
     */
    /* JADX WARN: Code restructure failed: missing block: B:680:0x0eb8, code lost:
        if (r26.isVideoAvatar() == false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x0eca, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3473R.string.ChannelVideoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x0edb, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3473R.string.ChannelPhotoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:686:0x0ee1, code lost:
        if (r26.isVideoAvatar() == false) goto L661;
     */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x0ef5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3473R.string.NotificationEditedGroupVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x0f08, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3473R.string.NotificationEditedGroupPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:692:0x0f0f, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:694:0x0f1e, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactJoined", org.telegram.messenger.C3473R.string.NotificationContactJoined, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:696:0x0f23, code lost:
        if (r26.isMediaEmpty() == false) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:698:0x0f2d, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L673;
     */
    /* JADX WARN: Code restructure failed: missing block: B:700:0x0f33, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:702:0x0f3c, code lost:
        return org.telegram.messenger.LocaleController.getString(r22, org.telegram.messenger.C3473R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:703:0x0f3d, code lost:
        r1 = r22;
        r2 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:704:0x0f45, code lost:
        if ((r2.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L689;
     */
    /* JADX WARN: Code restructure failed: missing block: B:706:0x0f4b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x0f53, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:710:0x0f68, code lost:
        return "🖼 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:712:0x0f6f, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L687;
     */
    /* JADX WARN: Code restructure failed: missing block: B:714:0x0f79, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingPhoto", org.telegram.messenger.C3473R.string.AttachDestructingPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:716:0x0f82, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachPhoto", org.telegram.messenger.C3473R.string.AttachPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:718:0x0f87, code lost:
        if (r26.isVideo() == false) goto L703;
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x0f8d, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:722:0x0f97, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:724:0x0fac, code lost:
        return "📹 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:726:0x0fb3, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L701;
     */
    /* JADX WARN: Code restructure failed: missing block: B:728:0x0fbd, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingVideo", org.telegram.messenger.C3473R.string.AttachDestructingVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:730:0x0fc6, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachVideo", org.telegram.messenger.C3473R.string.AttachVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:732:0x0fcb, code lost:
        if (r26.isGame() == false) goto L707;
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x0fd5, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGame", org.telegram.messenger.C3473R.string.AttachGame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:736:0x0fda, code lost:
        if (r26.isVoice() == false) goto L711;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x0fe4, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachAudio", org.telegram.messenger.C3473R.string.AttachAudio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:740:0x0fe9, code lost:
        if (r26.isRoundVideo() == false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:742:0x0ff3, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachRound", org.telegram.messenger.C3473R.string.AttachRound);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x0ff8, code lost:
        if (r26.isMusic() == false) goto L719;
     */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x1002, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachMusic", org.telegram.messenger.C3473R.string.AttachMusic);
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x1003, code lost:
        r2 = r26.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x1009, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L723;
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x1013, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachContact", org.telegram.messenger.C3473R.string.AttachContact);
     */
    /* JADX WARN: Code restructure failed: missing block: B:752:0x1016, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L731;
     */
    /* JADX WARN: Code restructure failed: missing block: B:754:0x101e, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r2).poll.quiz == false) goto L729;
     */
    /* JADX WARN: Code restructure failed: missing block: B:756:0x1028, code lost:
        return org.telegram.messenger.LocaleController.getString("QuizPoll", org.telegram.messenger.C3473R.string.QuizPoll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:758:0x1031, code lost:
        return org.telegram.messenger.LocaleController.getString("Poll", org.telegram.messenger.C3473R.string.Poll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:760:0x1034, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L787;
     */
    /* JADX WARN: Code restructure failed: missing block: B:762:0x1038, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L735;
     */
    /* JADX WARN: Code restructure failed: missing block: B:765:0x103e, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L739;
     */
    /* JADX WARN: Code restructure failed: missing block: B:767:0x1048, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLiveLocation", org.telegram.messenger.C3473R.string.AttachLiveLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:769:0x104b, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:771:0x1051, code lost:
        if (r26.isSticker() != false) goto L763;
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x1057, code lost:
        if (r26.isAnimatedSticker() == false) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:776:0x105e, code lost:
        if (r26.isGif() == false) goto L755;
     */
    /* JADX WARN: Code restructure failed: missing block: B:778:0x1064, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:780:0x106e, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:782:0x1083, code lost:
        return "🎬 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x108c, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGif", org.telegram.messenger.C3473R.string.AttachGif);
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x1091, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:788:0x109b, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:790:0x10b0, code lost:
        return "📎 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x10b9, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDocument", org.telegram.messenger.C3473R.string.AttachDocument);
     */
    /* JADX WARN: Code restructure failed: missing block: B:793:0x10ba, code lost:
        r0 = r26.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x10be, code lost:
        if (r0 == null) goto L767;
     */
    /* JADX WARN: Code restructure failed: missing block: B:796:0x10dc, code lost:
        return r0 + " " + org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3473R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:798:0x10e5, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3473R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:800:0x10e8, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaStory) == false) goto L781;
     */
    /* JADX WARN: Code restructure failed: missing block: B:802:0x10ee, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaStory) r2).via_mention == false) goto L779;
     */
    /* JADX WARN: Code restructure failed: missing block: B:803:0x10f0, code lost:
        r0 = org.telegram.messenger.C3473R.string.StoryNotificationMention;
        r1 = new java.lang.Object[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x10f8, code lost:
        if (r27[0] != null) goto L778;
     */
    /* JADX WARN: Code restructure failed: missing block: B:805:0x10fa, code lost:
        r3 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:806:0x10fd, code lost:
        r3 = r27[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:807:0x10ff, code lost:
        r1[0] = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x1107, code lost:
        return org.telegram.messenger.LocaleController.formatString("StoryNotificationMention", r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:810:0x1110, code lost:
        return org.telegram.messenger.LocaleController.getString("Story", org.telegram.messenger.C3473R.string.Story);
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:0x1117, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageText) != false) goto L785;
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:0x111d, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:816:0x1124, code lost:
        return org.telegram.messenger.LocaleController.getString(r1, org.telegram.messenger.C3473R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:0x112d, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLocation", org.telegram.messenger.C3473R.string.AttachLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:832:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3473R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3473R.string.ChatThemeDisabled, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:834:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3473R.string.ChatThemeChangedYou, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getShortStringForMessage(org.telegram.messenger.MessageObject r26, java.lang.String[] r27, boolean[] r28) {
        /*
            Method dump skipped, instructions count: 4419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.getShortStringForMessage(org.telegram.messenger.MessageObject, java.lang.String[], boolean[]):java.lang.String");
    }

    private String replaceSpoilers(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message;
        String str;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || (str = tLRPC$Message.message) == null || tLRPC$Message.entities == null) {
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
            return LocaleController.getString("YouHaveNewMessage", C3473R.string.YouHaveNewMessage);
        }
        if (messageObject.isStoryPush || messageObject.isStoryMentionPush) {
            return "!" + messageObject.messageOwner.message;
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
                    return (messageObject.messageOwner.peer_id.channel_id == 0 || messageObject.isSupergroup()) ? LocaleController.formatString("NotificationMessageGroupNoText", C3473R.string.NotificationMessageGroupNoText, messageObject.localUserName, messageObject.localName) : LocaleController.formatString("ChannelMessageNoText", C3473R.string.ChannelMessageNoText, messageObject.localName);
                }
            } else {
                z3 = true;
                if (!z5 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                    if (zArr2 != null) {
                        zArr2[0] = false;
                    }
                    return LocaleController.formatString("NotificationMessageNoText", C3473R.string.NotificationMessageNoText, messageObject.localName);
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
                str3 = LocaleController.getString("MessageScheduledReminderNotification", C3473R.string.MessageScheduledReminderNotification);
            } else {
                str = "NotificationMessageGroupNoText";
                str3 = LocaleController.getString("NotificationMessageScheduledName", C3473R.string.NotificationMessageScheduledName);
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
            return LocaleController.getString("YouHaveNewMessage", C3473R.string.YouHaveNewMessage);
        }
        long j4 = j3;
        if (i3 == 0 && i2 != 0) {
            if (!z5 || !notificationsSettings.getBoolean("EnablePreviewAll", true)) {
                String str4 = str2;
                if (zArr2 != null) {
                    zArr2[0] = false;
                }
                return LocaleController.formatString(str4, C3473R.string.NotificationMessageNoText, str3);
            } else {
                TLRPC$Message tLRPC$Message2 = messageObject.messageOwner;
                if (tLRPC$Message2 instanceof TLRPC$TL_messageService) {
                    TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message2.action;
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetSameChatWallPaper) {
                        return LocaleController.getString("WallpaperSameNotification", C3473R.string.WallpaperSameNotification);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetChatWallPaper) {
                        return LocaleController.getString("WallpaperNotification", C3473R.string.WallpaperNotification);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionGeoProximityReached) {
                        return messageObject.messageText.toString();
                    }
                    if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserJoined) || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionContactSignUp)) {
                        return LocaleController.formatString("NotificationContactJoined", C3473R.string.NotificationContactJoined, str3);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionUserUpdatedPhoto) {
                        return LocaleController.formatString("NotificationContactNewPhoto", C3473R.string.NotificationContactNewPhoto, str3);
                    }
                    if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionLoginUnknownLocation) {
                        String formatString3 = LocaleController.formatString("formatDateAtTime", C3473R.string.formatDateAtTime, LocaleController.getInstance().formatterYear.format(messageObject.messageOwner.date * 1000), LocaleController.getInstance().formatterDay.format(messageObject.messageOwner.date * 1000));
                        int i4 = C3473R.string.NotificationUnrecognizedDevice;
                        TLRPC$MessageAction tLRPC$MessageAction2 = messageObject.messageOwner.action;
                        return LocaleController.formatString("NotificationUnrecognizedDevice", i4, getUserConfig().getCurrentUser().first_name, formatString3, tLRPC$MessageAction2.title, tLRPC$MessageAction2.address);
                    } else if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionGameScore) || (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPaymentSent)) {
                        return messageObject.messageText.toString();
                    } else {
                        if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionPhoneCall) {
                            if (tLRPC$MessageAction.video) {
                                return LocaleController.getString("CallMessageVideoIncomingMissed", C3473R.string.CallMessageVideoIncomingMissed);
                            }
                            return LocaleController.getString("CallMessageIncomingMissed", C3473R.string.CallMessageIncomingMissed);
                        } else if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionSetChatTheme) {
                            String str5 = ((TLRPC$TL_messageActionSetChatTheme) tLRPC$MessageAction).emoticon;
                            if (!TextUtils.isEmpty(str5)) {
                                c3 = 0;
                                z2 = true;
                                if (j == clientUserId) {
                                    formatString2 = LocaleController.formatString("ChangedChatThemeYou", C3473R.string.ChatThemeChangedYou, str5);
                                } else {
                                    formatString2 = LocaleController.formatString("ChangedChatThemeTo", C3473R.string.ChatThemeChangedTo, str3, str5);
                                }
                            } else if (j == clientUserId) {
                                c3 = 0;
                                formatString2 = LocaleController.formatString("ChatThemeDisabledYou", C3473R.string.ChatThemeDisabledYou, new Object[0]);
                                z2 = true;
                            } else {
                                c3 = 0;
                                z2 = true;
                                formatString2 = LocaleController.formatString("ChatThemeDisabled", C3473R.string.ChatThemeDisabled, str3, str5);
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
                        String formatString4 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString4;
                    }
                    return LocaleController.formatString(str2, C3473R.string.NotificationMessageNoText, str3);
                } else {
                    String str7 = str2;
                    TLRPC$Message tLRPC$Message3 = messageObject.messageOwner;
                    if (tLRPC$Message3.media instanceof TLRPC$TL_messageMediaPhoto) {
                        if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message3.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString("NotificationMessageSDPhoto", C3473R.string.NotificationMessageSDPhoto, str3) : LocaleController.formatString("NotificationMessagePhoto", C3473R.string.NotificationMessagePhoto, str3);
                        }
                        String formatString5 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "🖼 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString5;
                    } else if (messageObject.isVideo()) {
                        if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return messageObject.messageOwner.media.ttl_seconds != 0 ? LocaleController.formatString("NotificationMessageSDVideo", C3473R.string.NotificationMessageSDVideo, str3) : LocaleController.formatString("NotificationMessageVideo", C3473R.string.NotificationMessageVideo, str3);
                        }
                        String formatString6 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "📹 " + messageObject.messageOwner.message);
                        zArr[0] = true;
                        return formatString6;
                    } else if (messageObject.isGame()) {
                        return LocaleController.formatString("NotificationMessageGame", C3473R.string.NotificationMessageGame, str3, messageObject.messageOwner.media.game.title);
                    } else {
                        if (messageObject.isVoice()) {
                            return LocaleController.formatString("NotificationMessageAudio", C3473R.string.NotificationMessageAudio, str3);
                        }
                        if (messageObject.isRoundVideo()) {
                            return LocaleController.formatString("NotificationMessageRound", C3473R.string.NotificationMessageRound, str3);
                        }
                        if (messageObject.isMusic()) {
                            return LocaleController.formatString("NotificationMessageMusic", C3473R.string.NotificationMessageMusic, str3);
                        }
                        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
                        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaContact) {
                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia;
                            return LocaleController.formatString("NotificationMessageContact2", C3473R.string.NotificationMessageContact2, str3, ContactsController.formatName(tLRPC$TL_messageMediaContact.first_name, tLRPC$TL_messageMediaContact.last_name));
                        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPoll) {
                            TLRPC$Poll tLRPC$Poll = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia).poll;
                            if (tLRPC$Poll.quiz) {
                                formatString = LocaleController.formatString("NotificationMessageQuiz2", C3473R.string.NotificationMessageQuiz2, str3, tLRPC$Poll.question);
                            } else {
                                formatString = LocaleController.formatString("NotificationMessagePoll2", C3473R.string.NotificationMessagePoll2, str3, tLRPC$Poll.question);
                            }
                        } else if ((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaVenue)) {
                            return LocaleController.formatString("NotificationMessageMap", C3473R.string.NotificationMessageMap, str3);
                        } else {
                            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGeoLive) {
                                return LocaleController.formatString("NotificationMessageLiveLocation", C3473R.string.NotificationMessageLiveLocation, str3);
                            }
                            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) {
                                if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                    String stickerEmoji = messageObject.getStickerEmoji();
                                    if (stickerEmoji != null) {
                                        formatString = LocaleController.formatString("NotificationMessageStickerEmoji", C3473R.string.NotificationMessageStickerEmoji, str3, stickerEmoji);
                                    } else {
                                        formatString = LocaleController.formatString("NotificationMessageSticker", C3473R.string.NotificationMessageSticker, str3);
                                    }
                                } else if (messageObject.isGif()) {
                                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                        return LocaleController.formatString("NotificationMessageGif", C3473R.string.NotificationMessageGif, str3);
                                    }
                                    String formatString7 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "🎬 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return formatString7;
                                } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    return LocaleController.formatString("NotificationMessageDocument", C3473R.string.NotificationMessageDocument, str3);
                                } else {
                                    String formatString8 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "📎 " + messageObject.messageOwner.message);
                                    zArr[0] = true;
                                    return formatString8;
                                }
                            } else if (z || TextUtils.isEmpty(messageObject.messageText)) {
                                return LocaleController.formatString(str7, C3473R.string.NotificationMessageNoText, str3);
                            } else {
                                String formatString9 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, messageObject.messageText);
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
                return (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) ? LocaleController.formatString(str8, C3473R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("ChannelMessageNoText", C3473R.string.ChannelMessageNoText, str3);
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
                            formatString = LocaleController.formatString("ChannelAddedByNotification", C3473R.string.ChannelAddedByNotification, str3, tLRPC$Chat.title);
                        } else if (j5 == clientUserId) {
                            formatString = LocaleController.formatString("NotificationInvitedToGroup", C3473R.string.NotificationInvitedToGroup, str3, tLRPC$Chat.title);
                        } else {
                            TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(j5));
                            if (user2 == null) {
                                return null;
                            }
                            if (j4 == user2.f1685id) {
                                if (tLRPC$Chat.megagroup) {
                                    formatString = LocaleController.formatString("NotificationGroupAddSelfMega", C3473R.string.NotificationGroupAddSelfMega, str3, tLRPC$Chat.title);
                                } else {
                                    formatString = LocaleController.formatString("NotificationGroupAddSelf", C3473R.string.NotificationGroupAddSelf, str3, tLRPC$Chat.title);
                                }
                            } else {
                                formatString = LocaleController.formatString("NotificationGroupAddMember", C3473R.string.NotificationGroupAddMember, str3, tLRPC$Chat.title, UserObject.getUserName(user2));
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
                        formatString = LocaleController.formatString("NotificationGroupAddMember", C3473R.string.NotificationGroupAddMember, str3, tLRPC$Chat.title, sb.toString());
                    }
                } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionGroupCall) {
                    return LocaleController.formatString("NotificationGroupCreatedCall", C3473R.string.NotificationGroupCreatedCall, str3, tLRPC$Chat.title);
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
                            formatString = LocaleController.formatString("NotificationGroupInvitedToCall", C3473R.string.NotificationGroupInvitedToCall, str3, tLRPC$Chat.title, sb2.toString());
                        } else if (j6 == clientUserId) {
                            formatString = LocaleController.formatString("NotificationGroupInvitedYouToCall", C3473R.string.NotificationGroupInvitedYouToCall, str3, tLRPC$Chat.title);
                        } else {
                            TLRPC$User user5 = getMessagesController().getUser(Long.valueOf(j6));
                            if (user5 == null) {
                                return null;
                            }
                            formatString = LocaleController.formatString("NotificationGroupInvitedToCall", C3473R.string.NotificationGroupInvitedToCall, str3, tLRPC$Chat.title, UserObject.getUserName(user5));
                        }
                    } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatJoinedByLink) {
                        return LocaleController.formatString("NotificationInvitedToGroupByLink", C3473R.string.NotificationInvitedToGroupByLink, str3, tLRPC$Chat.title);
                    } else {
                        if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatEditTitle) {
                            return LocaleController.formatString("NotificationEditedGroupName", C3473R.string.NotificationEditedGroupName, str3, tLRPC$MessageAction3.title);
                        }
                        if ((tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatEditPhoto) || (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatDeletePhoto)) {
                            return (tLRPC$Message4.peer_id.channel_id == 0 || tLRPC$Chat.megagroup) ? messageObject.isVideoAvatar() ? LocaleController.formatString("NotificationEditedGroupVideo", C3473R.string.NotificationEditedGroupVideo, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationEditedGroupPhoto", C3473R.string.NotificationEditedGroupPhoto, str3, tLRPC$Chat.title) : messageObject.isVideoAvatar() ? LocaleController.formatString("ChannelVideoEditNotification", C3473R.string.ChannelVideoEditNotification, tLRPC$Chat.title) : LocaleController.formatString("ChannelPhotoEditNotification", C3473R.string.ChannelPhotoEditNotification, tLRPC$Chat.title);
                        } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatDeleteUser) {
                            long j7 = tLRPC$MessageAction3.user_id;
                            if (j7 == clientUserId) {
                                return LocaleController.formatString("NotificationGroupKickYou", C3473R.string.NotificationGroupKickYou, str3, tLRPC$Chat.title);
                            }
                            if (j7 == j4) {
                                return LocaleController.formatString("NotificationGroupLeftMember", C3473R.string.NotificationGroupLeftMember, str3, tLRPC$Chat.title);
                            }
                            TLRPC$User user6 = getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.action.user_id));
                            if (user6 == null) {
                                return null;
                            }
                            return LocaleController.formatString("NotificationGroupKickMember", C3473R.string.NotificationGroupKickMember, str3, tLRPC$Chat.title, UserObject.getUserName(user6));
                        } else if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatCreate) {
                            return messageObject.messageText.toString();
                        } else {
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChannelCreate) {
                                return messageObject.messageText.toString();
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChatMigrateTo) {
                                return LocaleController.formatString("ActionMigrateFromGroupNotify", C3473R.string.ActionMigrateFromGroupNotify, tLRPC$Chat.title);
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionChannelMigrateFrom) {
                                return LocaleController.formatString("ActionMigrateFromGroupNotify", C3473R.string.ActionMigrateFromGroupNotify, tLRPC$MessageAction3.title);
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionScreenshotTaken) {
                                return messageObject.messageText.toString();
                            }
                            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionPinMessage) {
                                if (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) {
                                    MessageObject messageObject2 = messageObject.replyMessageObject;
                                    if (messageObject2 == null) {
                                        return LocaleController.formatString("NotificationActionPinnedNoText", C3473R.string.NotificationActionPinnedNoText, str3, tLRPC$Chat.title);
                                    }
                                    if (messageObject2.isMusic()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedMusic", C3473R.string.NotificationActionPinnedMusic, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isVideo()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedText", C3473R.string.NotificationActionPinnedText, str3, "📹 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedVideo", C3473R.string.NotificationActionPinnedVideo, str3, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject2.isGif()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject2.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedText", C3473R.string.NotificationActionPinnedText, str3, "🎬 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGif", C3473R.string.NotificationActionPinnedGif, str3, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject2.isVoice()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedVoice", C3473R.string.NotificationActionPinnedVoice, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isRoundVideo()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedRound", C3473R.string.NotificationActionPinnedRound, str3, tLRPC$Chat.title);
                                    } else if (messageObject2.isSticker() || messageObject2.isAnimatedSticker()) {
                                        String stickerEmoji2 = messageObject2.getStickerEmoji();
                                        if (stickerEmoji2 != null) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerEmoji", C3473R.string.NotificationActionPinnedStickerEmoji, str3, tLRPC$Chat.title, stickerEmoji2);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedSticker", C3473R.string.NotificationActionPinnedSticker, str3, tLRPC$Chat.title);
                                        }
                                    } else {
                                        TLRPC$Message tLRPC$Message5 = messageObject2.messageOwner;
                                        TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$Message5.media;
                                        if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaDocument) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message5.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", C3473R.string.NotificationActionPinnedText, str3, "📎 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedFile", C3473R.string.NotificationActionPinnedFile, str3, tLRPC$Chat.title);
                                            }
                                        } else if ((tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaVenue)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeo", C3473R.string.NotificationActionPinnedGeo, str3, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGeoLive) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoLive", C3473R.string.NotificationActionPinnedGeoLive, str3, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaContact) {
                                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact2 = (TLRPC$TL_messageMediaContact) messageObject.messageOwner.media;
                                            formatString = LocaleController.formatString("NotificationActionPinnedContact2", C3473R.string.NotificationActionPinnedContact2, str3, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact2.first_name, tLRPC$TL_messageMediaContact2.last_name));
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaPoll) {
                                            TLRPC$Poll tLRPC$Poll2 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia2).poll;
                                            if (tLRPC$Poll2.quiz) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedQuiz2", C3473R.string.NotificationActionPinnedQuiz2, str3, tLRPC$Chat.title, tLRPC$Poll2.question);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPoll2", C3473R.string.NotificationActionPinnedPoll2, str3, tLRPC$Chat.title, tLRPC$Poll2.question);
                                            }
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaPhoto) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message5.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", C3473R.string.NotificationActionPinnedText, str3, "🖼 " + messageObject2.messageOwner.message, tLRPC$Chat.title);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPhoto", C3473R.string.NotificationActionPinnedPhoto, str3, tLRPC$Chat.title);
                                            }
                                        } else if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGame) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGame", C3473R.string.NotificationActionPinnedGame, str3, tLRPC$Chat.title);
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
                                                int i7 = C3473R.string.NotificationActionPinnedText;
                                                Object[] objArr = new Object[3];
                                                objArr[c] = str3;
                                                objArr[1] = charSequence2;
                                                objArr[2] = tLRPC$Chat.title;
                                                formatString = LocaleController.formatString("NotificationActionPinnedText", i7, objArr);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedNoText", C3473R.string.NotificationActionPinnedNoText, str3, tLRPC$Chat.title);
                                            }
                                        }
                                    }
                                } else {
                                    MessageObject messageObject3 = messageObject.replyMessageObject;
                                    if (messageObject3 == null) {
                                        return LocaleController.formatString("NotificationActionPinnedNoTextChannel", C3473R.string.NotificationActionPinnedNoTextChannel, tLRPC$Chat.title);
                                    }
                                    if (messageObject3.isMusic()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedMusicChannel", C3473R.string.NotificationActionPinnedMusicChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isVideo()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3473R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "📹 " + messageObject3.messageOwner.message);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedVideoChannel", C3473R.string.NotificationActionPinnedVideoChannel, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject3.isGif()) {
                                        if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(messageObject3.messageOwner.message)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3473R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "🎬 " + messageObject3.messageOwner.message);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGifChannel", C3473R.string.NotificationActionPinnedGifChannel, tLRPC$Chat.title);
                                        }
                                    } else if (messageObject3.isVoice()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedVoiceChannel", C3473R.string.NotificationActionPinnedVoiceChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isRoundVideo()) {
                                        formatString = LocaleController.formatString("NotificationActionPinnedRoundChannel", C3473R.string.NotificationActionPinnedRoundChannel, tLRPC$Chat.title);
                                    } else if (messageObject3.isSticker() || messageObject3.isAnimatedSticker()) {
                                        String stickerEmoji3 = messageObject3.getStickerEmoji();
                                        if (stickerEmoji3 != null) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", C3473R.string.NotificationActionPinnedStickerEmojiChannel, tLRPC$Chat.title, stickerEmoji3);
                                        } else {
                                            formatString = LocaleController.formatString("NotificationActionPinnedStickerChannel", C3473R.string.NotificationActionPinnedStickerChannel, tLRPC$Chat.title);
                                        }
                                    } else {
                                        TLRPC$Message tLRPC$Message6 = messageObject3.messageOwner;
                                        TLRPC$MessageMedia tLRPC$MessageMedia3 = tLRPC$Message6.media;
                                        if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaDocument) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message6.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3473R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "📎 " + messageObject3.messageOwner.message);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedFileChannel", C3473R.string.NotificationActionPinnedFileChannel, tLRPC$Chat.title);
                                            }
                                        } else if ((tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaVenue)) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoChannel", C3473R.string.NotificationActionPinnedGeoChannel, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGeoLive) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", C3473R.string.NotificationActionPinnedGeoLiveChannel, tLRPC$Chat.title);
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaContact) {
                                            TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact3 = (TLRPC$TL_messageMediaContact) messageObject.messageOwner.media;
                                            formatString = LocaleController.formatString("NotificationActionPinnedContactChannel2", C3473R.string.NotificationActionPinnedContactChannel2, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact3.first_name, tLRPC$TL_messageMediaContact3.last_name));
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaPoll) {
                                            TLRPC$Poll tLRPC$Poll3 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia3).poll;
                                            if (tLRPC$Poll3.quiz) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedQuizChannel2", C3473R.string.NotificationActionPinnedQuizChannel2, tLRPC$Chat.title, tLRPC$Poll3.question);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPollChannel2", C3473R.string.NotificationActionPinnedPollChannel2, tLRPC$Chat.title, tLRPC$Poll3.question);
                                            }
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaPhoto) {
                                            if (Build.VERSION.SDK_INT >= 19 && !TextUtils.isEmpty(tLRPC$Message6.message)) {
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", C3473R.string.NotificationActionPinnedTextChannel, tLRPC$Chat.title, "🖼 " + messageObject3.messageOwner.message);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedPhotoChannel", C3473R.string.NotificationActionPinnedPhotoChannel, tLRPC$Chat.title);
                                            }
                                        } else if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaGame) {
                                            formatString = LocaleController.formatString("NotificationActionPinnedGameChannel", C3473R.string.NotificationActionPinnedGameChannel, tLRPC$Chat.title);
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
                                                int i8 = C3473R.string.NotificationActionPinnedTextChannel;
                                                Object[] objArr2 = new Object[2];
                                                objArr2[c2] = tLRPC$Chat.title;
                                                objArr2[1] = charSequence4;
                                                formatString = LocaleController.formatString("NotificationActionPinnedTextChannel", i8, objArr2);
                                            } else {
                                                formatString = LocaleController.formatString("NotificationActionPinnedNoTextChannel", C3473R.string.NotificationActionPinnedNoTextChannel, tLRPC$Chat.title);
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
                                            formatString = LocaleController.formatString("ChatThemeDisabledYou", C3473R.string.ChatThemeDisabledYou, new Object[0]);
                                        } else {
                                            formatString = LocaleController.formatString("ChatThemeDisabled", C3473R.string.ChatThemeDisabled, str3, str9);
                                        }
                                    } else if (j == clientUserId) {
                                        formatString = LocaleController.formatString("ChangedChatThemeYou", C3473R.string.ChatThemeChangedYou, str9);
                                    } else {
                                        formatString = LocaleController.formatString("ChangedChatThemeTo", C3473R.string.ChatThemeChangedTo, str3, str9);
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
                        return LocaleController.formatString("ChannelMessageNoText", C3473R.string.ChannelMessageNoText, str3);
                    }
                    String formatString10 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString10;
                }
                TLRPC$Message tLRPC$Message7 = messageObject.messageOwner;
                if (tLRPC$Message7.media instanceof TLRPC$TL_messageMediaPhoto) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message7.message)) {
                        return LocaleController.formatString("ChannelMessagePhoto", C3473R.string.ChannelMessagePhoto, str3);
                    }
                    String formatString11 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "🖼 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString11;
                } else if (messageObject.isVideo()) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString("ChannelMessageVideo", C3473R.string.ChannelMessageVideo, str3);
                    }
                    String formatString12 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "📹 " + messageObject.messageOwner.message);
                    zArr[0] = true;
                    return formatString12;
                } else if (messageObject.isVoice()) {
                    return LocaleController.formatString("ChannelMessageAudio", C3473R.string.ChannelMessageAudio, str3);
                } else {
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.formatString("ChannelMessageRound", C3473R.string.ChannelMessageRound, str3);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.formatString("ChannelMessageMusic", C3473R.string.ChannelMessageMusic, str3);
                    }
                    TLRPC$MessageMedia tLRPC$MessageMedia4 = messageObject.messageOwner.media;
                    if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaContact) {
                        TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact4 = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia4;
                        return LocaleController.formatString("ChannelMessageContact2", C3473R.string.ChannelMessageContact2, str3, ContactsController.formatName(tLRPC$TL_messageMediaContact4.first_name, tLRPC$TL_messageMediaContact4.last_name));
                    } else if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaPoll) {
                        TLRPC$Poll tLRPC$Poll4 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia4).poll;
                        if (tLRPC$Poll4.quiz) {
                            formatString = LocaleController.formatString("ChannelMessageQuiz2", C3473R.string.ChannelMessageQuiz2, str3, tLRPC$Poll4.question);
                        } else {
                            formatString = LocaleController.formatString("ChannelMessagePoll2", C3473R.string.ChannelMessagePoll2, str3, tLRPC$Poll4.question);
                        }
                    } else if ((tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaVenue)) {
                        return LocaleController.formatString("ChannelMessageMap", C3473R.string.ChannelMessageMap, str3);
                    } else {
                        if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaGeoLive) {
                            return LocaleController.formatString("ChannelMessageLiveLocation", C3473R.string.ChannelMessageLiveLocation, str3);
                        }
                        if (tLRPC$MessageMedia4 instanceof TLRPC$TL_messageMediaDocument) {
                            if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                                String stickerEmoji4 = messageObject.getStickerEmoji();
                                if (stickerEmoji4 != null) {
                                    formatString = LocaleController.formatString("ChannelMessageStickerEmoji", C3473R.string.ChannelMessageStickerEmoji, str3, stickerEmoji4);
                                } else {
                                    formatString = LocaleController.formatString("ChannelMessageSticker", C3473R.string.ChannelMessageSticker, str3);
                                }
                            } else if (messageObject.isGif()) {
                                if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                    return LocaleController.formatString("ChannelMessageGIF", C3473R.string.ChannelMessageGIF, str3);
                                }
                                String formatString13 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "🎬 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return formatString13;
                            } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString("ChannelMessageDocument", C3473R.string.ChannelMessageDocument, str3);
                            } else {
                                String formatString14 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, "📎 " + messageObject.messageOwner.message);
                                zArr[0] = true;
                                return formatString14;
                            }
                        } else if (z || TextUtils.isEmpty(messageObject.messageText)) {
                            return LocaleController.formatString("ChannelMessageNoText", C3473R.string.ChannelMessageNoText, str3);
                        } else {
                            String formatString15 = LocaleController.formatString("NotificationMessageText", C3473R.string.NotificationMessageText, str3, messageObject.messageText);
                            zArr[0] = true;
                            return formatString15;
                        }
                    }
                }
            } else if (messageObject.isMediaEmpty()) {
                return (z || TextUtils.isEmpty(messageObject.messageOwner.message)) ? LocaleController.formatString(str, C3473R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, messageObject.messageOwner.message);
            } else {
                String str10 = str;
                TLRPC$Message tLRPC$Message8 = messageObject.messageOwner;
                if (tLRPC$Message8.media instanceof TLRPC$TL_messageMediaPhoto) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(tLRPC$Message8.message)) {
                        return LocaleController.formatString("NotificationMessageGroupPhoto", C3473R.string.NotificationMessageGroupPhoto, str3, tLRPC$Chat.title);
                    }
                    return LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "🖼 " + messageObject.messageOwner.message);
                } else if (messageObject.isVideo()) {
                    if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                        return LocaleController.formatString(" ", C3473R.string.NotificationMessageGroupVideo, str3, tLRPC$Chat.title);
                    }
                    return LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "📹 " + messageObject.messageOwner.message);
                } else if (messageObject.isVoice()) {
                    return LocaleController.formatString("NotificationMessageGroupAudio", C3473R.string.NotificationMessageGroupAudio, str3, tLRPC$Chat.title);
                } else {
                    if (messageObject.isRoundVideo()) {
                        return LocaleController.formatString("NotificationMessageGroupRound", C3473R.string.NotificationMessageGroupRound, str3, tLRPC$Chat.title);
                    }
                    if (messageObject.isMusic()) {
                        return LocaleController.formatString("NotificationMessageGroupMusic", C3473R.string.NotificationMessageGroupMusic, str3, tLRPC$Chat.title);
                    }
                    TLRPC$MessageMedia tLRPC$MessageMedia5 = messageObject.messageOwner.media;
                    if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaContact) {
                        TLRPC$TL_messageMediaContact tLRPC$TL_messageMediaContact5 = (TLRPC$TL_messageMediaContact) tLRPC$MessageMedia5;
                        return LocaleController.formatString("NotificationMessageGroupContact2", C3473R.string.NotificationMessageGroupContact2, str3, tLRPC$Chat.title, ContactsController.formatName(tLRPC$TL_messageMediaContact5.first_name, tLRPC$TL_messageMediaContact5.last_name));
                    } else if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaPoll) {
                        TLRPC$Poll tLRPC$Poll5 = ((TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia5).poll;
                        if (tLRPC$Poll5.quiz) {
                            formatString = LocaleController.formatString("NotificationMessageGroupQuiz2", C3473R.string.NotificationMessageGroupQuiz2, str3, tLRPC$Chat.title, tLRPC$Poll5.question);
                        } else {
                            formatString = LocaleController.formatString("NotificationMessageGroupPoll2", C3473R.string.NotificationMessageGroupPoll2, str3, tLRPC$Chat.title, tLRPC$Poll5.question);
                        }
                    } else if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGame) {
                        return LocaleController.formatString("NotificationMessageGroupGame", C3473R.string.NotificationMessageGroupGame, str3, tLRPC$Chat.title, tLRPC$MessageMedia5.game.title);
                    } else {
                        if ((tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGeo) || (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaVenue)) {
                            return LocaleController.formatString("NotificationMessageGroupMap", C3473R.string.NotificationMessageGroupMap, str3, tLRPC$Chat.title);
                        }
                        if (tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaGeoLive) {
                            return LocaleController.formatString("NotificationMessageGroupLiveLocation", C3473R.string.NotificationMessageGroupLiveLocation, str3, tLRPC$Chat.title);
                        }
                        if (!(tLRPC$MessageMedia5 instanceof TLRPC$TL_messageMediaDocument)) {
                            return (z || TextUtils.isEmpty(messageObject.messageText)) ? LocaleController.formatString(str10, C3473R.string.NotificationMessageGroupNoText, str3, tLRPC$Chat.title) : LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, messageObject.messageText);
                        } else if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
                            String stickerEmoji5 = messageObject.getStickerEmoji();
                            if (stickerEmoji5 != null) {
                                formatString = LocaleController.formatString("NotificationMessageGroupStickerEmoji", C3473R.string.NotificationMessageGroupStickerEmoji, str3, tLRPC$Chat.title, stickerEmoji5);
                            } else {
                                formatString = LocaleController.formatString("NotificationMessageGroupSticker", C3473R.string.NotificationMessageGroupSticker, str3, tLRPC$Chat.title);
                            }
                        } else if (messageObject.isGif()) {
                            if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                                return LocaleController.formatString("NotificationMessageGroupGif", C3473R.string.NotificationMessageGroupGif, str3, tLRPC$Chat.title);
                            }
                            return LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "🎬 " + messageObject.messageOwner.message);
                        } else if (z || Build.VERSION.SDK_INT < 19 || TextUtils.isEmpty(messageObject.messageOwner.message)) {
                            return LocaleController.formatString("NotificationMessageGroupDocument", C3473R.string.NotificationMessageGroupDocument, str3, tLRPC$Chat.title);
                        } else {
                            return LocaleController.formatString("NotificationMessageGroupText", C3473R.string.NotificationMessageGroupText, str3, tLRPC$Chat.title, "📎 " + messageObject.messageOwner.message);
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
            FileLog.m67e(e);
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
    public /* synthetic */ void lambda$showNotifications$31() {
        showOrUpdateNotification(false);
    }

    public void showNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$showNotifications$31();
            }
        });
    }

    public void hideNotifications() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$hideNotifications$32();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideNotifications$32() {
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.lambda$dismissNotification$33();
                }
            });
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$dismissNotification$33() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pushMessagesUpdated, new Object[0]);
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
            FileLog.m67e(e);
        }
        try {
            if (getNotifyOverride(getAccountInstance().getNotificationsSettings(), this.openedDialogId, this.openedTopicId) == 2) {
                return;
            }
            notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationsController.this.lambda$playInChatSound$35();
                }
            });
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playInChatSound$35() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundPlay) <= 500) {
            return;
        }
        try {
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda3
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.lambda$playInChatSound$34(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundIn == 0 && !this.soundInLoaded) {
                this.soundInLoaded = true;
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C3473R.raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playInChatSound$34(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        }
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m70d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            DispatchQueue dispatchQueue = notificationsQueue;
            dispatchQueue.cancelRunnable(this.notificationDelayRunnable);
            dispatchQueue.postRunnable(this.notificationDelayRunnable, z ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : 1000);
        } catch (Exception e) {
            FileLog.m67e(e);
            showOrUpdateNotification(this.notifyCheck);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void repeatNotificationMaybe() {
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$repeatNotificationMaybe$36();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$repeatNotificationMaybe$36() {
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
    public void lambda$deleteNotificationChannel$37(long j, int i, int i2) {
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
                        FileLog.m67e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m70d("delete channel internal " + string);
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
                        FileLog.m67e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m70d("delete channel internal " + string2);
                    }
                }
            }
            edit.commit();
        } catch (Exception e3) {
            FileLog.m67e(e3);
        }
    }

    public void deleteNotificationChannel(final long j, final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteNotificationChannel$37(j, i, i2);
            }
        });
    }

    public void deleteNotificationChannelGlobal(int i) {
        deleteNotificationChannelGlobal(i, -1);
    }

    /* renamed from: deleteNotificationChannelGlobalInternal */
    public void lambda$deleteNotificationChannelGlobal$38(int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
            SharedPreferences.Editor edit = notificationsSettings.edit();
            if (i2 == 0 || i2 == -1) {
                String str = i == 2 ? "channels" : i == 0 ? "groups" : i == 3 ? "stories" : "private";
                String string = notificationsSettings.getString(str, null);
                if (string != null) {
                    SharedPreferences.Editor remove = edit.remove(str);
                    remove.remove(str + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string);
                    } catch (Exception e) {
                        FileLog.m67e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m70d("delete channel global internal " + string);
                    }
                }
            }
            if (i2 == 1 || i2 == -1) {
                String str2 = i == 2 ? "channels_ia" : i == 0 ? "groups_ia" : i == 3 ? "stories_ia" : "private_ia";
                String string2 = notificationsSettings.getString(str2, null);
                if (string2 != null) {
                    SharedPreferences.Editor remove2 = edit.remove(str2);
                    remove2.remove(str2 + "_s");
                    try {
                        systemNotificationManager.deleteNotificationChannel(string2);
                    } catch (Exception e2) {
                        FileLog.m67e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m70d("delete channel global internal " + string2);
                    }
                }
            }
            edit.remove(i == 2 ? "overwrite_channel" : i == 0 ? "overwrite_group" : i == 3 ? "overwrite_stories" : "overwrite_private");
            edit.commit();
        } catch (Exception e3) {
            FileLog.m67e(e3);
        }
    }

    public void deleteNotificationChannelGlobal(final int i, final int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteNotificationChannelGlobal$38(i, i2);
            }
        });
    }

    public void deleteAllNotificationChannels() {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$deleteAllNotificationChannels$39();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllNotificationChannels$39() {
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
                            FileLog.m70d("delete all channel " + str);
                        }
                    }
                    edit.remove(key);
                }
            }
            edit.commit();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f6 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:9:0x0021, B:12:0x0062, B:14:0x006c, B:18:0x007c, B:20:0x00a5, B:22:0x00b5, B:24:0x00bf, B:26:0x00f6, B:28:0x00ff, B:30:0x0108, B:39:0x0129, B:43:0x0140, B:44:0x0157, B:32:0x010f, B:34:0x0115, B:36:0x011a, B:35:0x0118, B:37:0x011f, B:27:0x00fb, B:17:0x0078, B:13:0x0067), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fb A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:9:0x0021, B:12:0x0062, B:14:0x006c, B:18:0x007c, B:20:0x00a5, B:22:0x00b5, B:24:0x00bf, B:26:0x00f6, B:28:0x00ff, B:30:0x0108, B:39:0x0129, B:43:0x0140, B:44:0x0157, B:32:0x010f, B:34:0x0115, B:36:0x011a, B:35:0x0118, B:37:0x011f, B:27:0x00fb, B:17:0x0078, B:13:0x0067), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0108 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:9:0x0021, B:12:0x0062, B:14:0x006c, B:18:0x007c, B:20:0x00a5, B:22:0x00b5, B:24:0x00bf, B:26:0x00f6, B:28:0x00ff, B:30:0x0108, B:39:0x0129, B:43:0x0140, B:44:0x0157, B:32:0x010f, B:34:0x0115, B:36:0x011a, B:35:0x0118, B:37:0x011f, B:27:0x00fb, B:17:0x0078, B:13:0x0067), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0129 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:9:0x0021, B:12:0x0062, B:14:0x006c, B:18:0x007c, B:20:0x00a5, B:22:0x00b5, B:24:0x00bf, B:26:0x00f6, B:28:0x00ff, B:30:0x0108, B:39:0x0129, B:43:0x0140, B:44:0x0157, B:32:0x010f, B:34:0x0115, B:36:0x011a, B:35:0x0118, B:37:0x011f, B:27:0x00fb, B:17:0x0078, B:13:0x0067), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0157 A[Catch: Exception -> 0x015b, TRY_LEAVE, TryCatch #0 {Exception -> 0x015b, blocks: (B:9:0x0021, B:12:0x0062, B:14:0x006c, B:18:0x007c, B:20:0x00a5, B:22:0x00b5, B:24:0x00bf, B:26:0x00f6, B:28:0x00ff, B:30:0x0108, B:39:0x0129, B:43:0x0140, B:44:0x0157, B:32:0x010f, B:34:0x0115, B:36:0x011a, B:35:0x0118, B:37:0x011f, B:27:0x00fb, B:17:0x0078, B:13:0x0067), top: B:49:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String createNotificationShortcut(androidx.core.app.NotificationCompat.Builder r17, long r18, java.lang.String r20, org.telegram.tgnet.TLRPC$User r21, org.telegram.tgnet.TLRPC$Chat r22, androidx.core.app.Person r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.createNotificationShortcut(androidx.core.app.NotificationCompat$Builder, long, java.lang.String, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Chat, androidx.core.app.Person, boolean):java.lang.String");
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
                FileLog.m67e(e);
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
        String str5 = "stories" + this.currentAccount;
        String str6 = "private" + this.currentAccount;
        for (int i2 = 0; i2 < size2; i2++) {
            String id2 = notificationChannelGroups.get(i2).getId();
            if (str2 != null && str2.equals(id2)) {
                str2 = null;
            } else if (str3 != null && str3.equals(id2)) {
                str3 = null;
            } else if (str5 != null && str5.equals(id2)) {
                str5 = null;
            } else if (str6 != null && str6.equals(id2)) {
                str6 = null;
            } else if (str4 != null && str4.equals(id2)) {
                str4 = null;
            }
            if (str2 == null && str5 == null && str3 == null && str6 == null && str4 == null) {
                break;
            }
        }
        if (str2 != null || str3 != null || str5 != null || str6 != null || str4 != null) {
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(getUserConfig().getClientUserId()));
            if (user == null) {
                getUserConfig().getCurrentUser();
            }
            String str7 = user != null ? " (" + ContactsController.formatName(user.first_name, user.last_name) + ")" : "";
            ArrayList arrayList = new ArrayList();
            if (str2 != null) {
                arrayList.add(new NotificationChannelGroup(str2, LocaleController.getString("NotificationsChannels", C3473R.string.NotificationsChannels) + str7));
            }
            if (str3 != null) {
                arrayList.add(new NotificationChannelGroup(str3, LocaleController.getString("NotificationsGroups", C3473R.string.NotificationsGroups) + str7));
            }
            if (str5 != null) {
                arrayList.add(new NotificationChannelGroup(str5, LocaleController.getString("NotificationsStories", C3473R.string.NotificationsStories) + str7));
            }
            if (str6 != null) {
                arrayList.add(new NotificationChannelGroup(str6, LocaleController.getString("NotificationsPrivateChats", C3473R.string.NotificationsPrivateChats) + str7));
            }
            if (str4 != null) {
                arrayList.add(new NotificationChannelGroup(str4, LocaleController.getString("NotificationsOther", C3473R.string.NotificationsOther) + str7));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:210:0x0491 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04e3 A[LOOP:1: B:222:0x04e0->B:224:0x04e3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0500 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x050f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0542  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String validateChannelId(long r29, int r31, java.lang.String r32, long[] r33, int r34, android.net.Uri r35, int r36, boolean r37, boolean r38, boolean r39, int r40) {
        /*
            Method dump skipped, instructions count: 1590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.validateChannelId(long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x0356, code lost:
        if (r25 == 0) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0358, code lost:
        r7 = org.telegram.messenger.LocaleController.getString("NotificationHiddenChatName", org.telegram.messenger.C3473R.string.NotificationHiddenChatName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0361, code lost:
        r7 = org.telegram.messenger.LocaleController.getString("NotificationHiddenName", org.telegram.messenger.C3473R.string.NotificationHiddenName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0b1a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 26) goto L363;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x033f A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x037d A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03bb A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03fb A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0452 A[Catch: Exception -> 0x0dd4, TRY_ENTER, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04bd A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0580 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0658 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x06a2 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x072e  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0846  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x084e A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x085d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0863 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0870  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x087d A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08ee A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x091f A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0a1f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0a5f A[Catch: all -> 0x0a72, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0a67  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0a79 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0a7f  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0ad5  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0c22 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c2c  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0c31 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0c40  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0128 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0134 A[Catch: Exception -> 0x0dd4, TryCatch #2 {Exception -> 0x0dd4, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a21, B:405:0x0a25, B:407:0x0a2b, B:419:0x0a79, B:443:0x0adc, B:470:0x0b29, B:479:0x0b68, B:481:0x0b70, B:483:0x0b74, B:485:0x0b7c, B:489:0x0b85, B:507:0x0c22, B:511:0x0c31, B:527:0x0c95, B:529:0x0c9b, B:531:0x0c9f, B:533:0x0caa, B:535:0x0cb0, B:537:0x0cba, B:539:0x0cca, B:541:0x0cd6, B:543:0x0cf5, B:544:0x0cfa, B:546:0x0d27, B:547:0x0d36, B:551:0x0d60, B:553:0x0d66, B:555:0x0d6e, B:557:0x0d74, B:559:0x0d86, B:560:0x0d9d, B:561:0x0db3, B:515:0x0c43, B:522:0x0c64, B:524:0x0c78, B:490:0x0bb1, B:491:0x0bb6, B:492:0x0bb9, B:494:0x0bbf, B:497:0x0bc9, B:499:0x0bd1, B:503:0x0c0f, B:504:0x0c17, B:473:0x0b33, B:475:0x0b3b, B:477:0x0b63, B:526:0x0c81, B:453:0x0af2, B:457:0x0b00, B:460:0x0b09, B:463:0x0b14, B:421:0x0a81, B:423:0x0a8e, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:501:0x0bdb, B:409:0x0a44, B:411:0x0a5f, B:413:0x0a68, B:337:0x08a4), top: B:571:0x0034, inners: #0, #4 }] */
    /* JADX WARN: Type inference failed for: r10v49, types: [org.telegram.messenger.MessageObject] */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v88 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showOrUpdateNotification(boolean r49) {
        /*
            Method dump skipped, instructions count: 3550
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
        String string = LocaleController.getString("DefaultRingtone", C3473R.string.DefaultRingtone);
        if (z) {
            if (i4 == 2) {
                edit.putString("ChannelSound", string);
            } else if (i4 == 0) {
                edit.putString("GroupSound", string);
            } else if (i4 == 1) {
                edit.putString("GlobalSound", string);
            } else if (i4 == 3) {
                edit.putString("StoriesSound", string);
            }
            if (i4 == 2) {
                edit.putString("ChannelSoundPath", uri3);
            } else if (i4 == 0) {
                edit.putString("GroupSoundPath", uri3);
            } else if (i4 == 1) {
                edit.putString("GlobalSoundPath", uri3);
            } else if (i4 == 3) {
                edit.putString("StoriesSoundPath", uri3);
            }
            getNotificationsController().lambda$deleteNotificationChannelGlobal$38(i4, -1);
        } else {
            edit.putString("sound_" + getSharedPrefKey(j, i), string);
            edit.putString("sound_path_" + getSharedPrefKey(j, i), uri3);
            lambda$deleteNotificationChannel$37(j, i, -1);
        }
        edit.commit();
        builder.setChannelId(validateChannelId(j, i, str, jArr, i2, Settings.System.DEFAULT_RINGTONE_URI, i3, z, z2, z3, i4));
        notificationManager.notify(this.notificationId, builder.build());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(84:55|(2:57|(3:59|60|61)(4:62|(2:65|63)|66|67))(1:660)|68|(1:70)(1:(1:658)(1:659))|71|72|(4:75|(2:77|78)(1:80)|79|73)|81|82|(4:84|(2:(1:87)(1:572)|88)(1:573)|(1:571)(2:94|(67:98|99|100|(3:102|(1:104)(1:567)|105)(1:568)|(3:107|(3:109|(1:111)(3:553|554|(3:556|(1:558)(1:560)|559)(1:561))|112)(1:565)|564)(1:566)|(3:114|(1:120)|121)(1:552)|122|(3:547|(1:549)(1:551)|550)(1:125)|126|(1:128)|129|(1:131)(1:539)|132|(1:538)(1:136)|137|(3:140|(1:142)|(3:144|145|(48:149|150|151|(4:155|156|157|158)|(1:531)(1:166)|167|(1:530)(1:170)|171|(1:529)|178|(1:528)(1:185)|186|(12:188|(1:190)(5:319|(2:321|(1:(1:324)(1:325))(10:326|(1:328)(2:329|(1:334)(1:333))|192|(2:195|193)|196|197|(1:318)(1:200)|201|(1:203)(1:317)|204))|335|336|61)|191|192|(1:193)|196|197|(0)|318|201|(0)(0)|204)(4:337|(6:339|(1:341)(5:346|(1:348)(2:521|(4:523|(2:525|(3:352|(1:354)|355)(21:356|(1:358)|(2:517|(1:519)(1:520))(1:364)|365|(1:367)(13:(1:512)(2:514|(1:516))|513|369|(2:(2:372|(2:(2:375|(1:377))(1:505)|378)(2:506|(1:508)))(1:509)|504)(1:510)|379|(3:475|(1:503)(3:481|(1:502)(3:484|(1:488)|(1:501)(1:498))|499)|500)(1:383)|384|(6:386|(1:473)(7:399|(1:472)(3:403|(9:454|455|456|457|458|459|460|461|462)(1:405)|406)|407|(1:409)(1:453)|410|(3:447|448|449)(3:412|(1:414)|446)|(6:416|(1:418)|419|(1:421)|422|(2:427|(3:429|(2:434|435)(1:431)|(1:433))))(1:444))|445|(0)|422|(3:425|427|(0)))(1:474)|438|(3:442|443|345)|343|344|345)|368|369|(0)(0)|379|(1:381)|475|(1:477)|503|500|384|(0)(0)|438|(4:440|442|443|345)|343|344|345))|350|(0)(0)))|349|350|(0)(0))|342|343|344|345)|526|527)|205|(4:207|(2:210|208)|211|212)(2:310|(1:312)(2:313|(1:315)(1:316)))|213|(1:215)|216|(1:218)|219|(2:221|(1:223)(1:305))(2:306|(1:308)(1:309))|(1:225)(1:304)|226|(4:228|(2:231|229)|232|233)(1:303)|234|(1:236)|237|238|239|(1:241)|242|(1:244)|(1:246)|(1:250)|251|(1:299)(1:257)|258|(1:260)|(1:262)|263|(3:268|(4:270|(3:272|(4:274|(1:276)|277|278)(2:280|281)|279)|282|283)|284)|285|(1:298)(2:288|(1:292))|293|(1:295)|296|297|61)))|537|(1:164)|531|167|(0)|530|171|(1:173)|529|178|(1:181)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(2:248|250)|251|(1:253)|299|258|(0)|(0)|263|(4:265|268|(0)|284)|285|(0)|298|293|(0)|296|297|61))|569)(5:574|(5:576|(1:578)(1:642)|579|(79:581|(2:583|(1:585)(2:597|(1:599)))(2:600|(78:604|(76:608|588|(1:590)(2:593|(1:595)(73:596|592|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(1:134)|538|137|(3:140|(0)|(0))|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297))|591|592|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(0)|538|137|(0)|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297)|587|588|(0)(0)|591|592|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(0)|538|137|(0)|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297))|586|587|588|(0)(0)|591|592|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(0)|538|137|(0)|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297)(74:609|(2:611|(1:613)(2:615|(1:617)))(8:618|(1:641)(1:622)|623|(1:640)(2:627|(1:629))|639|(2:632|(1:634))(1:638)|(1:636)|637)|614|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(0)|538|137|(0)|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297)|61)(3:643|(2:645|(2:647|(1:649))(2:650|(2:652|(1:654))))(1:656)|655)|335|336|61)|570|99|100|(0)(0)|(0)(0)|(0)(0)|122|(0)|541|543|545|547|(0)(0)|550|126|(0)|129|(0)(0)|132|(0)|538|137|(0)|537|(0)|531|167|(0)|530|171|(0)|529|178|(0)|528|186|(0)(0)|205|(0)(0)|213|(0)|216|(0)|219|(0)(0)|(0)(0)|226|(0)(0)|234|(0)|237|238|239|(0)|242|(0)|(0)|(0)|251|(0)|299|258|(0)|(0)|263|(0)|285|(0)|298|293|(0)|296|297|61) */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03c8, code lost:
        if (r5.local_id != 0) goto L631;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0f99, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0f9a, code lost:
        org.telegram.messenger.FileLog.m67e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0555 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0615  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0650 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x06be  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x06d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x06e4  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x06f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x082d A[LOOP:5: B:337:0x0825->B:339:0x082d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0872  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0878  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0884  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0923  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09a9  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x09eb  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0a95  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0b92  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0b95  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0bc1  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0c1b  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0c4a  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c53  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0c74  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0cba  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0d34  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0d5b  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0d9d  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0dbc  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0e1d  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0e5a  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0e81  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0ea4  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x0ec1  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0ee4  */
    /* JADX WARN: Removed duplicated region for block: B:576:0x0f18  */
    /* JADX WARN: Removed duplicated region for block: B:580:0x0f82 A[Catch: Exception -> 0x0f99, TryCatch #5 {Exception -> 0x0f99, blocks: (B:578:0x0f64, B:580:0x0f82, B:581:0x0f89), top: B:689:0x0f64 }] */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0f9f  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0faa  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0faf  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x0fbd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0fd6  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0fdb  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0fe7  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0ff4  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x1070 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:635:0x10a2  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x112b  */
    /* JADX WARN: Removed duplicated region for block: B:647:0x1178  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x1192  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x11e2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:683:0x0b9e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:699:0x066a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x025f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void showExtraNotifications(androidx.core.app.NotificationCompat.Builder r77, java.lang.String r78, long r79, int r81, java.lang.String r82, long[] r83, int r84, android.net.Uri r85, int r86, boolean r87, boolean r88, boolean r89, int r90) {
        /*
            Method dump skipped, instructions count: 4681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.showExtraNotifications(androidx.core.app.NotificationCompat$Builder, java.lang.String, long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.NotificationsController$1NotificationHolder  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class C1NotificationHolder {
        TLRPC$Chat chat;
        long dialogId;

        /* renamed from: id */
        int f1462id;
        String name;
        NotificationCompat.Builder notification;
        boolean story;
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

        C1NotificationHolder(int i, long j, boolean z, int i2, String str, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, NotificationCompat.Builder builder, int i3, String str2, long[] jArr, int i4, Uri uri, int i5, boolean z2, boolean z3, boolean z4, int i6) {
            this.val$lastTopicId = i3;
            this.val$chatName = str2;
            this.val$vibrationPattern = jArr;
            this.val$ledColor = i4;
            this.val$sound = uri;
            this.val$importance = i5;
            this.val$isDefault = z2;
            this.val$isInApp = z3;
            this.val$isSilent = z4;
            this.val$chatType = i6;
            this.f1462id = i;
            this.name = str;
            this.user = tLRPC$User;
            this.chat = tLRPC$Chat;
            this.notification = builder;
            this.dialogId = j;
            this.story = z;
            this.topicId = i2;
        }

        void call() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m65w("show dialog notification with id " + this.f1462id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.f1462id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.m67e(e);
                NotificationsController.this.resetNotificationSound(this.notification, this.dialogId, this.val$lastTopicId, this.val$chatName, this.val$vibrationPattern, this.val$ledColor, this.val$sound, this.val$importance, this.val$isDefault, this.val$isInApp, this.val$isSilent, this.val$chatType);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showExtraNotifications$40(Uri uri, File file) {
        ApplicationLoader.applicationContext.revokeUriPermission(uri, 1);
        if (file != null) {
            file.delete();
        }
    }

    private String cutLastName(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(32);
        if (indexOf >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, indexOf));
            sb.append(str.endsWith("…") ? "…" : "");
            return sb.toString();
        }
        return str;
    }

    private Pair<Integer, Boolean> parseStoryPushes(ArrayList<String> arrayList, ArrayList<Object> arrayList2) {
        int i;
        String str;
        TLRPC$FileLocation tLRPC$FileLocation;
        int min = Math.min(3, this.storyPushMessages.size());
        boolean z = false;
        int i2 = 0;
        for (i = 0; i < min; i = i + 1) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            i2 += storyNotification.dateByIds.size();
            z |= storyNotification.hidden;
            TLRPC$User user = getMessagesController().getUser(Long.valueOf(storyNotification.dialogId));
            if (user == null && (user = getMessagesStorage().getUserSync(storyNotification.dialogId)) != null) {
                getMessagesController().putUser(user, true);
            }
            Object obj = null;
            if (user != null) {
                str = UserObject.getUserName(user);
                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = user.photo;
                if (tLRPC$UserProfilePhoto != null && (tLRPC$FileLocation = tLRPC$UserProfilePhoto.photo_small) != null && tLRPC$FileLocation.volume_id != 0 && tLRPC$FileLocation.local_id != 0) {
                    File pathToAttach = getFileLoader().getPathToAttach(user.photo.photo_small, true);
                    if (!pathToAttach.exists()) {
                        pathToAttach = user.photo.photo_big != null ? getFileLoader().getPathToAttach(user.photo.photo_big, true) : null;
                        if (pathToAttach != null && !pathToAttach.exists()) {
                            pathToAttach = null;
                        }
                    }
                    if (pathToAttach != null) {
                        obj = pathToAttach;
                    }
                }
            } else {
                str = storyNotification.localName;
                i = str == null ? i + 1 : 0;
            }
            if (str.length() > 50) {
                str = str.substring(0, 25) + "…";
            }
            arrayList.add(str);
            if (obj == null && user != null) {
                arrayList2.add(user);
            } else if (obj != null) {
                arrayList2.add(obj);
            }
        }
        if (z) {
            arrayList2.clear();
        }
        return new Pair<>(Integer.valueOf(i2), Boolean.valueOf(z));
    }

    public static Person.Builder loadRoundAvatar(File file, Person.Builder builder) {
        if (file != null && Build.VERSION.SDK_INT >= 28) {
            try {
                builder.setIcon(IconCompat.createWithBitmap(ImageDecoder.decodeBitmap(ImageDecoder.createSource(file), new ImageDecoder.OnHeaderDecodedListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda0
                    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                        NotificationsController.lambda$loadRoundAvatar$42(imageDecoder, imageInfo, source);
                    }
                })));
            } catch (Throwable unused) {
            }
        }
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadRoundAvatar$42(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        imageDecoder.setPostProcessor(new PostProcessor() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda1
            @Override // android.graphics.PostProcessor
            public final int onPostProcess(Canvas canvas) {
                int lambda$loadRoundAvatar$41;
                lambda$loadRoundAvatar$41 = NotificationsController.lambda$loadRoundAvatar$41(canvas);
                return lambda$loadRoundAvatar$41;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadRoundAvatar$41(Canvas canvas) {
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

    public static Bitmap loadMultipleAvatars(ArrayList<Object> arrayList) {
        int i;
        Bitmap bitmap;
        Paint paint;
        boolean z;
        float f;
        char c;
        int i2;
        float f2;
        float size;
        float size2;
        float f3;
        float f4;
        float f5;
        float f6;
        Object obj;
        String absolutePath;
        BitmapFactory.Options options;
        TextPaint textPaint;
        ArrayList<Object> arrayList2 = arrayList;
        if (Build.VERSION.SDK_INT < 28 || arrayList2 == null || arrayList.size() == 0) {
            return null;
        }
        int m72dp = AndroidUtilities.m72dp(64);
        Bitmap createBitmap = Bitmap.createBitmap(m72dp, m72dp, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Matrix matrix = new Matrix();
        Paint paint2 = new Paint(3);
        boolean z2 = true;
        Paint paint3 = new Paint(1);
        Rect rect = new Rect();
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        float f7 = 1.0f;
        char c2 = 2;
        float f8 = arrayList.size() == 1 ? 1.0f : arrayList.size() == 2 ? 0.65f : 0.5f;
        int i3 = 0;
        TextPaint textPaint2 = null;
        while (i3 < arrayList.size()) {
            float f9 = m72dp;
            float f10 = (f7 - f8) * f9;
            try {
                size = (f10 / arrayList.size()) * ((arrayList.size() - 1) - i3);
                size2 = i3 * (f10 / arrayList.size());
                f3 = f9 * f8;
                f4 = f3 / 2.0f;
                i = m72dp;
                f5 = size + f4;
                f = f8;
                f6 = size2 + f4;
                bitmap = createBitmap;
                try {
                    try {
                        canvas.drawCircle(f5, f6, AndroidUtilities.m72dp(2) + f4, paint3);
                        obj = arrayList2.get(i3);
                        paint = paint3;
                    } catch (Throwable unused) {
                        paint = paint3;
                    }
                    try {
                    } catch (Throwable unused2) {
                        i2 = i3;
                        z = true;
                        c = 2;
                        f2 = 1.0f;
                        i3 = i2 + 1;
                        arrayList2 = arrayList;
                        c2 = c;
                        f7 = f2;
                        m72dp = i;
                        f8 = f;
                        createBitmap = bitmap;
                        z2 = z;
                        paint3 = paint;
                    }
                } catch (Throwable unused3) {
                    paint = paint3;
                    i2 = i3;
                    c = 2;
                }
            } catch (Throwable unused4) {
                i = m72dp;
                bitmap = createBitmap;
                paint = paint3;
                z = z2;
                f = f8;
                c = c2;
                i2 = i3;
            }
            if (obj instanceof File) {
                try {
                    absolutePath = ((File) arrayList2.get(i3)).getAbsolutePath();
                    options = new BitmapFactory.Options();
                    z = true;
                } catch (Throwable unused5) {
                    i2 = i3;
                    z = true;
                    c = 2;
                    f2 = 1.0f;
                    i3 = i2 + 1;
                    arrayList2 = arrayList;
                    c2 = c;
                    f7 = f2;
                    m72dp = i;
                    f8 = f;
                    createBitmap = bitmap;
                    z2 = z;
                    paint3 = paint;
                }
                try {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(absolutePath, options);
                    int i4 = (int) f3;
                    options.inSampleSize = StoryEntry.calculateInSampleSize(options, i4, i4);
                    try {
                        options.inJustDecodeBounds = false;
                        options.inDither = true;
                        Bitmap decodeFile = BitmapFactory.decodeFile(absolutePath, options);
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        BitmapShader bitmapShader = new BitmapShader(decodeFile, tileMode, tileMode);
                        matrix.reset();
                        matrix.postScale(f3 / decodeFile.getWidth(), f3 / decodeFile.getHeight());
                        matrix.postTranslate(size, size2);
                        bitmapShader.setLocalMatrix(matrix);
                        paint2.setShader(bitmapShader);
                        canvas.drawCircle(f5, f6, f4, paint2);
                        decodeFile.recycle();
                    } catch (Throwable unused6) {
                        i2 = i3;
                        z = true;
                        c = 2;
                        f2 = 1.0f;
                        i3 = i2 + 1;
                        arrayList2 = arrayList;
                        c2 = c;
                        f7 = f2;
                        m72dp = i;
                        f8 = f;
                        createBitmap = bitmap;
                        z2 = z;
                        paint3 = paint;
                    }
                } catch (Throwable unused7) {
                    i2 = i3;
                    c = 2;
                    f2 = 1.0f;
                    i3 = i2 + 1;
                    arrayList2 = arrayList;
                    c2 = c;
                    f7 = f2;
                    m72dp = i;
                    f8 = f;
                    createBitmap = bitmap;
                    z2 = z;
                    paint3 = paint;
                }
            } else if (obj instanceof TLRPC$User) {
                TLRPC$User tLRPC$User = (TLRPC$User) obj;
                try {
                    int[] iArr = new int[2];
                    i2 = i3;
                    textPaint = textPaint2;
                    try {
                        try {
                            iArr[0] = Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(tLRPC$User.f1685id)]);
                            try {
                                iArr[1] = Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(tLRPC$User.f1685id)]);
                                float f11 = size2 + f3;
                                c = 2;
                                try {
                                    float[] fArr = new float[2];
                                    try {
                                        fArr[0] = 0.0f;
                                        f2 = 1.0f;
                                        try {
                                            fArr[1] = 1.0f;
                                            try {
                                                paint2.setShader(new LinearGradient(size, size2, size, f11, iArr, fArr, Shader.TileMode.CLAMP));
                                                canvas.drawCircle(f5, f6, f4, paint2);
                                                if (textPaint == null) {
                                                    try {
                                                        z = true;
                                                    } catch (Throwable unused8) {
                                                        z = true;
                                                    }
                                                    try {
                                                        TextPaint textPaint3 = new TextPaint(1);
                                                        try {
                                                            textPaint3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                                                            textPaint3.setTextSize(f9 * 0.25f);
                                                            textPaint3.setColor(-1);
                                                            textPaint2 = textPaint3;
                                                        } catch (Throwable unused9) {
                                                            textPaint2 = textPaint3;
                                                            i3 = i2 + 1;
                                                            arrayList2 = arrayList;
                                                            c2 = c;
                                                            f7 = f2;
                                                            m72dp = i;
                                                            f8 = f;
                                                            createBitmap = bitmap;
                                                            z2 = z;
                                                            paint3 = paint;
                                                        }
                                                    } catch (Throwable unused10) {
                                                        textPaint2 = textPaint;
                                                        i3 = i2 + 1;
                                                        arrayList2 = arrayList;
                                                        c2 = c;
                                                        f7 = f2;
                                                        m72dp = i;
                                                        f8 = f;
                                                        createBitmap = bitmap;
                                                        z2 = z;
                                                        paint3 = paint;
                                                    }
                                                } else {
                                                    z = true;
                                                    textPaint2 = textPaint;
                                                }
                                                try {
                                                    StringBuilder sb = new StringBuilder();
                                                    AvatarDrawable.getAvatarSymbols(tLRPC$User.first_name, tLRPC$User.last_name, null, sb);
                                                    String sb2 = sb.toString();
                                                    try {
                                                        textPaint2.getTextBounds(sb2, 0, sb2.length(), rect);
                                                        canvas.drawText(sb2, (f5 - (rect.width() / 2.0f)) - rect.left, (f6 - (rect.height() / 2.0f)) - rect.top, textPaint2);
                                                    } catch (Throwable unused11) {
                                                    }
                                                } catch (Throwable unused12) {
                                                    i3 = i2 + 1;
                                                    arrayList2 = arrayList;
                                                    c2 = c;
                                                    f7 = f2;
                                                    m72dp = i;
                                                    f8 = f;
                                                    createBitmap = bitmap;
                                                    z2 = z;
                                                    paint3 = paint;
                                                }
                                            } catch (Throwable unused13) {
                                                z = true;
                                            }
                                        } catch (Throwable unused14) {
                                            z = true;
                                        }
                                    } catch (Throwable unused15) {
                                        z = true;
                                    }
                                } catch (Throwable unused16) {
                                    z = true;
                                }
                            } catch (Throwable unused17) {
                                z = true;
                                c = 2;
                                f2 = 1.0f;
                                textPaint2 = textPaint;
                                i3 = i2 + 1;
                                arrayList2 = arrayList;
                                c2 = c;
                                f7 = f2;
                                m72dp = i;
                                f8 = f;
                                createBitmap = bitmap;
                                z2 = z;
                                paint3 = paint;
                            }
                        } catch (Throwable unused18) {
                            z = true;
                            c = 2;
                            f2 = 1.0f;
                            textPaint2 = textPaint;
                            i3 = i2 + 1;
                            arrayList2 = arrayList;
                            c2 = c;
                            f7 = f2;
                            m72dp = i;
                            f8 = f;
                            createBitmap = bitmap;
                            z2 = z;
                            paint3 = paint;
                        }
                    } catch (Throwable unused19) {
                    }
                } catch (Throwable unused20) {
                    c = 2;
                    i2 = i3;
                    z = true;
                    f2 = 1.0f;
                    i3 = i2 + 1;
                    arrayList2 = arrayList;
                    c2 = c;
                    f7 = f2;
                    m72dp = i;
                    f8 = f;
                    createBitmap = bitmap;
                    z2 = z;
                    paint3 = paint;
                }
                i3 = i2 + 1;
                arrayList2 = arrayList;
                c2 = c;
                f7 = f2;
                m72dp = i;
                f8 = f;
                createBitmap = bitmap;
                z2 = z;
                paint3 = paint;
            }
            i2 = i3;
            textPaint = textPaint2;
            z = true;
            c = 2;
            f2 = 1.0f;
            textPaint2 = textPaint;
            i3 = i2 + 1;
            arrayList2 = arrayList;
            c2 = c;
            f7 = f2;
            m72dp = i;
            f8 = f;
            createBitmap = bitmap;
            z2 = z;
            paint3 = paint;
        }
        return createBitmap;
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
            FileLog.m67e(e);
        }
        notificationsQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$playOutChatSound$44();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playOutChatSound$44() {
        try {
            if (Math.abs(SystemClock.elapsedRealtime() - this.lastSoundOutPlay) <= 100) {
                return;
            }
            this.lastSoundOutPlay = SystemClock.elapsedRealtime();
            if (this.soundPool == null) {
                SoundPool soundPool = new SoundPool(3, 1, 0);
                this.soundPool = soundPool;
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda2
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        NotificationsController.lambda$playOutChatSound$43(soundPool2, i, i2);
                    }
                });
            }
            if (this.soundOut == 0 && !this.soundOutLoaded) {
                this.soundOutLoaded = true;
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C3473R.raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playOutChatSound$43(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m67e(e);
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
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.notificationsSettingsUpdated, new Object[0]);
        }
        if (DialogObject.isEncryptedDialog(j)) {
            return;
        }
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TLRPC$TL_account_updateNotifySettings tLRPC$TL_account_updateNotifySettings = new TLRPC$TL_account_updateNotifySettings();
        tLRPC$TL_account_updateNotifySettings.settings = new TLRPC$TL_inputPeerNotifySettings();
        String sharedPrefKey = getSharedPrefKey(j, i);
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings = tLRPC$TL_account_updateNotifySettings.settings;
        tLRPC$TL_inputPeerNotifySettings.flags |= 1;
        tLRPC$TL_inputPeerNotifySettings.show_previews = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CONTENT_PREVIEW + sharedPrefKey, true);
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings2 = tLRPC$TL_account_updateNotifySettings.settings;
        tLRPC$TL_inputPeerNotifySettings2.flags = tLRPC$TL_inputPeerNotifySettings2.flags | 2;
        tLRPC$TL_inputPeerNotifySettings2.silent = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + sharedPrefKey, false);
        if (notificationsSettings.contains(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey)) {
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings3 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings3.flags |= 64;
            tLRPC$TL_inputPeerNotifySettings3.stories_muted = !notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_STORIES_NOTIFY + sharedPrefKey, true);
        }
        int i2 = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY + getSharedPrefKey(j, i), -1);
        if (i2 != -1) {
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings4 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings4.flags |= 4;
            if (i2 == 3) {
                tLRPC$TL_inputPeerNotifySettings4.mute_until = notificationsSettings.getInt(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + getSharedPrefKey(j, i), 0);
            } else {
                tLRPC$TL_inputPeerNotifySettings4.mute_until = i2 == 2 ? Integer.MAX_VALUE : 0;
            }
        }
        long j2 = notificationsSettings.getLong("sound_document_id_" + getSharedPrefKey(j, i), 0L);
        String string = notificationsSettings.getString("sound_path_" + getSharedPrefKey(j, i), null);
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings5 = tLRPC$TL_account_updateNotifySettings.settings;
        tLRPC$TL_inputPeerNotifySettings5.flags = tLRPC$TL_inputPeerNotifySettings5.flags | 8;
        if (j2 != 0) {
            TLRPC$TL_notificationSoundRingtone tLRPC$TL_notificationSoundRingtone = new TLRPC$TL_notificationSoundRingtone();
            tLRPC$TL_notificationSoundRingtone.f1646id = j2;
            tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundRingtone;
        } else if (string != null) {
            if (string.equalsIgnoreCase("NoSound")) {
                tLRPC$TL_account_updateNotifySettings.settings.sound = new TLRPC$TL_notificationSoundNone();
            } else {
                TLRPC$TL_notificationSoundLocal tLRPC$TL_notificationSoundLocal = new TLRPC$TL_notificationSoundLocal();
                tLRPC$TL_notificationSoundLocal.title = notificationsSettings.getString("sound_" + getSharedPrefKey(j, i), null);
                tLRPC$TL_notificationSoundLocal.data = string;
                tLRPC$TL_account_updateNotifySettings.settings.sound = tLRPC$TL_notificationSoundLocal;
            }
        } else {
            tLRPC$TL_inputPeerNotifySettings5.sound = new TLRPC$TL_notificationSoundDefault();
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
        getConnectionsManager().sendRequest(tLRPC$TL_account_updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda48
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                NotificationsController.lambda$updateServerNotificationsSettings$45(runnable, runnable2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateServerNotificationsSettings$45(Runnable runnable, Runnable runnable2, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            if (runnable != null) {
                runnable.run();
            }
        } else if (runnable2 != null) {
            runnable2.run();
        }
    }

    public void updateServerNotificationsSettings(int i) {
        SharedPreferences notificationsSettings = getAccountInstance().getNotificationsSettings();
        TLRPC$TL_account_updateNotifySettings tLRPC$TL_account_updateNotifySettings = new TLRPC$TL_account_updateNotifySettings();
        TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings = new TLRPC$TL_inputPeerNotifySettings();
        tLRPC$TL_account_updateNotifySettings.settings = tLRPC$TL_inputPeerNotifySettings;
        tLRPC$TL_inputPeerNotifySettings.flags = 5;
        if (i == 0) {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyChats();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableGroup2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewGroup", true);
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings2 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings2.flags |= 8;
            tLRPC$TL_inputPeerNotifySettings2.sound = getInputSound(notificationsSettings, "GroupSound", "GroupSoundDocId", "GroupSoundPath");
        } else if (i == 1 || i == 3) {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyUsers();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableAll2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewAll", true);
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings3 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings3.flags |= 128;
            tLRPC$TL_inputPeerNotifySettings3.stories_hide_sender = notificationsSettings.getBoolean("EnableHideStoriesSenders", false);
            if (notificationsSettings.contains("EnableAllStories")) {
                TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings4 = tLRPC$TL_account_updateNotifySettings.settings;
                tLRPC$TL_inputPeerNotifySettings4.flags |= 64;
                tLRPC$TL_inputPeerNotifySettings4.stories_muted = !notificationsSettings.getBoolean("EnableAllStories", true);
            }
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings5 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings5.flags |= 8;
            tLRPC$TL_inputPeerNotifySettings5.sound = getInputSound(notificationsSettings, "GlobalSound", "GlobalSoundDocId", "GlobalSoundPath");
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings6 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings6.flags |= 256;
            tLRPC$TL_inputPeerNotifySettings6.stories_sound = getInputSound(notificationsSettings, "StoriesSound", "StoriesSoundDocId", "StoriesSoundPath");
        } else {
            tLRPC$TL_account_updateNotifySettings.peer = new TLRPC$TL_inputNotifyBroadcasts();
            tLRPC$TL_account_updateNotifySettings.settings.mute_until = notificationsSettings.getInt("EnableChannel2", 0);
            tLRPC$TL_account_updateNotifySettings.settings.show_previews = notificationsSettings.getBoolean("EnablePreviewChannel", true);
            TLRPC$TL_inputPeerNotifySettings tLRPC$TL_inputPeerNotifySettings7 = tLRPC$TL_account_updateNotifySettings.settings;
            tLRPC$TL_inputPeerNotifySettings7.flags |= 8;
            tLRPC$TL_inputPeerNotifySettings7.sound = getInputSound(notificationsSettings, "ChannelSound", "ChannelSoundDocId", "ChannelSoundPath");
        }
        getConnectionsManager().sendRequest(tLRPC$TL_account_updateNotifySettings, new RequestDelegate() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda49
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                NotificationsController.lambda$updateServerNotificationsSettings$46(tLObject, tLRPC$TL_error);
            }
        });
    }

    private TLRPC$NotificationSound getInputSound(SharedPreferences sharedPreferences, String str, String str2, String str3) {
        long j = sharedPreferences.getLong(str2, 0L);
        String string = sharedPreferences.getString(str3, "NoSound");
        if (j != 0) {
            TLRPC$TL_notificationSoundRingtone tLRPC$TL_notificationSoundRingtone = new TLRPC$TL_notificationSoundRingtone();
            tLRPC$TL_notificationSoundRingtone.f1646id = j;
            return tLRPC$TL_notificationSoundRingtone;
        } else if (string != null) {
            if (string.equalsIgnoreCase("NoSound")) {
                return new TLRPC$TL_notificationSoundNone();
            }
            TLRPC$TL_notificationSoundLocal tLRPC$TL_notificationSoundLocal = new TLRPC$TL_notificationSoundLocal();
            tLRPC$TL_notificationSoundLocal.title = sharedPreferences.getString(str, null);
            tLRPC$TL_notificationSoundLocal.data = string;
            return tLRPC$TL_notificationSoundLocal;
        } else {
            return new TLRPC$TL_notificationSoundDefault();
        }
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
        if (i == 3) {
            return getAccountInstance().getNotificationsSettings().getBoolean("EnableAllStories", true);
        }
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
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.NotificationsController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                NotificationsController.this.lambda$loadTopicsNotificationsExceptions$48(j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopicsNotificationsExceptions$48(long j, final Consumer consumer) {
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
                NotificationsController.lambda$loadTopicsNotificationsExceptions$47(Consumer.this, hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$loadTopicsNotificationsExceptions$47(Consumer consumer, HashSet hashSet) {
        if (consumer != null) {
            consumer.accept(hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class DialogKey {
        final long dialogId;
        final boolean story;
        final int topicId;

        private DialogKey(long j, int i, boolean z) {
            this.dialogId = j;
            this.topicId = i;
            this.story = z;
        }
    }

    /* loaded from: classes6.dex */
    public static class StoryNotification {
        public long date;
        final HashMap<Integer, Pair<Long, Long>> dateByIds;
        final long dialogId;
        boolean hidden;
        String localName;

        public StoryNotification(long j, String str, int i, long j2) {
            this(j, str, i, j2, j2 + 86400000);
        }

        public StoryNotification(long j, String str, int i, long j2, long j3) {
            HashMap<Integer, Pair<Long, Long>> hashMap = new HashMap<>();
            this.dateByIds = hashMap;
            this.dialogId = j;
            this.localName = str;
            hashMap.put(Integer.valueOf(i), new Pair<>(Long.valueOf(j2), Long.valueOf(j3)));
            this.date = j2;
        }

        public long getLeastDate() {
            long j = -1;
            for (Pair<Long, Long> pair : this.dateByIds.values()) {
                if (j == -1 || j > ((Long) pair.first).longValue()) {
                    j = ((Long) pair.first).longValue();
                }
            }
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStoryPushes() {
        long currentTimeMillis = System.currentTimeMillis();
        int i = 0;
        boolean z = false;
        while (i < this.storyPushMessages.size()) {
            StoryNotification storyNotification = this.storyPushMessages.get(i);
            Iterator<Map.Entry<Integer, Pair<Long, Long>>> it = storyNotification.dateByIds.entrySet().iterator();
            while (it.hasNext()) {
                if (currentTimeMillis >= ((Long) it.next().getValue().second).longValue()) {
                    it.remove();
                    z = true;
                }
            }
            if (z) {
                if (storyNotification.dateByIds.isEmpty()) {
                    getMessagesStorage().deleteStoryPushMessage(storyNotification.dialogId);
                    this.storyPushMessages.remove(i);
                    i--;
                } else {
                    getMessagesStorage().putStoryPushMessage(storyNotification);
                }
            }
            i++;
        }
        if (z) {
            showOrUpdateNotification(false);
        }
        updateStoryPushesRunnable();
    }

    private void updateStoryPushesRunnable() {
        long j = Long.MAX_VALUE;
        for (int i = 0; i < this.storyPushMessages.size(); i++) {
            for (Pair<Long, Long> pair : this.storyPushMessages.get(i).dateByIds.values()) {
                j = Math.min(j, ((Long) pair.second).longValue());
            }
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkStoryPushesRunnable);
        long currentTimeMillis = j - System.currentTimeMillis();
        if (j != Long.MAX_VALUE) {
            AndroidUtilities.runOnUIThread(this.checkStoryPushesRunnable, Math.max(0L, currentTimeMillis));
        }
    }
}
