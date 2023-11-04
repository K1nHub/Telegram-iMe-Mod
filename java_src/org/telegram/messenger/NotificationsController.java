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
import org.telegram.tgnet.TLRPC$NotificationSound;
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
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import p033j$.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.ToLongFunction;
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
            FileLog.m99e(e);
        }
        try {
            this.alarmManager = (AlarmManager) ApplicationLoader.applicationContext.getSystemService("alarm");
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
        try {
            PowerManager.WakeLock newWakeLock = ((PowerManager) ApplicationLoader.applicationContext.getSystemService("power")).newWakeLock(1, "telegram:notification_delay_lock");
            this.notificationDelayWakelock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        } catch (Exception e3) {
            FileLog.m99e(e3);
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
            FileLog.m102d("delay reached");
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
            FileLog.m99e(e);
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
                FileLog.m99e(e);
            }
        }
    }

    public static String getSharedPrefKey(long j, int i) {
        return getSharedPrefKey(j, i, false);
    }

    public static String getSharedPrefKey(long j, int i, boolean z) {
        String valueOf;
        if (z) {
            return i != 0 ? String.format(Locale.US, "%d_%d", Long.valueOf(j), Integer.valueOf(i)) : String.valueOf(j);
        }
        long j2 = (i << 12) + j;
        LongSparseArray<String> longSparseArray = sharedPrefCachedKeys;
        int indexOfKey = longSparseArray.indexOfKey(j2);
        if (indexOfKey >= 0) {
            return longSparseArray.valueAt(indexOfKey);
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
            FileLog.m99e(e);
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
                            FileLog.m99e(e2);
                        }
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m102d("delete channel cleanup " + id);
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m99e(th);
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
            FileLog.m102d("set last online from other device = " + i);
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
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.lambda$processNewMessages$23(java.util.ArrayList, java.util.ArrayList, boolean, boolean, java.util.concurrent.CountDownLatch):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$processNewMessages$20(StoryNotification storyNotification) {
        if (storyNotification == null) {
            return Long.MAX_VALUE;
        }
        return storyNotification.date;
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
                        if (sparseArray3 == null || sparseArray3.indexOfKey(tLRPC$Message.f1626id) < 0) {
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
                                sparseArray2.put(tLRPC$Message.f1626id, messageObject);
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
                    long lambda$processLoadedUnreadMessages$27;
                    lambda$processLoadedUnreadMessages$27 = NotificationsController.lambda$processLoadedUnreadMessages$27((NotificationsController.StoryNotification) obj);
                    return lambda$processLoadedUnreadMessages$27;
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
    public static /* synthetic */ long lambda$processLoadedUnreadMessages$27(StoryNotification storyNotification) {
        if (storyNotification == null) {
            return Long.MAX_VALUE;
        }
        return storyNotification.date;
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
                                    if ((tLRPC$Dialog == null || !DialogObject.isChatDialog(tLRPC$Dialog.f1608id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog.f1608id)))) && tLRPC$Dialog != null) {
                                        i += MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog);
                                    }
                                }
                            } catch (Exception e) {
                                FileLog.m99e(e);
                            }
                        } else {
                            size = notificationsController.total_unread_count;
                        }
                    } else if (notificationsController.showBadgeMuted) {
                        try {
                            int size3 = MessagesController.getInstance(i2).allDialogs.size();
                            for (int i4 = 0; i4 < size3; i4++) {
                                TLRPC$Dialog tLRPC$Dialog2 = MessagesController.getInstance(i2).allDialogs.get(i4);
                                if ((!DialogObject.isChatDialog(tLRPC$Dialog2.f1608id) || !ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog2.f1608id)))) && MessagesController.getInstance(i2).getDialogUnreadCount(tLRPC$Dialog2) != 0) {
                                    i++;
                                }
                            }
                        } catch (Exception e2) {
                            FileLog.m98e((Throwable) e2, false);
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
        if (r6.getBoolean(r7, true) == false) goto L797;
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
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L671;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0277, code lost:
        r27[0] = null;
        r6 = r2.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x027e, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetSameChatWallPaper) == false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0288, code lost:
        return org.telegram.messenger.LocaleController.getString("WallpaperSameNotification", org.telegram.messenger.C3634R.string.WallpaperSameNotification);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x028b, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatWallPaper) == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0295, code lost:
        return org.telegram.messenger.LocaleController.getString("WallpaperNotification", org.telegram.messenger.C3634R.string.WallpaperNotification);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0298, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached) == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02a0, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02a3, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserJoined) != false) goto L669;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02a7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionContactSignUp) == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02ad, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionUserUpdatedPhoto) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x02bd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactNewPhoto", org.telegram.messenger.C3634R.string.NotificationContactNewPhoto, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02c1, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionLoginUnknownLocation) == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x02c3, code lost:
        r1 = org.telegram.messenger.LocaleController.formatString("formatDateAtTime", org.telegram.messenger.C3634R.string.formatDateAtTime, org.telegram.messenger.LocaleController.getInstance().formatterYear.format(r26.messageOwner.date * 1000), org.telegram.messenger.LocaleController.getInstance().formatterDay.format(r26.messageOwner.date * 1000));
        r2 = org.telegram.messenger.C3634R.string.NotificationUnrecognizedDevice;
        r0 = r26.messageOwner.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x031d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationUnrecognizedDevice", r2, getUserConfig().getCurrentUser().first_name, r1, r0.title, r0.address);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0320, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) != false) goto L667;
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
        return org.telegram.messenger.LocaleController.getString("CallMessageVideoIncomingMissed", org.telegram.messenger.C3634R.string.CallMessageVideoIncomingMissed);
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0341, code lost:
        return org.telegram.messenger.LocaleController.getString("CallMessageIncomingMissed", org.telegram.messenger.C3634R.string.CallMessageIncomingMissed);
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
        return org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3634R.string.ChannelAddedByNotification, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0392, code lost:
        if (r2 != r19) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03a7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3634R.string.NotificationInvitedToGroup, r1, r5.title);
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
        if (r9 != r0.f1749id) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03bf, code lost:
        if (r5.megagroup == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x03d4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3634R.string.NotificationGroupAddSelfMega, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x03e8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3634R.string.NotificationGroupAddSelf, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0402, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3634R.string.NotificationGroupAddMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
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
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3634R.string.NotificationGroupAddMember, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x045d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0471, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3634R.string.NotificationGroupCreatedCall, r1, r5.title);
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
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedYouToCall, r1, r5.title);
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
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedToCall, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
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
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedToCall, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0543, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGiftCode) == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x054d, code lost:
        return org.telegram.messenger.LocaleController.getString("BoostingReceivedGiftNoName", org.telegram.messenger.C3634R.string.BoostingReceivedGiftNoName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0550, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0566, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3634R.string.NotificationInvitedToGroupByLink, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x056d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x057f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3634R.string.NotificationEditedGroupName, r1, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0582, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L651;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0586, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x058c, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x058e, code lost:
        r2 = r6.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0592, code lost:
        if (r2 != r19) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x05a7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3634R.string.NotificationGroupKickYou, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x05ad, code lost:
        if (r2 != r9) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x05bf, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3634R.string.NotificationGroupLeftMember, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05c0, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r26.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x05d2, code lost:
        if (r0 != null) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05d4, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05ef, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3634R.string.NotificationGroupKickMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05f2, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x05fa, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x05fd, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0605, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0608, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x061a, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3634R.string.ActionMigrateFromGroupNotify, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x061f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x062f, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3634R.string.ActionMigrateFromGroupNotify, r6.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0632, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x063a, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x063d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0643, code lost:
        if (r5 == null) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0649, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x064d, code lost:
        if (r5.megagroup == false) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x064f, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0651, code lost:
        if (r0 != null) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0666, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x066e, code lost:
        if (r0.isMusic() == false) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0680, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3634R.string.NotificationActionPinnedMusic, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0687, code lost:
        if (r0.isVideo() == false) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x068d, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0697, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06c0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "📹 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06d4, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3634R.string.NotificationActionPinnedVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06d9, code lost:
        if (r0.isGif() == false) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x06df, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x06e9, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0712, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "🎬 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0726, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3634R.string.NotificationActionPinnedGif, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x072e, code lost:
        if (r0.isVoice() == false) goto L348;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0740, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3634R.string.NotificationActionPinnedVoice, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0745, code lost:
        if (r0.isRoundVideo() == false) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0757, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3634R.string.NotificationActionPinnedRound, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x075c, code lost:
        if (r0.isSticker() != false) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x0762, code lost:
        if (r0.isAnimatedSticker() == false) goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0766, code lost:
        r4 = r0.messageOwner;
        r7 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x076c, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0772, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x077a, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L364;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x07a3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "📎 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x07b7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3634R.string.NotificationActionPinnedFile, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x07ba, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L412;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x07be, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x07c4, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x07d9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoLive, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x07de, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x07e0, code lost:
        r7 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x07fe, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3634R.string.NotificationActionPinnedContact2, r1, r5.title, org.telegram.messenger.ContactsController.formatName(r7.first_name, r7.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0801, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0803, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r7).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x0809, code lost:
        if (r0.quiz == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0823, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3634R.string.NotificationActionPinnedQuiz2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x083c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3634R.string.NotificationActionPinnedPoll2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x083f, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x0845, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x084d, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0876, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "🖼 " + r0.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x088a, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3634R.string.NotificationActionPinnedPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0890, code lost:
        if ((r7 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x08a2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3634R.string.NotificationActionPinnedGame, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x08a3, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x08a5, code lost:
        if (r4 == null) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x08ab, code lost:
        if (r4.length() <= 0) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x08ad, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x08b3, code lost:
        if (r0.length() <= 20) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x08b5, code lost:
        r4 = new java.lang.StringBuilder();
        r7 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x08ca, code lost:
        r7 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x08cb, code lost:
        r2 = org.telegram.messenger.C3634R.string.NotificationActionPinnedText;
        r3 = new java.lang.Object[3];
        r3[r7] = r1;
        r3[1] = r0;
        r3[2] = r5.title;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x08de, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x08f2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0906, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0907, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x090d, code lost:
        if (r0 == null) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0923, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerEmoji, r1, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0935, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3634R.string.NotificationActionPinnedSticker, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0937, code lost:
        if (r5 == null) goto L526;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0939, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x093b, code lost:
        if (r0 != null) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x094c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0952, code lost:
        if (r0.isMusic() == false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0962, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedMusicChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0969, code lost:
        if (r0.isVideo() == false) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x096f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x0979, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L438;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x099f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x09b0, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedVideoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x09b5, code lost:
        if (r0.isGif() == false) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x09bb, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x09c5, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x09eb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x09fc, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGifChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0a03, code lost:
        if (r0.isVoice() == false) goto L454;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0a13, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedVoiceChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0a18, code lost:
        if (r0.isRoundVideo() == false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x0a28, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedRoundChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0a2d, code lost:
        if (r0.isSticker() != false) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x0a33, code lost:
        if (r0.isAnimatedSticker() == false) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x0a37, code lost:
        r1 = r0.messageOwner;
        r6 = r1.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0a3d, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0a43, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0a4b, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L470;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0a71, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0a82, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedFileChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0a85, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0a89, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0a8f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x0aa1, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoLiveChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0aa5, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x0aa7, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0ac3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedContactChannel2, r5.title, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0ac6, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L492;
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0ac8, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0ace, code lost:
        if (r0.quiz == false) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0ae5, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedQuizChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r2) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0afb, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedPollChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0afe, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0b04, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0b0c, code lost:
        if (android.text.TextUtils.isEmpty(r1.message) != false) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0b32, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0b43, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedPhotoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0b48, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0b58, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGameChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0b59, code lost:
        r1 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0b5b, code lost:
        if (r1 == null) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0b61, code lost:
        if (r1.length() <= 0) goto L516;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0b63, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0b69, code lost:
        if (r0.length() <= 20) goto L515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0b6b, code lost:
        r1 = new java.lang.StringBuilder();
        r6 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0b80, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0b81, code lost:
        r1 = org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel;
        r2 = new java.lang.Object[2];
        r2[r6] = r5.title;
        r2[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0b91, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0ba2, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0bb3, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0bb4, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0bb9, code lost:
        if (r0 == null) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0bcd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerEmojiChannel, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0bdd, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x0bde, code lost:
        r0 = r26.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x0be1, code lost:
        if (r0 != null) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0bef, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0bf4, code lost:
        if (r0.isMusic() == false) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0c02, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedMusicUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0c09, code lost:
        if (r0.isVideo() == false) goto L544;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0c0f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L542;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0c19, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L542;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0c3d, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextUser, r1, "📹 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0c4c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedVideoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0c51, code lost:
        if (r0.isGif() == false) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0c57, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0c61, code lost:
        if (android.text.TextUtils.isEmpty(r0.messageOwner.message) != false) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0c85, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextUser, r1, "🎬 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0c94, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedGifUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0c9b, code lost:
        if (r0.isVoice() == false) goto L558;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0ca9, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedVoiceUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0cae, code lost:
        if (r0.isRoundVideo() == false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0cbc, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedRoundUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0cc1, code lost:
        if (r0.isSticker() != false) goto L624;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x0cc7, code lost:
        if (r0.isAnimatedSticker() == false) goto L566;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x0ccb, code lost:
        r4 = r0.messageOwner;
        r6 = r4.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0cd1, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x0cd7, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L574;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0cdf, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L574;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x0d03, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextUser, r1, "📎 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x0d12, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedFileUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x0d15, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L622;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x0d19, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L580;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0d1f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L584;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0d2f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoLiveUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0d33, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L588;
     */
    /* JADX WARN: Code restructure failed: missing block: B:617:0x0d35, code lost:
        r6 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0d4f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedContactUser, r1, org.telegram.messenger.ContactsController.formatName(r6.first_name, r6.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0d52, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L596;
     */
    /* JADX WARN: Code restructure failed: missing block: B:621:0x0d54, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x0d5a, code lost:
        if (r0.quiz == false) goto L594;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x0d6f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedQuizUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x0d83, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedPollUser, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x0d86, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L606;
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x0d8c, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L604;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x0d94, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L604;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x0db8, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextUser, r1, "🖼 " + r0.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x0dc7, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedPhotoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x0dcc, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0dda, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedGameUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x0ddb, code lost:
        r4 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x0ddd, code lost:
        if (r4 == null) goto L620;
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x0de3, code lost:
        if (r4.length() <= 0) goto L620;
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x0de5, code lost:
        r0 = r0.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0deb, code lost:
        if (r0.length() <= 20) goto L619;
     */
    /* JADX WARN: Code restructure failed: missing block: B:647:0x0ded, code lost:
        r4 = new java.lang.StringBuilder();
        r6 = 0;
        r4.append((java.lang.Object) r0.subSequence(0, 20));
        r4.append("...");
        r0 = r4.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0e02, code lost:
        r6 = 0;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x0e03, code lost:
        r2 = org.telegram.messenger.C3634R.string.NotificationActionPinnedTextUser;
        r3 = new java.lang.Object[2];
        r3[r6] = r1;
        r3[1] = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x0e11, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextUser", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x0e20, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x0e2f, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:655:0x0e30, code lost:
        r0 = r0.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x0e36, code lost:
        if (r0 == null) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x0e47, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerEmojiUser, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x0e54, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerUser", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerUser, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x0e57, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L646;
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x0e59, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r6).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:664:0x0e61, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L640;
     */
    /* JADX WARN: Code restructure failed: missing block: B:666:0x0e65, code lost:
        if (r3 != r19) goto L638;
     */
    /* JADX WARN: Code restructure failed: missing block: B:670:0x0e89, code lost:
        if (r3 != r19) goto L644;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x0ea7, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3634R.string.ChatThemeChangedTo, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x0eaa, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L650;
     */
    /* JADX WARN: Code restructure failed: missing block: B:677:0x0eb2, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:678:0x0eb3, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:680:0x0ebc, code lost:
        if (r2.peer_id.channel_id == 0) goto L661;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x0ec0, code lost:
        if (r5.megagroup != false) goto L661;
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x0ec6, code lost:
        if (r26.isVideoAvatar() == false) goto L659;
     */
    /* JADX WARN: Code restructure failed: missing block: B:686:0x0ed8, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3634R.string.ChannelVideoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:688:0x0ee9, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3634R.string.ChannelPhotoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x0eef, code lost:
        if (r26.isVideoAvatar() == false) goto L665;
     */
    /* JADX WARN: Code restructure failed: missing block: B:692:0x0f03, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3634R.string.NotificationEditedGroupVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:694:0x0f16, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3634R.string.NotificationEditedGroupPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:696:0x0f1d, code lost:
        return r26.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:698:0x0f2c, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationContactJoined", org.telegram.messenger.C3634R.string.NotificationContactJoined, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:700:0x0f31, code lost:
        if (r26.isMediaEmpty() == false) goto L679;
     */
    /* JADX WARN: Code restructure failed: missing block: B:702:0x0f3b, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L677;
     */
    /* JADX WARN: Code restructure failed: missing block: B:704:0x0f41, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:706:0x0f4a, code lost:
        return org.telegram.messenger.LocaleController.getString(r22, org.telegram.messenger.C3634R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:707:0x0f4b, code lost:
        r1 = r22;
        r2 = r26.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x0f53, code lost:
        if ((r2.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L693;
     */
    /* JADX WARN: Code restructure failed: missing block: B:710:0x0f59, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L687;
     */
    /* JADX WARN: Code restructure failed: missing block: B:712:0x0f61, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L687;
     */
    /* JADX WARN: Code restructure failed: missing block: B:714:0x0f76, code lost:
        return "🖼 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:716:0x0f7d, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L691;
     */
    /* JADX WARN: Code restructure failed: missing block: B:718:0x0f87, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingPhoto", org.telegram.messenger.C3634R.string.AttachDestructingPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x0f90, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachPhoto", org.telegram.messenger.C3634R.string.AttachPhoto);
     */
    /* JADX WARN: Code restructure failed: missing block: B:722:0x0f95, code lost:
        if (r26.isVideo() == false) goto L707;
     */
    /* JADX WARN: Code restructure failed: missing block: B:724:0x0f9b, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L701;
     */
    /* JADX WARN: Code restructure failed: missing block: B:726:0x0fa5, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L701;
     */
    /* JADX WARN: Code restructure failed: missing block: B:728:0x0fba, code lost:
        return "📹 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:730:0x0fc1, code lost:
        if (r26.messageOwner.media.ttl_seconds == 0) goto L705;
     */
    /* JADX WARN: Code restructure failed: missing block: B:732:0x0fcb, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDestructingVideo", org.telegram.messenger.C3634R.string.AttachDestructingVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x0fd4, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachVideo", org.telegram.messenger.C3634R.string.AttachVideo);
     */
    /* JADX WARN: Code restructure failed: missing block: B:736:0x0fd9, code lost:
        if (r26.isGame() == false) goto L711;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x0fe3, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGame", org.telegram.messenger.C3634R.string.AttachGame);
     */
    /* JADX WARN: Code restructure failed: missing block: B:740:0x0fe8, code lost:
        if (r26.isVoice() == false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:742:0x0ff2, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachAudio", org.telegram.messenger.C3634R.string.AttachAudio);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x0ff7, code lost:
        if (r26.isRoundVideo() == false) goto L719;
     */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x1001, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachRound", org.telegram.messenger.C3634R.string.AttachRound);
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x1006, code lost:
        if (r26.isMusic() == false) goto L723;
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x1010, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachMusic", org.telegram.messenger.C3634R.string.AttachMusic);
     */
    /* JADX WARN: Code restructure failed: missing block: B:751:0x1011, code lost:
        r2 = r26.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:752:0x1017, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L727;
     */
    /* JADX WARN: Code restructure failed: missing block: B:754:0x1021, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachContact", org.telegram.messenger.C3634R.string.AttachContact);
     */
    /* JADX WARN: Code restructure failed: missing block: B:756:0x1024, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L735;
     */
    /* JADX WARN: Code restructure failed: missing block: B:758:0x102c, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r2).poll.quiz == false) goto L733;
     */
    /* JADX WARN: Code restructure failed: missing block: B:760:0x1036, code lost:
        return org.telegram.messenger.LocaleController.getString("QuizPoll", org.telegram.messenger.C3634R.string.QuizPoll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:762:0x103f, code lost:
        return org.telegram.messenger.LocaleController.getString("Poll", org.telegram.messenger.C3634R.string.Poll);
     */
    /* JADX WARN: Code restructure failed: missing block: B:764:0x1042, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) == false) goto L739;
     */
    /* JADX WARN: Code restructure failed: missing block: B:766:0x104c, code lost:
        return org.telegram.messenger.LocaleController.getString("BoostingGiveaway", org.telegram.messenger.C3634R.string.BoostingGiveaway);
     */
    /* JADX WARN: Code restructure failed: missing block: B:768:0x104f, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L795;
     */
    /* JADX WARN: Code restructure failed: missing block: B:770:0x1053, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L743;
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x1059, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L747;
     */
    /* JADX WARN: Code restructure failed: missing block: B:775:0x1063, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLiveLocation", org.telegram.messenger.C3634R.string.AttachLiveLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:777:0x1066, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L777;
     */
    /* JADX WARN: Code restructure failed: missing block: B:779:0x106c, code lost:
        if (r26.isSticker() != false) goto L771;
     */
    /* JADX WARN: Code restructure failed: missing block: B:781:0x1072, code lost:
        if (r26.isAnimatedSticker() == false) goto L753;
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x1079, code lost:
        if (r26.isGif() == false) goto L763;
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x107f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:788:0x1089, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:790:0x109e, code lost:
        return "🎬 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x10a7, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachGif", org.telegram.messenger.C3634R.string.AttachGif);
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x10ac, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:796:0x10b6, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageOwner.message) != false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:798:0x10cb, code lost:
        return "📎 " + replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:800:0x10d4, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachDocument", org.telegram.messenger.C3634R.string.AttachDocument);
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x10d5, code lost:
        r0 = r26.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:802:0x10d9, code lost:
        if (r0 == null) goto L775;
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x10f7, code lost:
        return r0 + " " + org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3634R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:806:0x1100, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachSticker", org.telegram.messenger.C3634R.string.AttachSticker);
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x1103, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaStory) == false) goto L789;
     */
    /* JADX WARN: Code restructure failed: missing block: B:810:0x1109, code lost:
        if (((org.telegram.tgnet.TLRPC$TL_messageMediaStory) r2).via_mention == false) goto L787;
     */
    /* JADX WARN: Code restructure failed: missing block: B:811:0x110b, code lost:
        r0 = org.telegram.messenger.C3634R.string.StoryNotificationMention;
        r1 = new java.lang.Object[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:0x1113, code lost:
        if (r27[0] != null) goto L786;
     */
    /* JADX WARN: Code restructure failed: missing block: B:813:0x1115, code lost:
        r3 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:0x1118, code lost:
        r3 = r27[0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:815:0x111a, code lost:
        r1[0] = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:816:0x1122, code lost:
        return org.telegram.messenger.LocaleController.formatString("StoryNotificationMention", r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:0x112b, code lost:
        return org.telegram.messenger.LocaleController.getString("Story", org.telegram.messenger.C3634R.string.Story);
     */
    /* JADX WARN: Code restructure failed: missing block: B:820:0x1132, code lost:
        if (android.text.TextUtils.isEmpty(r26.messageText) != false) goto L793;
     */
    /* JADX WARN: Code restructure failed: missing block: B:822:0x1138, code lost:
        return replaceSpoilers(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:824:0x113f, code lost:
        return org.telegram.messenger.LocaleController.getString(r1, org.telegram.messenger.C3634R.string.Message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:826:0x1148, code lost:
        return org.telegram.messenger.LocaleController.getString("AttachLocation", org.telegram.messenger.C3634R.string.AttachLocation);
     */
    /* JADX WARN: Code restructure failed: missing block: B:840:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3634R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:841:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3634R.string.ChatThemeDisabled, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:842:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3634R.string.ChatThemeChangedYou, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getShortStringForMessage(org.telegram.messenger.MessageObject r26, java.lang.String[] r27, boolean[] r28) {
        /*
            Method dump skipped, instructions count: 4446
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

    /* JADX WARN: Code restructure failed: missing block: B:276:0x064a, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) == false) goto L816;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0656, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r15) != false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0658, code lost:
        r12 = r28.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x065c, code lost:
        if ((r12 instanceof org.telegram.tgnet.TLRPC$TL_messageService) == false) goto L599;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x065e, code lost:
        r2 = r12.action;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0662, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser) == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0664, code lost:
        r3 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x066a, code lost:
        if (r3 != 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x0673, code lost:
        if (r2.users.size() != 1) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0675, code lost:
        r3 = r28.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x068a, code lost:
        if (r3 == 0) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0694, code lost:
        if (r28.messageOwner.peer_id.channel_id == 0) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0698, code lost:
        if (r5.megagroup != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x069a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelAddedByNotification", org.telegram.messenger.C3634R.string.ChannelAddedByNotification, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x06b1, code lost:
        if (r3 != r18) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x06b3, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroup", org.telegram.messenger.C3634R.string.NotificationInvitedToGroup, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x06c8, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x06d4, code lost:
        if (r0 != null) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x06d6, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x06db, code lost:
        if (r25 != r0.f1749id) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x06df, code lost:
        if (r5.megagroup == false) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x06e1, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelfMega", org.telegram.messenger.C3634R.string.NotificationGroupAddSelfMega, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x06f6, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddSelf", org.telegram.messenger.C3634R.string.NotificationGroupAddSelf, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x070b, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3634R.string.NotificationGroupAddMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0726, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0736, code lost:
        if (r3 >= r28.messageOwner.action.users.size()) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0738, code lost:
        r4 = getMessagesController().getUser(r28.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x074c, code lost:
        if (r4 == null) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x074e, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0756, code lost:
        if (r2.length() == 0) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0758, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x075d, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0760, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0763, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupAddMember", org.telegram.messenger.C3634R.string.NotificationGroupAddMember, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0781, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCall) == false) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0783, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationGroupCreatedCall", org.telegram.messenger.C3634R.string.NotificationGroupCreatedCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0799, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled) == false) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x079b, code lost:
        r20 = r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x07a5, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall) == false) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x07a7, code lost:
        r3 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x07ad, code lost:
        if (r3 != 0) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x07b6, code lost:
        if (r2.users.size() != 1) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x07b8, code lost:
        r3 = r28.messageOwner.action.users.get(0).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x07cd, code lost:
        if (r3 == 0) goto L319;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x07d1, code lost:
        if (r3 != r18) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x07d3, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedYouToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedYouToCall, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x07e8, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x07f4, code lost:
        if (r0 != null) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x07f6, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x07f7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedToCall, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0812, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0822, code lost:
        if (r3 >= r28.messageOwner.action.users.size()) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0824, code lost:
        r4 = getMessagesController().getUser(r28.messageOwner.action.users.get(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0838, code lost:
        if (r4 == null) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x083a, code lost:
        r4 = org.telegram.messenger.UserObject.getUserName(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0842, code lost:
        if (r2.length() == 0) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0844, code lost:
        r2.append(", ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0849, code lost:
        r2.append(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x084c, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x084f, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationGroupInvitedToCall", org.telegram.messenger.C3634R.string.NotificationGroupInvitedToCall, r1, r5.title, r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x086c, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGiftCode) == false) goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x086e, code lost:
        r2 = (org.telegram.tgnet.TLRPC$TL_messageActionGiftCode) r2;
        r0 = org.telegram.messenger.MessagesController.getInstance(r27.currentAccount).getChat(java.lang.Long.valueOf(-org.telegram.messenger.DialogObject.getPeerDialogId(r2.boost_peer)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0887, code lost:
        if (r0 != null) goto L337;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x088a, code lost:
        r20 = r0.title;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x088e, code lost:
        if (r20 != null) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0890, code lost:
        r0 = org.telegram.messenger.LocaleController.getString("BoostingReceivedGiftNoName", org.telegram.messenger.C3634R.string.BoostingReceivedGiftNoName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0899, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGiftCode", org.telegram.messenger.C3634R.string.NotificationMessageGiftCode, r20, org.telegram.messenger.LocaleController.formatPluralString("Months", r2.months, new java.lang.Object[0]));
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x08bd, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink) == false) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x08d7, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle) == false) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x08ed, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto) != false) goto L583;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x08f1, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto) == false) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x08f7, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser) == false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x08f9, code lost:
        r2 = r2.user_id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x08fd, code lost:
        if (r2 != r18) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0919, code lost:
        if (r2 != r25) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x092d, code lost:
        r0 = getMessagesController().getUser(java.lang.Long.valueOf(r28.messageOwner.action.user_id));
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x093f, code lost:
        if (r0 != null) goto L368;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0941, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0960, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatCreate) == false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x096c, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate) == false) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0978, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatMigrateTo) == false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0990, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom) == false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x09a4, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken) == false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x09b0, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionPinMessage) == false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x09b8, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L479;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x09bc, code lost:
        if (r5.megagroup == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x09c0, code lost:
        r1 = r28.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x09c2, code lost:
        if (r1 != null) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x09dc, code lost:
        if (r1.isMusic() == false) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x09de, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusicChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedMusicChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x09f4, code lost:
        if (r1.isVideo() == false) goto L411;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x09fa, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0a04, code lost:
        if (android.text.TextUtils.isEmpty(r1.messageOwner.message) != false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0a06, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "📹 " + r1.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0a2c, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedVideoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0a42, code lost:
        if (r1.isGif() == false) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0a48, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0a52, code lost:
        if (android.text.TextUtils.isEmpty(r1.messageOwner.message) != false) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0098, code lost:
        if (r12.getBoolean("EnablePreviewGroup", true) != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x0a54, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "🎬 " + r1.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0a7a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGifChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGifChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0a92, code lost:
        if (r1.isVoice() == false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x0a94, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoiceChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedVoiceChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x0aa8, code lost:
        if (r1.isRoundVideo() == false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0aaa, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRoundChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedRoundChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0abe, code lost:
        if (r1.isSticker() != false) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0ac4, code lost:
        if (r1.isAnimatedSticker() == false) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x0ac8, code lost:
        r2 = r1.messageOwner;
        r6 = r2.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0ace, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0ad4, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0adc, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0ade, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "📎 " + r1.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0b04, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFileChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedFileChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0b18, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L474;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0b1c, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0b22, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L444;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x0b24, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLiveChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoLiveChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0b38, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0b3a, code lost:
        r0 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r28.messageOwner.media;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContactChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedContactChannel2, r5.title, org.telegram.messenger.ContactsController.formatName(r0.first_name, r0.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0b5f, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L453;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0b61, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x0b67, code lost:
        if (r0.quiz == false) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x0b69, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuizChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedQuizChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0b80, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPollChannel2", org.telegram.messenger.C3634R.string.NotificationActionPinnedPollChannel2, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0b99, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x0b9f, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0ba7, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0ba9, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel, r5.title, "🖼 " + r1.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x0bcf, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhotoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedPhotoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0be5, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0be7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGameChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGameChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x0bf7, code lost:
        r0 = r1.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x0bf9, code lost:
        if (r0 == null) goto L473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0bff, code lost:
        if (r0.length() <= 0) goto L473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x0c01, code lost:
        r0 = r1.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x0c07, code lost:
        if (r0.length() <= 20) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0c09, code lost:
        r1 = new java.lang.StringBuilder();
        r2 = 0;
        r1.append((java.lang.Object) r0.subSequence(0, 20));
        r1.append("...");
        r0 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x0c20, code lost:
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0c21, code lost:
        r1 = org.telegram.messenger.C3634R.string.NotificationActionPinnedTextChannel;
        r3 = new java.lang.Object[2];
        r3[r2] = r5.title;
        r3[1] = r0;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedTextChannel", r1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x0c33, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x0c45, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a6, code lost:
        if (r12.getBoolean("EnablePreviewChannel", r3) == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x0c57, code lost:
        r0 = r1.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x0c5c, code lost:
        if (r0 == null) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0c5e, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmojiChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerEmojiChannel, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0c72, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0c83, code lost:
        r4 = r28.replyMessageObject;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0c86, code lost:
        if (r4 != null) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0ca2, code lost:
        if (r4.isMusic() == false) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0ca4, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedMusic", org.telegram.messenger.C3634R.string.NotificationActionPinnedMusic, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0cbc, code lost:
        if (r4.isVideo() == false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x0cc2, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L493;
     */
    /* JADX WARN: Code restructure failed: missing block: B:505:0x0ccc, code lost:
        if (android.text.TextUtils.isEmpty(r4.messageOwner.message) != false) goto L493;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0cce, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "📹 " + r4.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0cf7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVideo", org.telegram.messenger.C3634R.string.NotificationActionPinnedVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:509:0x0d10, code lost:
        if (r4.isGif() == false) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x0d16, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L501;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x0d20, code lost:
        if (android.text.TextUtils.isEmpty(r4.messageOwner.message) != false) goto L501;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x0d22, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "🎬 " + r4.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0d4b, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGif", org.telegram.messenger.C3634R.string.NotificationActionPinnedGif, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:517:0x0d67, code lost:
        if (r4.isVoice() == false) goto L505;
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x0d69, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedVoice", org.telegram.messenger.C3634R.string.NotificationActionPinnedVoice, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:520:0x0d7f, code lost:
        if (r4.isRoundVideo() == false) goto L508;
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x0d81, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedRound", org.telegram.messenger.C3634R.string.NotificationActionPinnedRound, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0d97, code lost:
        if (r4.isSticker() != false) goto L558;
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:0x0d9d, code lost:
        if (r4.isAnimatedSticker() == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0da1, code lost:
        r2 = r4.messageOwner;
        r6 = r2.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0da7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0dad, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L519;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0db5, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L519;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0db7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "📎 " + r4.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0de0, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedFile", org.telegram.messenger.C3634R.string.NotificationActionPinnedFile, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0df7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L557;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0dfb, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0e01, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0e03, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeoLive", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeoLive, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0e1a, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0e1c, code lost:
        r0 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r28.messageOwner.media;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedContact2", org.telegram.messenger.C3634R.string.NotificationActionPinnedContact2, r1, r5.title, org.telegram.messenger.ContactsController.formatName(r0.first_name, r0.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0e44, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0e46, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r6).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0e4c, code lost:
        if (r0.quiz == false) goto L535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0e4e, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedQuiz2", org.telegram.messenger.C3634R.string.NotificationActionPinnedQuiz2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0e68, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPoll2", org.telegram.messenger.C3634R.string.NotificationActionPinnedPoll2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0e84, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L544;
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x0e8a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0e92, code lost:
        if (android.text.TextUtils.isEmpty(r2.message) != false) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0e94, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", org.telegram.messenger.C3634R.string.NotificationActionPinnedText, r1, "🖼 " + r4.messageOwner.message, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0ebd, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedPhoto", org.telegram.messenger.C3634R.string.NotificationActionPinnedPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0ed7, code lost:
        if ((r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L547;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0ed9, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGame", org.telegram.messenger.C3634R.string.NotificationActionPinnedGame, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0eeb, code lost:
        r0 = r4.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0eed, code lost:
        if (r0 == null) goto L556;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0ef3, code lost:
        if (r0.length() <= 0) goto L556;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0ef5, code lost:
        r0 = r4.messageText;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0efb, code lost:
        if (r0.length() <= 20) goto L555;
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0efd, code lost:
        r2 = new java.lang.StringBuilder();
        r6 = 0;
        r2.append((java.lang.Object) r0.subSequence(0, 20));
        r2.append("...");
        r0 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0f14, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0f15, code lost:
        r2 = org.telegram.messenger.C3634R.string.NotificationActionPinnedText;
        r3 = new java.lang.Object[3];
        r3[r6] = r1;
        r3[1] = r0;
        r3[2] = r5.title;
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedText", r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0f2a, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x0f3f, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedGeo", org.telegram.messenger.C3634R.string.NotificationActionPinnedGeo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0f54, code lost:
        r0 = r4.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0f5a, code lost:
        if (r0 == null) goto L561;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0f5c, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedStickerEmoji", org.telegram.messenger.C3634R.string.NotificationActionPinnedStickerEmoji, r1, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0f72, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedSticker", org.telegram.messenger.C3634R.string.NotificationActionPinnedSticker, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x0f87, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) == false) goto L566;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x0f93, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) == false) goto L578;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0f95, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageActionSetChatTheme) r2).emoticon;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0f9d, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L574;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0fa1, code lost:
        if (r3 != r18) goto L573;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0fa3, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChatThemeDisabledYou", org.telegram.messenger.C3634R.string.ChatThemeDisabledYou, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0fb0, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChatThemeDisabled", org.telegram.messenger.C3634R.string.ChatThemeDisabled, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0fc7, code lost:
        if (r3 != r18) goto L577;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0fc9, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChangedChatThemeYou", org.telegram.messenger.C3634R.string.ChatThemeChangedYou, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0fd7, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChangedChatThemeTo", org.telegram.messenger.C3634R.string.ChatThemeChangedTo, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x0fea, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByRequest) == false) goto L582;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0ffc, code lost:
        if (r12.peer_id.channel_id == 0) goto L593;
     */
    /* JADX WARN: Code restructure failed: missing block: B:599:0x1000, code lost:
        if (r5.megagroup != false) goto L593;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x1006, code lost:
        if (r28.isVideoAvatar() == false) goto L591;
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x1031, code lost:
        if (r28.isVideoAvatar() == false) goto L597;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x1061, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r5) == false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x1065, code lost:
        if (r5.megagroup != false) goto L708;
     */
    /* JADX WARN: Code restructure failed: missing block: B:613:0x106b, code lost:
        if (r28.isMediaEmpty() == false) goto L612;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x106d, code lost:
        if (r29 != false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x1077, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:617:0x1079, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, r28.messageOwner.message);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:619:0x10a0, code lost:
        r4 = r28.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x10a8, code lost:
        if ((r4.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L623;
     */
    /* JADX WARN: Code restructure failed: missing block: B:621:0x10aa, code lost:
        if (r29 != false) goto L621;
     */
    /* JADX WARN: Code restructure failed: missing block: B:623:0x10b0, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L621;
     */
    /* JADX WARN: Code restructure failed: missing block: B:625:0x10b8, code lost:
        if (android.text.TextUtils.isEmpty(r4.message) != false) goto L621;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x10ba, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, "🖼 " + r28.messageOwner.message);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:629:0x10f4, code lost:
        if (r28.isVideo() == false) goto L634;
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x10f6, code lost:
        if (r29 != false) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x10fc, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x1106, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x1108, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, "📹 " + r28.messageOwner.message);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x1144, code lost:
        if (r28.isVoice() == false) goto L638;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x1158, code lost:
        if (r28.isRoundVideo() == false) goto L642;
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x116c, code lost:
        if (r28.isMusic() == false) goto L646;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x117c, code lost:
        r8 = r28.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:647:0x1182, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L650;
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x1184, code lost:
        r8 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x11a2, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L656;
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x11a4, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r8).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x11aa, code lost:
        if (r0.quiz == false) goto L655;
     */
    /* JADX WARN: Code restructure failed: missing block: B:653:0x11ac, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageQuiz2", org.telegram.messenger.C3634R.string.ChannelMessageQuiz2, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x11c1, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessagePoll2", org.telegram.messenger.C3634R.string.ChannelMessagePoll2, r1, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x11d8, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) == false) goto L660;
     */
    /* JADX WARN: Code restructure failed: missing block: B:657:0x11da, code lost:
        r8 = (org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:659:0x1200, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L706;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x1204, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:664:0x120a, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L668;
     */
    /* JADX WARN: Code restructure failed: missing block: B:667:0x121e, code lost:
        if ((r8 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L698;
     */
    /* JADX WARN: Code restructure failed: missing block: B:669:0x1224, code lost:
        if (r28.isSticker() != false) goto L694;
     */
    /* JADX WARN: Code restructure failed: missing block: B:671:0x122a, code lost:
        if (r28.isAnimatedSticker() == false) goto L674;
     */
    /* JADX WARN: Code restructure failed: missing block: B:674:0x1232, code lost:
        if (r28.isGif() == false) goto L685;
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x1234, code lost:
        if (r29 != false) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:677:0x123a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:679:0x1244, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:680:0x1246, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, "🎬 " + r28.messageOwner.message);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:682:0x127c, code lost:
        if (r29 != false) goto L692;
     */
    /* JADX WARN: Code restructure failed: missing block: B:684:0x1282, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L692;
     */
    /* JADX WARN: Code restructure failed: missing block: B:686:0x128c, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L692;
     */
    /* JADX WARN: Code restructure failed: missing block: B:687:0x128e, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, "📎 " + r28.messageOwner.message);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:689:0x12c4, code lost:
        r0 = r28.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x12ca, code lost:
        if (r0 == null) goto L697;
     */
    /* JADX WARN: Code restructure failed: missing block: B:691:0x12cc, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageStickerEmoji", org.telegram.messenger.C3634R.string.ChannelMessageStickerEmoji, r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:692:0x12dd, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("ChannelMessageSticker", org.telegram.messenger.C3634R.string.ChannelMessageSticker, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:694:0x12ec, code lost:
        if (r29 != false) goto L704;
     */
    /* JADX WARN: Code restructure failed: missing block: B:696:0x12f4, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageText) != false) goto L704;
     */
    /* JADX WARN: Code restructure failed: missing block: B:697:0x12f6, code lost:
        r20 = org.telegram.messenger.LocaleController.formatString("NotificationMessageText", org.telegram.messenger.C3634R.string.NotificationMessageText, r1, r28.messageText);
        r30[0] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:701:0x132d, code lost:
        if (r28.isMediaEmpty() == false) goto L717;
     */
    /* JADX WARN: Code restructure failed: missing block: B:702:0x132f, code lost:
        if (r29 != false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:704:0x1339, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L715;
     */
    /* JADX WARN: Code restructure failed: missing block: B:707:0x136a, code lost:
        r9 = r21;
        r3 = r28.messageOwner;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x1372, code lost:
        if ((r3.media instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto) == false) goto L728;
     */
    /* JADX WARN: Code restructure failed: missing block: B:709:0x1374, code lost:
        if (r29 != false) goto L726;
     */
    /* JADX WARN: Code restructure failed: missing block: B:711:0x137a, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L726;
     */
    /* JADX WARN: Code restructure failed: missing block: B:713:0x1382, code lost:
        if (android.text.TextUtils.isEmpty(r3.message) != false) goto L726;
     */
    /* JADX WARN: Code restructure failed: missing block: B:717:0x13c6, code lost:
        if (r28.isVideo() == false) goto L739;
     */
    /* JADX WARN: Code restructure failed: missing block: B:718:0x13c8, code lost:
        if (r29 != false) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x13ce, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:722:0x13d8, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:726:0x141f, code lost:
        if (r28.isVoice() == false) goto L743;
     */
    /* JADX WARN: Code restructure failed: missing block: B:729:0x1437, code lost:
        if (r28.isRoundVideo() == false) goto L747;
     */
    /* JADX WARN: Code restructure failed: missing block: B:732:0x144f, code lost:
        if (r28.isMusic() == false) goto L751;
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x1463, code lost:
        r3 = r28.messageOwner.media;
     */
    /* JADX WARN: Code restructure failed: missing block: B:735:0x1469, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaContact) == false) goto L755;
     */
    /* JADX WARN: Code restructure failed: missing block: B:736:0x146b, code lost:
        r3 = (org.telegram.tgnet.TLRPC$TL_messageMediaContact) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x148f, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPoll) == false) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:739:0x1491, code lost:
        r0 = ((org.telegram.tgnet.TLRPC$TL_messageMediaPoll) r3).poll;
     */
    /* JADX WARN: Code restructure failed: missing block: B:740:0x1497, code lost:
        if (r0.quiz == false) goto L760;
     */
    /* JADX WARN: Code restructure failed: missing block: B:741:0x1499, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupQuiz2", org.telegram.messenger.C3634R.string.NotificationMessageGroupQuiz2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:742:0x14b3, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupPoll2", org.telegram.messenger.C3634R.string.NotificationMessageGroupPoll2, r1, r5.title, r0.question);
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x14cf, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGame) == false) goto L765;
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x14ef, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) == false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x14f1, code lost:
        r3 = (org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x1518, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeo) != false) goto L814;
     */
    /* JADX WARN: Code restructure failed: missing block: B:752:0x151c, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaVenue) == false) goto L773;
     */
    /* JADX WARN: Code restructure failed: missing block: B:755:0x1522, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive) == false) goto L777;
     */
    /* JADX WARN: Code restructure failed: missing block: B:758:0x153a, code lost:
        if ((r3 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument) == false) goto L807;
     */
    /* JADX WARN: Code restructure failed: missing block: B:760:0x1540, code lost:
        if (r28.isSticker() != false) goto L803;
     */
    /* JADX WARN: Code restructure failed: missing block: B:762:0x1546, code lost:
        if (r28.isAnimatedSticker() == false) goto L783;
     */
    /* JADX WARN: Code restructure failed: missing block: B:765:0x154e, code lost:
        if (r28.isGif() == false) goto L794;
     */
    /* JADX WARN: Code restructure failed: missing block: B:766:0x1550, code lost:
        if (r29 != false) goto L792;
     */
    /* JADX WARN: Code restructure failed: missing block: B:768:0x1556, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L792;
     */
    /* JADX WARN: Code restructure failed: missing block: B:770:0x1560, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L792;
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x15a0, code lost:
        if (r29 != false) goto L801;
     */
    /* JADX WARN: Code restructure failed: missing block: B:775:0x15a6, code lost:
        if (android.os.Build.VERSION.SDK_INT < 19) goto L801;
     */
    /* JADX WARN: Code restructure failed: missing block: B:777:0x15b0, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageOwner.message) != false) goto L801;
     */
    /* JADX WARN: Code restructure failed: missing block: B:780:0x15f0, code lost:
        r0 = r28.getStickerEmoji();
     */
    /* JADX WARN: Code restructure failed: missing block: B:781:0x15f6, code lost:
        if (r0 == null) goto L806;
     */
    /* JADX WARN: Code restructure failed: missing block: B:782:0x15f8, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupStickerEmoji", org.telegram.messenger.C3634R.string.NotificationMessageGroupStickerEmoji, r1, r5.title, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:783:0x160e, code lost:
        r0 = org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupSticker", org.telegram.messenger.C3634R.string.NotificationMessageGroupSticker, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x1621, code lost:
        if (r29 != false) goto L812;
     */
    /* JADX WARN: Code restructure failed: missing block: B:786:0x1629, code lost:
        if (android.text.TextUtils.isEmpty(r28.messageText) != false) goto L812;
     */
    /* JADX WARN: Code restructure failed: missing block: B:811:?, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationInvitedToGroupByLink", org.telegram.messenger.C3634R.string.NotificationInvitedToGroupByLink, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:813:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupName", org.telegram.messenger.C3634R.string.NotificationEditedGroupName, r1, r2.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickYou", org.telegram.messenger.C3634R.string.NotificationGroupKickYou, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:815:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupLeftMember", org.telegram.messenger.C3634R.string.NotificationGroupLeftMember, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:816:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationGroupKickMember", org.telegram.messenger.C3634R.string.NotificationGroupKickMember, r1, r5.title, org.telegram.messenger.UserObject.getUserName(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:817:?, code lost:
        return r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:?, code lost:
        return r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:819:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3634R.string.ActionMigrateFromGroupNotify, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:820:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ActionMigrateFromGroupNotify", org.telegram.messenger.C3634R.string.ActionMigrateFromGroupNotify, r2.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:821:?, code lost:
        return r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:822:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoTextChannel", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoTextChannel, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:823:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationActionPinnedNoText", org.telegram.messenger.C3634R.string.NotificationActionPinnedNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:824:?, code lost:
        return r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:825:?, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:826:?, code lost:
        return r28.messageText.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:827:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelVideoEditNotification", org.telegram.messenger.C3634R.string.ChannelVideoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:828:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelPhotoEditNotification", org.telegram.messenger.C3634R.string.ChannelPhotoEditNotification, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:829:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupVideo", org.telegram.messenger.C3634R.string.NotificationEditedGroupVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:830:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationEditedGroupPhoto", org.telegram.messenger.C3634R.string.NotificationEditedGroupPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:831:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:832:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageNoText", org.telegram.messenger.C3634R.string.ChannelMessageNoText, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:834:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessagePhoto", org.telegram.messenger.C3634R.string.ChannelMessagePhoto, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:835:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:836:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageVideo", org.telegram.messenger.C3634R.string.ChannelMessageVideo, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageAudio", org.telegram.messenger.C3634R.string.ChannelMessageAudio, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:838:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageRound", org.telegram.messenger.C3634R.string.ChannelMessageRound, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:839:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageMusic", org.telegram.messenger.C3634R.string.ChannelMessageMusic, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:840:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageContact2", org.telegram.messenger.C3634R.string.ChannelMessageContact2, r1, org.telegram.messenger.ContactsController.formatName(r8.first_name, r8.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:841:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageChannelGiveaway", org.telegram.messenger.C3634R.string.NotificationMessageChannelGiveaway, r5.title, java.lang.Integer.valueOf(r8.quantity), java.lang.Integer.valueOf(r8.months));
     */
    /* JADX WARN: Code restructure failed: missing block: B:842:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageLiveLocation", org.telegram.messenger.C3634R.string.ChannelMessageLiveLocation, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:843:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:844:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageGIF", org.telegram.messenger.C3634R.string.ChannelMessageGIF, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:845:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:846:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageDocument", org.telegram.messenger.C3634R.string.ChannelMessageDocument, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:847:?, code lost:
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:848:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageNoText", org.telegram.messenger.C3634R.string.ChannelMessageNoText, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:849:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("ChannelMessageMap", org.telegram.messenger.C3634R.string.ChannelMessageMap, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:850:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, r28.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:851:?, code lost:
        return org.telegram.messenger.LocaleController.formatString(r21, org.telegram.messenger.C3634R.string.NotificationMessageGroupNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:852:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, "🖼 " + r28.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:853:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupPhoto", org.telegram.messenger.C3634R.string.NotificationMessageGroupPhoto, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:854:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, "📹 " + r28.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:855:?, code lost:
        return org.telegram.messenger.LocaleController.formatString(" ", org.telegram.messenger.C3634R.string.NotificationMessageGroupVideo, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:856:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupAudio", org.telegram.messenger.C3634R.string.NotificationMessageGroupAudio, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:857:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupRound", org.telegram.messenger.C3634R.string.NotificationMessageGroupRound, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:858:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupMusic", org.telegram.messenger.C3634R.string.NotificationMessageGroupMusic, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:859:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupContact2", org.telegram.messenger.C3634R.string.NotificationMessageGroupContact2, r1, r5.title, org.telegram.messenger.ContactsController.formatName(r3.first_name, r3.last_name));
     */
    /* JADX WARN: Code restructure failed: missing block: B:860:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupGame", org.telegram.messenger.C3634R.string.NotificationMessageGroupGame, r1, r5.title, r3.game.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:861:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageChannelGiveaway", org.telegram.messenger.C3634R.string.NotificationMessageChannelGiveaway, r5.title, java.lang.Integer.valueOf(r3.quantity), java.lang.Integer.valueOf(r3.months));
     */
    /* JADX WARN: Code restructure failed: missing block: B:862:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupLiveLocation", org.telegram.messenger.C3634R.string.NotificationMessageGroupLiveLocation, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:863:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, "🎬 " + r28.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupGif", org.telegram.messenger.C3634R.string.NotificationMessageGroupGif, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:865:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, "📎 " + r28.messageOwner.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:866:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupDocument", org.telegram.messenger.C3634R.string.NotificationMessageGroupDocument, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:867:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupText", org.telegram.messenger.C3634R.string.NotificationMessageGroupText, r1, r5.title, r28.messageText);
     */
    /* JADX WARN: Code restructure failed: missing block: B:868:?, code lost:
        return org.telegram.messenger.LocaleController.formatString(r9, org.telegram.messenger.C3634R.string.NotificationMessageGroupNoText, r1, r5.title);
     */
    /* JADX WARN: Code restructure failed: missing block: B:869:?, code lost:
        return org.telegram.messenger.LocaleController.formatString("NotificationMessageGroupMap", org.telegram.messenger.C3634R.string.NotificationMessageGroupMap, r1, r5.title);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getStringForMessage(org.telegram.messenger.MessageObject r28, boolean r29, boolean[] r30, boolean[] r31) {
        /*
            Method dump skipped, instructions count: 5818
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
            FileLog.m99e(e);
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
            FileLog.m99e(e);
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
            FileLog.m99e(e);
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
            FileLog.m99e(e2);
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
                this.soundIn = this.soundPool.load(ApplicationLoader.applicationContext, C3634R.raw.sound_in, 1);
            }
            int i = this.soundIn;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playInChatSound$34(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
    }

    private void scheduleNotificationDelay(boolean z) {
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m102d("delay notification start, onlineReason = " + z);
            }
            this.notificationDelayWakelock.acquire(10000L);
            DispatchQueue dispatchQueue = notificationsQueue;
            dispatchQueue.cancelRunnable(this.notificationDelayRunnable);
            dispatchQueue.postRunnable(this.notificationDelayRunnable, z ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : 1000);
        } catch (Exception e) {
            FileLog.m99e(e);
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
                        FileLog.m99e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m102d("delete channel internal " + string);
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
                        FileLog.m99e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m102d("delete channel internal " + string2);
                    }
                }
            }
            edit.commit();
        } catch (Exception e3) {
            FileLog.m99e(e3);
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
                        FileLog.m99e(e);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m102d("delete channel global internal " + string);
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
                        FileLog.m99e(e2);
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m102d("delete channel global internal " + string2);
                    }
                }
            }
            edit.remove(i == 2 ? "overwrite_channel" : i == 0 ? "overwrite_group" : i == 3 ? "overwrite_stories" : "overwrite_private");
            edit.commit();
        } catch (Exception e3) {
            FileLog.m99e(e3);
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
                            FileLog.m102d("delete all channel " + str);
                        }
                    }
                    edit.remove(key);
                }
            }
            edit.commit();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private boolean unsupportedNotificationShortcut() {
        return Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBubbles;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f7 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:9:0x0021, B:12:0x0063, B:14:0x006d, B:18:0x007d, B:20:0x00a6, B:22:0x00b6, B:24:0x00c0, B:26:0x00f7, B:28:0x0100, B:30:0x0109, B:39:0x012a, B:43:0x0141, B:44:0x0158, B:32:0x0110, B:34:0x0116, B:36:0x011b, B:35:0x0119, B:37:0x0120, B:27:0x00fc, B:17:0x0079, B:13:0x0068), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fc A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:9:0x0021, B:12:0x0063, B:14:0x006d, B:18:0x007d, B:20:0x00a6, B:22:0x00b6, B:24:0x00c0, B:26:0x00f7, B:28:0x0100, B:30:0x0109, B:39:0x012a, B:43:0x0141, B:44:0x0158, B:32:0x0110, B:34:0x0116, B:36:0x011b, B:35:0x0119, B:37:0x0120, B:27:0x00fc, B:17:0x0079, B:13:0x0068), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0109 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:9:0x0021, B:12:0x0063, B:14:0x006d, B:18:0x007d, B:20:0x00a6, B:22:0x00b6, B:24:0x00c0, B:26:0x00f7, B:28:0x0100, B:30:0x0109, B:39:0x012a, B:43:0x0141, B:44:0x0158, B:32:0x0110, B:34:0x0116, B:36:0x011b, B:35:0x0119, B:37:0x0120, B:27:0x00fc, B:17:0x0079, B:13:0x0068), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012a A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:9:0x0021, B:12:0x0063, B:14:0x006d, B:18:0x007d, B:20:0x00a6, B:22:0x00b6, B:24:0x00c0, B:26:0x00f7, B:28:0x0100, B:30:0x0109, B:39:0x012a, B:43:0x0141, B:44:0x0158, B:32:0x0110, B:34:0x0116, B:36:0x011b, B:35:0x0119, B:37:0x0120, B:27:0x00fc, B:17:0x0079, B:13:0x0068), top: B:49:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0158 A[Catch: Exception -> 0x015c, TRY_LEAVE, TryCatch #0 {Exception -> 0x015c, blocks: (B:9:0x0021, B:12:0x0063, B:14:0x006d, B:18:0x007d, B:20:0x00a6, B:22:0x00b6, B:24:0x00c0, B:26:0x00f7, B:28:0x0100, B:30:0x0109, B:39:0x012a, B:43:0x0141, B:44:0x0158, B:32:0x0110, B:34:0x0116, B:36:0x011b, B:35:0x0119, B:37:0x0120, B:27:0x00fc, B:17:0x0079, B:13:0x0068), top: B:49:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String createNotificationShortcut(androidx.core.app.NotificationCompat.Builder r17, long r18, java.lang.String r20, org.telegram.tgnet.TLRPC$User r21, org.telegram.tgnet.TLRPC$Chat r22, androidx.core.app.Person r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 353
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
                FileLog.m99e(e);
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
                arrayList.add(new NotificationChannelGroup(str2, LocaleController.getString("NotificationsChannels", C3634R.string.NotificationsChannels) + str7));
            }
            if (str3 != null) {
                arrayList.add(new NotificationChannelGroup(str3, LocaleController.getString("NotificationsGroups", C3634R.string.NotificationsGroups) + str7));
            }
            if (str5 != null) {
                arrayList.add(new NotificationChannelGroup(str5, LocaleController.getString("NotificationsStories", C3634R.string.NotificationsStories) + str7));
            }
            if (str6 != null) {
                arrayList.add(new NotificationChannelGroup(str6, LocaleController.getString("NotificationsPrivateChats", C3634R.string.NotificationsPrivateChats) + str7));
            }
            if (str4 != null) {
                arrayList.add(new NotificationChannelGroup(str4, LocaleController.getString("NotificationsOther", C3634R.string.NotificationsOther) + str7));
            }
            systemNotificationManager.createNotificationChannelGroups(arrayList);
        }
        this.channelGroupsCreated = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:210:0x0493 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04e5 A[LOOP:1: B:222:0x04e2->B:224:0x04e5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0502 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0511 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0544  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String validateChannelId(long r29, int r31, java.lang.String r32, long[] r33, int r34, android.net.Uri r35, int r36, boolean r37, boolean r38, boolean r39, int r40) {
        /*
            Method dump skipped, instructions count: 1592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.NotificationsController.validateChannelId(long, int, java.lang.String, long[], int, android.net.Uri, int, boolean, boolean, boolean, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x0356, code lost:
        if (r25 == 0) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0358, code lost:
        r7 = org.telegram.messenger.LocaleController.getString("NotificationHiddenChatName", org.telegram.messenger.C3634R.string.NotificationHiddenChatName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0361, code lost:
        r7 = org.telegram.messenger.LocaleController.getString("NotificationHiddenName", org.telegram.messenger.C3634R.string.NotificationHiddenName);
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0b1c, code lost:
        if (android.os.Build.VERSION.SDK_INT < 26) goto L363;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x033f A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x037d A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03bb A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03fb A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0452 A[Catch: Exception -> 0x0dd7, TRY_ENTER, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04bd A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0580 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0658 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x068b  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x06a2 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x072e  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0846  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x084e A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x085d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0863 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0870  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x087d A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08ee A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x091f A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0a20 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0a61 A[Catch: all -> 0x0a74, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0a69  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0a7b A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0a81  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0ad7  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0c24 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c2e  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0c33 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0c42  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0128 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0134 A[Catch: Exception -> 0x0dd7, TryCatch #2 {Exception -> 0x0dd7, blocks: (B:15:0x0034, B:16:0x003f, B:18:0x0047, B:20:0x0058, B:21:0x005a, B:23:0x005e, B:25:0x0068, B:27:0x0078, B:28:0x007b, B:31:0x0081, B:34:0x0089, B:35:0x009c, B:37:0x00a4, B:38:0x00d9, B:40:0x00f9, B:43:0x0101, B:45:0x0109, B:48:0x0110, B:51:0x0128, B:69:0x01ea, B:71:0x0213, B:73:0x0226, B:75:0x022c, B:77:0x0230, B:79:0x023e, B:81:0x0242, B:83:0x024c, B:85:0x0250, B:87:0x0266, B:89:0x026e, B:93:0x0282, B:97:0x0294, B:99:0x02a0, B:100:0x02a6, B:102:0x02b8, B:104:0x02c8, B:106:0x02ce, B:115:0x02e6, B:117:0x02ef, B:125:0x0311, B:127:0x0317, B:132:0x0327, B:134:0x032f, B:139:0x0339, B:141:0x033f, B:153:0x0374, B:155:0x037d, B:157:0x0385, B:160:0x03b2, B:162:0x03bb, B:173:0x043c, B:176:0x0452, B:181:0x0465, B:187:0x04a7, B:216:0x0582, B:227:0x059b, B:229:0x05b7, B:232:0x05ec, B:234:0x05f6, B:246:0x0658, B:251:0x067e, B:255:0x068d, B:257:0x06a2, B:259:0x06de, B:261:0x0700, B:263:0x0712, B:269:0x0730, B:271:0x0742, B:273:0x0755, B:301:0x0848, B:303:0x084e, B:312:0x0863, B:314:0x0869, B:322:0x087d, B:325:0x0887, B:328:0x0890, B:344:0x08b3, B:347:0x08bc, B:349:0x08ee, B:350:0x08f7, B:352:0x08ff, B:353:0x0912, B:400:0x09b6, B:403:0x0a22, B:405:0x0a26, B:407:0x0a2c, B:419:0x0a7b, B:443:0x0ade, B:470:0x0b2b, B:479:0x0b6a, B:481:0x0b72, B:483:0x0b76, B:485:0x0b7e, B:489:0x0b87, B:507:0x0c24, B:511:0x0c33, B:527:0x0c97, B:529:0x0c9d, B:531:0x0ca1, B:533:0x0cac, B:535:0x0cb2, B:537:0x0cbc, B:539:0x0ccc, B:541:0x0cd8, B:543:0x0cf7, B:544:0x0cfc, B:546:0x0d2a, B:547:0x0d39, B:551:0x0d63, B:553:0x0d69, B:555:0x0d71, B:557:0x0d77, B:559:0x0d89, B:560:0x0da0, B:561:0x0db6, B:515:0x0c45, B:522:0x0c66, B:524:0x0c7a, B:490:0x0bb3, B:491:0x0bb8, B:492:0x0bbb, B:494:0x0bc1, B:497:0x0bcb, B:499:0x0bd3, B:503:0x0c11, B:504:0x0c19, B:473:0x0b35, B:475:0x0b3d, B:477:0x0b65, B:526:0x0c83, B:453:0x0af4, B:457:0x0b02, B:460:0x0b0b, B:463:0x0b16, B:421:0x0a83, B:423:0x0a90, B:355:0x091f, B:357:0x0927, B:360:0x0932, B:363:0x0940, B:364:0x0948, B:366:0x094e, B:369:0x0953, B:371:0x095c, B:374:0x0964, B:376:0x0968, B:378:0x096c, B:380:0x0974, B:384:0x097f, B:386:0x0985, B:388:0x0989, B:390:0x0992, B:394:0x099a, B:396:0x09a6, B:398:0x09ac, B:272:0x074e, B:274:0x0782, B:276:0x079a, B:278:0x07ad, B:277:0x07a6, B:284:0x07eb, B:286:0x07f3, B:291:0x080b, B:290:0x0806, B:260:0x06ec, B:235:0x060f, B:237:0x0625, B:238:0x0631, B:240:0x0635, B:182:0x0479, B:184:0x047e, B:185:0x0492, B:188:0x04bd, B:190:0x04e0, B:192:0x04f8, B:194:0x04fc, B:212:0x0563, B:200:0x050a, B:201:0x0510, B:205:0x051d, B:206:0x0531, B:208:0x0536, B:209:0x054a, B:210:0x055d, B:213:0x0571, B:167:0x03cd, B:171:0x03dc, B:172:0x03fb, B:158:0x0392, B:149:0x0358, B:150:0x0361, B:151:0x036a, B:130:0x0320, B:131:0x0323, B:107:0x02d1, B:109:0x02d7, B:92:0x0280, B:52:0x0134, B:54:0x013a, B:55:0x013e, B:58:0x0146, B:59:0x0150, B:60:0x0163, B:62:0x0169, B:63:0x0181, B:65:0x0188, B:67:0x0190, B:68:0x01c0, B:49:0x011b, B:70:0x0209, B:409:0x0a45, B:411:0x0a61, B:413:0x0a6a, B:501:0x0bdd, B:337:0x08a4), top: B:571:0x0034, inners: #3, #4 }] */
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
            Method dump skipped, instructions count: 3553
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
        String string = LocaleController.getString("DefaultRingtone", C3634R.string.DefaultRingtone);
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
    /* JADX WARN: Code restructure failed: missing block: B:161:0x03ca, code lost:
        if (r5.local_id != 0) goto L631;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0fa2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0fa3, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0528  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x055a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0613  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0655 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x06d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x06fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0832 A[LOOP:5: B:337:0x082a->B:339:0x0832, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0877  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x087d  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0889  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0929  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09af  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0a9b  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0b98  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0b9b  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0bc7  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0c22  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0c51  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c5a  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0c7b  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0cc1  */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0d3b  */
    /* JADX WARN: Removed duplicated region for block: B:540:0x0d62  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0da4  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0dc3  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0e24  */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0e61  */
    /* JADX WARN: Removed duplicated region for block: B:564:0x0e88  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0eab  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x0ec8  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x0eeb  */
    /* JADX WARN: Removed duplicated region for block: B:576:0x0f1f  */
    /* JADX WARN: Removed duplicated region for block: B:580:0x0f8b A[Catch: Exception -> 0x0fa2, TryCatch #9 {Exception -> 0x0fa2, blocks: (B:578:0x0f6c, B:580:0x0f8b, B:581:0x0f92), top: B:697:0x0f6c }] */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0fa8  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0fb3  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0fb8  */
    /* JADX WARN: Removed duplicated region for block: B:595:0x0fc6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:603:0x0fdf  */
    /* JADX WARN: Removed duplicated region for block: B:605:0x0fe4  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0ff0  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0ffd  */
    /* JADX WARN: Removed duplicated region for block: B:626:0x107a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:635:0x10ac  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x1135  */
    /* JADX WARN: Removed duplicated region for block: B:647:0x1182  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x119c  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x11ec  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x066f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:695:0x0ba4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
            Method dump skipped, instructions count: 4691
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
        int f1542id;
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
            this.f1542id = i;
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
                FileLog.m97w("show dialog notification with id " + this.f1542id + " " + this.dialogId + " user=" + this.user + " chat=" + this.chat);
            }
            try {
                NotificationsController.notificationManager.notify(this.f1542id, this.notification.build());
            } catch (SecurityException e) {
                FileLog.m99e(e);
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
        int m104dp = AndroidUtilities.m104dp(64);
        Bitmap createBitmap = Bitmap.createBitmap(m104dp, m104dp, Bitmap.Config.ARGB_8888);
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
            float f9 = m104dp;
            float f10 = (f7 - f8) * f9;
            try {
                size = (f10 / arrayList.size()) * ((arrayList.size() - 1) - i3);
                size2 = i3 * (f10 / arrayList.size());
                f3 = f9 * f8;
                f4 = f3 / 2.0f;
                i = m104dp;
                f5 = size + f4;
                f = f8;
                f6 = size2 + f4;
                bitmap = createBitmap;
                try {
                    try {
                        canvas.drawCircle(f5, f6, AndroidUtilities.m104dp(2) + f4, paint3);
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
                        m104dp = i;
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
                i = m104dp;
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
                    m104dp = i;
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
                        m104dp = i;
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
                    m104dp = i;
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
                            iArr[0] = Theme.getColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(tLRPC$User.f1749id)]);
                            try {
                                iArr[1] = Theme.getColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(tLRPC$User.f1749id)]);
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
                                                            m104dp = i;
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
                                                        m104dp = i;
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
                                                    m104dp = i;
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
                                m104dp = i;
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
                            m104dp = i;
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
                    m104dp = i;
                    f8 = f;
                    createBitmap = bitmap;
                    z2 = z;
                    paint3 = paint;
                }
                i3 = i2 + 1;
                arrayList2 = arrayList;
                c2 = c;
                f7 = f2;
                m104dp = i;
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
            m104dp = i;
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
            FileLog.m99e(e);
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
                this.soundOut = this.soundPool.load(ApplicationLoader.applicationContext, C3634R.raw.sound_out, 1);
            }
            int i = this.soundOut;
            if (i != 0) {
                try {
                    this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playOutChatSound$43(SoundPool soundPool, int i, int i2) {
        if (i2 == 0) {
            try {
                soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
            } catch (Exception e) {
                FileLog.m99e(e);
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
            tLRPC$TL_notificationSoundRingtone.f1720id = j2;
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
            tLRPC$TL_notificationSoundRingtone.f1720id = j;
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
    /* loaded from: classes4.dex */
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

    /* loaded from: classes4.dex */
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
