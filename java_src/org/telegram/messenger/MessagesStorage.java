package org.telegram.messenger;

import android.appwidget.AppWidgetManager;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.collection.LongSparseArray;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLiteException;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.TopicsController;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.DialogsSearchAdapter;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$ChatParticipants;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DraftMessage;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$InputChannel;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessageReplies;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$Poll;
import org.telegram.tgnet.TLRPC$PollResults;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_channelFull;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_chatFull;
import org.telegram.tgnet.TLRPC$TL_chatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$TL_dialog;
import org.telegram.tgnet.TLRPC$TL_folderPeer;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_inputFolderPeer;
import org.telegram.tgnet.TLRPC$TL_inputMessageEntityMentionName;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser;
import org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached;
import org.telegram.tgnet.TLRPC$TL_messageActionGiftCode;
import org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate;
import org.telegram.tgnet.TLRPC$TL_messageActionTopicEdit;
import org.telegram.tgnet.TLRPC$TL_messageEntityCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_messageEntityMentionName;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaGiveaway;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported_old;
import org.telegram.tgnet.TLRPC$TL_messageReactions;
import org.telegram.tgnet.TLRPC$TL_message_secret;
import org.telegram.tgnet.TLRPC$TL_messages_botCallbackAnswer;
import org.telegram.tgnet.TLRPC$TL_messages_botResults;
import org.telegram.tgnet.TLRPC$TL_messages_messages;
import org.telegram.tgnet.TLRPC$TL_peerChannel;
import org.telegram.tgnet.TLRPC$TL_peerChat;
import org.telegram.tgnet.TLRPC$TL_peerNotifySettings;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_replyInlineMarkup;
import org.telegram.tgnet.TLRPC$TL_updates;
import org.telegram.tgnet.TLRPC$TL_updates_channelDifferenceTooLong;
import org.telegram.tgnet.TLRPC$TL_userStatusLastMonth;
import org.telegram.tgnet.TLRPC$TL_userStatusLastWeek;
import org.telegram.tgnet.TLRPC$TL_userStatusRecently;
import org.telegram.tgnet.TLRPC$TL_username;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import org.telegram.tgnet.TLRPC$UserStatus;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$messages_Dialogs;
import org.telegram.tgnet.TLRPC$messages_Messages;
import p033j$.util.function.Consumer;
import timber.log.Timber;
/* loaded from: classes4.dex */
public class MessagesStorage extends BaseController {
    public static final String[] DATABASE_TABLES;
    public static final int LAST_DB_VERSION = 136;
    private final int[][] adminCounters;
    private final ArrayList<MessagesController.DialogFilter> archiveSortingFilters;
    private int archiveUnreadCount;
    private int[][] bots;
    private File cacheFile;
    private int[][] channels;
    private int[][] contacts;
    private SQLiteDatabase database;
    private boolean databaseCreated;
    private boolean databaseMigrationInProgress;
    private final int[][] deletedCounters;
    private ArrayList<MessagesController.DialogFilter> dialogFilters;
    private SparseArray<MessagesController.DialogFilter> dialogFiltersMap;
    private LongSparseIntArray dialogIsForum;
    private LongSparseArray<Integer> dialogsWithMentions;
    private LongSparseArray<Integer> dialogsWithUnread;
    private int[][] groups;
    private int lastDateValue;
    private int lastPtsValue;
    private int lastQtsValue;
    private int lastSavedDate;
    private int lastSavedPts;
    private int lastSavedQts;
    private int lastSavedSeq;
    private int lastSecretVersion;
    private int lastSeqValue;
    private AtomicLong lastTaskId;
    private final int[][] liveChatsCounters;
    private int mainUnreadCount;
    private int[] mentionChannels;
    private int[] mentionGroups;
    private final int[][] mentionedCounters;
    private int[][] nonContacts;
    private CountDownLatch openSync;
    private final int[][] ownerCounters;
    private volatile int pendingArchiveUnreadCount;
    private volatile int pendingMainUnreadCount;
    private final int[][] privateGroupsCounters;
    private final int[][] publicGroupsCounters;
    private final int[][] secretChatsCounters;
    private int secretG;
    private byte[] secretPBytes;
    private File shmCacheFile;
    public boolean showClearDatabaseAlert;
    private final ArrayList<MessagesController.DialogFilter> sortingFilters;
    private DispatchQueue storageQueue;
    private SparseArray<ArrayList<Runnable>> tasks;
    boolean tryRecover;
    private LongSparseArray<Boolean> unknownDialogsIds;
    private File walCacheFile;
    private static volatile MessagesStorage[] Instance = new MessagesStorage[5];
    private static final Object[] lockObjects = new Object[5];

    /* loaded from: classes4.dex */
    public interface BooleanCallback {
        void run(boolean z);
    }

    /* loaded from: classes4.dex */
    public interface IntCallback {
        void run(int i);
    }

    /* loaded from: classes4.dex */
    public interface LongCallback {
        void run(long j);
    }

    /* loaded from: classes4.dex */
    public interface StringCallback {
        void run(String str);
    }

    public ArrayList<Long> markMessagesAsDeleted(long j, ArrayList<Integer> arrayList, boolean z, boolean z2, boolean z3) {
        return markMessagesAsDeleted(j, arrayList, z, z2, z3, null);
    }

    private ArrayList<Long> markMessagesAsDeletedInternal(long j, ArrayList<Integer> arrayList, boolean z, boolean z2) {
        return lambda$markMessagesAsDeleted$192(j, arrayList, z, z2, null);
    }

    public void getDialogFolderId(long j, IntCallback intCallback) {
        getDialogFolderId(j, intCallback, null, null);
    }

    public ArrayList<MessagesController.DialogFilter> getSortingFilters() {
        return this.sortingFilters;
    }

    public void getCachedFilesFromMessages(final ArrayList<MessageObject> arrayList, final Callbacks$Callback1<ArrayList<File>> callbacks$Callback1) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda159
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getCachedFilesFromMessages$1(arrayList, callbacks$Callback1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCachedFilesFromMessages$1(ArrayList arrayList, final Callbacks$Callback1 callbacks$Callback1) {
        Runnable runnable;
        final ArrayList<File> arrayList2 = new ArrayList<>();
        try {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    getMessagesStorage().addFilesToDelete(((MessageObject) it.next()).messageOwner, arrayList2, new ArrayList<>(), new ArrayList<>(), false);
                }
                runnable = new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Callbacks$Callback1.this.invoke(arrayList2);
                    }
                };
            } catch (Exception e) {
                Timber.m6e(e);
                runnable = new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Callbacks$Callback1.this.invoke(arrayList2);
                    }
                };
            }
            AndroidUtilities.runOnUIThread(runnable);
        } catch (Throwable th) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Callbacks$Callback1.this.invoke(arrayList2);
                }
            });
            throw th;
        }
    }

    private int calcSortingCounters(int i, int i2) {
        int i3;
        if ((MessagesController.DIALOG_FILTER_FLAG_CONTACTS & i) != 0) {
            int[][] iArr = this.contacts;
            i3 = iArr[i2][0] + iArr[i2][1] + 0;
        } else {
            i3 = 0;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS & i) != 0) {
            int[][] iArr2 = this.nonContacts;
            i3 += iArr2[i2][0] + iArr2[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_GROUPS & i) != 0) {
            int[][] iArr3 = this.groups;
            i3 += iArr3[i2][0] + iArr3[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_CHANNELS & i) != 0) {
            int[][] iArr4 = this.channels;
            i3 += iArr4[i2][0] + iArr4[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_BOTS & i) != 0) {
            int[][] iArr5 = this.bots;
            i3 += iArr5[i2][0] + iArr5[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_OWNER & i) != 0) {
            int[][] iArr6 = this.ownerCounters;
            i3 += iArr6[i2][0] + iArr6[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ADMIN & i) != 0) {
            int[][] iArr7 = this.adminCounters;
            i3 += iArr7[i2][0] + iArr7[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_SECRET_CHAT & i) != 0) {
            int[][] iArr8 = this.secretChatsCounters;
            i3 += iArr8[i2][0] + iArr8[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_PRIVATE_GROUPS & i) != 0) {
            int[][] iArr9 = this.privateGroupsCounters;
            i3 += iArr9[i2][0] + iArr9[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_PUBLIC_GROUPS & i) != 0) {
            int[][] iArr10 = this.publicGroupsCounters;
            i3 += iArr10[i2][0] + iArr10[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_MENTIONED & i) != 0) {
            int[][] iArr11 = this.mentionedCounters;
            i3 += iArr11[i2][0] + iArr11[i2][1];
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_DELETED & i) != 0) {
            int[][] iArr12 = this.deletedCounters;
            i3 += iArr12[i2][0] + iArr12[i2][1];
        }
        if ((i & MessagesController.DIALOG_FILTER_FLAG_LIVE_CHAT) != 0) {
            int[][] iArr13 = this.liveChatsCounters;
            return i3 + iArr13[i2][0] + iArr13[i2][1];
        }
        return i3;
    }

    static {
        for (int i = 0; i < 5; i++) {
            lockObjects[i] = new Object();
        }
        DATABASE_TABLES = new String[]{"messages_holes", "media_holes_v2", "scheduled_messages_v2", "messages_v2", "download_queue", "user_contacts_v7", "user_phones_v7", "dialogs", "dialog_filter", "dialog_filter_ep", "dialog_filter_pin_v2", "randoms_v2", "enc_tasks_v4", "messages_seq", "params", "media_v4", "bot_keyboard", "bot_keyboard_topics", "chat_settings_v2", "user_settings", "chat_pinned_v2", "chat_pinned_count", "chat_hints", "botcache", "users_data", "users", "chats", "enc_chats", "channel_users_v2", "channel_admins_v3", "contacts", "dialog_photos", "dialog_settings", "web_recent_v3", "stickers_v2", "stickers_featured", "stickers_dice", "stickersets", "hashtag_recent_v2", "webpage_pending_v2", "sent_files_v2", "search_recent", "media_counts_v2", "keyvalue", "bot_info_v2", "pending_tasks", "requested_holes", "sharing_locations", "shortcut_widget", "emoji_keywords_v2", "emoji_keywords_info_v2", "wallpapers2", "unread_push_messages", "polls_v2", "reactions", "reaction_mentions", "downloading_documents", "animated_emoji", "attach_menu_bots", "premium_promo", "emoji_statuses", "messages_holes_topics", "messages_topics", "media_topics", "media_holes_topics", "topics", "media_counts_topics", "reaction_mentions_topics", "emoji_groups"};
    }

    public static MessagesStorage getInstance(int i) {
        MessagesStorage messagesStorage = Instance[i];
        if (messagesStorage == null) {
            synchronized (lockObjects[i]) {
                messagesStorage = Instance[i];
                if (messagesStorage == null) {
                    MessagesStorage[] messagesStorageArr = Instance;
                    MessagesStorage messagesStorage2 = new MessagesStorage(i);
                    messagesStorageArr[i] = messagesStorage2;
                    messagesStorage = messagesStorage2;
                }
            }
        }
        return messagesStorage;
    }

    private void ensureOpened() {
        try {
            this.openSync.await();
        } catch (Throwable unused) {
        }
    }

    public int getLastDateValue() {
        ensureOpened();
        return this.lastDateValue;
    }

    public void setLastDateValue(int i) {
        ensureOpened();
        this.lastDateValue = i;
    }

    public int getLastPtsValue() {
        ensureOpened();
        return this.lastPtsValue;
    }

    public int getMainUnreadCount() {
        return this.mainUnreadCount;
    }

    public int getArchiveUnreadCount() {
        return this.archiveUnreadCount;
    }

    public void setLastPtsValue(int i) {
        ensureOpened();
        this.lastPtsValue = i;
    }

    public int getLastQtsValue() {
        ensureOpened();
        return this.lastQtsValue;
    }

    public void setLastQtsValue(int i) {
        ensureOpened();
        this.lastQtsValue = i;
    }

    public int getLastSeqValue() {
        ensureOpened();
        return this.lastSeqValue;
    }

    public void setLastSeqValue(int i) {
        ensureOpened();
        this.lastSeqValue = i;
    }

    public int getLastSecretVersion() {
        ensureOpened();
        return this.lastSecretVersion;
    }

    public void setLastSecretVersion(int i) {
        ensureOpened();
        this.lastSecretVersion = i;
    }

    public byte[] getSecretPBytes() {
        ensureOpened();
        return this.secretPBytes;
    }

    public void setSecretPBytes(byte[] bArr) {
        ensureOpened();
        this.secretPBytes = bArr;
    }

    public int getSecretG() {
        ensureOpened();
        return this.secretG;
    }

    public void setSecretG(int i) {
        ensureOpened();
        this.secretG = i;
    }

    public MessagesStorage(int i) {
        super(i);
        this.sortingFilters = new ArrayList<>();
        this.archiveSortingFilters = new ArrayList<>();
        this.ownerCounters = new int[][]{new int[2], new int[2]};
        this.adminCounters = new int[][]{new int[2], new int[2]};
        this.secretChatsCounters = new int[][]{new int[2], new int[2]};
        this.privateGroupsCounters = new int[][]{new int[2], new int[2]};
        this.publicGroupsCounters = new int[][]{new int[2], new int[2]};
        this.mentionedCounters = new int[][]{new int[2], new int[2]};
        this.deletedCounters = new int[][]{new int[2], new int[2]};
        this.liveChatsCounters = new int[][]{new int[2], new int[2]};
        this.lastTaskId = new AtomicLong(System.currentTimeMillis());
        this.tasks = new SparseArray<>();
        this.lastDateValue = 0;
        this.lastPtsValue = 0;
        this.lastQtsValue = 0;
        this.lastSeqValue = 0;
        this.lastSecretVersion = 0;
        this.secretPBytes = null;
        this.secretG = 0;
        this.lastSavedSeq = 0;
        this.lastSavedPts = 0;
        this.lastSavedDate = 0;
        this.lastSavedQts = 0;
        this.dialogFilters = new ArrayList<>();
        this.dialogFiltersMap = new SparseArray<>();
        this.unknownDialogsIds = new LongSparseArray<>();
        this.openSync = new CountDownLatch(1);
        this.dialogIsForum = new LongSparseIntArray();
        this.contacts = new int[][]{new int[2], new int[2]};
        this.nonContacts = new int[][]{new int[2], new int[2]};
        this.bots = new int[][]{new int[2], new int[2]};
        this.channels = new int[][]{new int[2], new int[2]};
        this.groups = new int[][]{new int[2], new int[2]};
        this.mentionChannels = new int[2];
        this.mentionGroups = new int[2];
        this.dialogsWithMentions = new LongSparseArray<>();
        this.dialogsWithUnread = new LongSparseArray<>();
        DispatchQueue dispatchQueue = new DispatchQueue("storageQueue_" + i);
        this.storageQueue = dispatchQueue;
        dispatchQueue.setPriority(8);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$new$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        openDatabase(1);
    }

    public SQLiteDatabase getDatabase() {
        return this.database;
    }

    public DispatchQueue getStorageQueue() {
        return this.storageQueue;
    }

    public void bindTaskToGuid(Runnable runnable, int i) {
        ArrayList<Runnable> arrayList = this.tasks.get(i);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.tasks.put(i, arrayList);
        }
        arrayList.add(runnable);
    }

    public void cancelTasksForGuid(int i) {
        ArrayList<Runnable> arrayList = this.tasks.get(i);
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.storageQueue.cancelRunnable(arrayList.get(i2));
        }
        this.tasks.remove(i);
    }

    public void completeTaskForGuid(Runnable runnable, int i) {
        ArrayList<Runnable> arrayList = this.tasks.get(i);
        if (arrayList == null) {
            return;
        }
        arrayList.remove(runnable);
        if (arrayList.isEmpty()) {
            this.tasks.remove(i);
        }
    }

    public long getDatabaseSize() {
        File file = this.cacheFile;
        long length = file != null ? 0 + file.length() : 0L;
        File file2 = this.shmCacheFile;
        return file2 != null ? length + file2.length() : length;
    }

    public void openDatabase(int i) {
        if (!NativeLoader.loaded()) {
            int i2 = 0;
            while (!NativeLoader.loaded()) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                i2++;
                if (i2 > 5) {
                    break;
                }
            }
        }
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (this.currentAccount != 0) {
            File file = new File(filesDirFixed, "account" + this.currentAccount + "/");
            file.mkdirs();
            filesDirFixed = file;
        }
        this.cacheFile = new File(filesDirFixed, "cache4.db");
        this.walCacheFile = new File(filesDirFixed, "cache4.db-wal");
        this.shmCacheFile = new File(filesDirFixed, "cache4.db-shm");
        this.databaseCreated = false;
        boolean z = !this.cacheFile.exists();
        try {
            SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(this.cacheFile.getPath());
            this.database = sQLiteDatabase;
            sQLiteDatabase.executeFast("PRAGMA secure_delete = ON").stepThis().dispose();
            this.database.executeFast("PRAGMA temp_store = MEMORY").stepThis().dispose();
            this.database.executeFast("PRAGMA journal_mode = WAL").stepThis().dispose();
            this.database.executeFast("PRAGMA journal_size_limit = 10485760").stepThis().dispose();
            if (z) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m102d("create new database");
                }
                createTables(this.database);
            } else {
                int intValue = this.database.executeInt("PRAGMA user_version", new Object[0]).intValue();
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m102d("current db version = " + intValue);
                }
                if (intValue == 0) {
                    throw new Exception("malformed");
                }
                try {
                    SQLiteCursor queryFinalized = this.database.queryFinalized("SELECT seq, pts, date, qts, lsv, sg, pbytes FROM params WHERE id = 1", new Object[0]);
                    if (queryFinalized.next()) {
                        this.lastSeqValue = queryFinalized.intValue(0);
                        this.lastPtsValue = queryFinalized.intValue(1);
                        this.lastDateValue = queryFinalized.intValue(2);
                        this.lastQtsValue = queryFinalized.intValue(3);
                        this.lastSecretVersion = queryFinalized.intValue(4);
                        this.secretG = queryFinalized.intValue(5);
                        if (queryFinalized.isNull(6)) {
                            this.secretPBytes = null;
                        } else {
                            byte[] byteArrayValue = queryFinalized.byteArrayValue(6);
                            this.secretPBytes = byteArrayValue;
                            if (byteArrayValue != null && byteArrayValue.length == 1) {
                                this.secretPBytes = null;
                            }
                        }
                    }
                    queryFinalized.dispose();
                } catch (Exception e2) {
                    FileLog.m99e(e2);
                    if (e2.getMessage() != null && e2.getMessage().contains("malformed")) {
                        throw new RuntimeException("malformed");
                    }
                    try {
                        this.database.executeFast("CREATE TABLE IF NOT EXISTS params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)").stepThis().dispose();
                        this.database.executeFast("INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)").stepThis().dispose();
                    } catch (Exception e3) {
                        FileLog.m99e(e3);
                    }
                }
                if (intValue < 136) {
                    try {
                        updateDbToLastVersion(intValue);
                    } catch (Exception e4) {
                        if (BuildVars.DEBUG_PRIVATE_VERSION) {
                            throw e4;
                        }
                        FileLog.m99e(e4);
                        throw new RuntimeException("malformed");
                    }
                }
            }
            this.databaseCreated = true;
        } catch (Exception e5) {
            FileLog.m99e(e5);
            if (i < 3 && e5.getMessage() != null && e5.getMessage().contains("malformed")) {
                if (i == 2) {
                    cleanupInternal(true);
                    clearLoadingDialogsOffsets();
                } else {
                    cleanupInternal(false);
                }
                openDatabase(i != 1 ? 3 : 2);
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$openDatabase$3();
            }
        });
        loadDialogFilters();
        loadUnreadMessages();
        loadPendingTasks();
        try {
            this.openSync.countDown();
        } catch (Throwable unused) {
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$openDatabase$4();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDatabase$3() {
        if (this.databaseMigrationInProgress) {
            this.databaseMigrationInProgress = false;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseMigration, Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDatabase$4() {
        this.showClearDatabaseAlert = false;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseOpened, new Object[0]);
    }

    private void clearLoadingDialogsOffsets() {
        for (int i = 0; i < 2; i++) {
            getUserConfig().setDialogsLoadOffset(i, 0, 0, 0L, 0L, 0L, 0L);
            getUserConfig().setTotalDialogsCount(i, 0);
        }
        getUserConfig().saveConfig(false);
    }

    private boolean recoverDatabase() {
        this.database.close();
        boolean recoverDatabase = DatabaseMigrationHelper.recoverDatabase(this.cacheFile, this.walCacheFile, this.shmCacheFile, this.currentAccount);
        FileLog.m101e("Database restored = " + recoverDatabase);
        if (recoverDatabase) {
            try {
                SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(this.cacheFile.getPath());
                this.database = sQLiteDatabase;
                sQLiteDatabase.executeFast("PRAGMA secure_delete = ON").stepThis().dispose();
                this.database.executeFast("PRAGMA temp_store = MEMORY").stepThis().dispose();
                this.database.executeFast("PRAGMA journal_mode = WAL").stepThis().dispose();
                this.database.executeFast("PRAGMA journal_size_limit = 10485760").stepThis().dispose();
            } catch (SQLiteException e) {
                FileLog.m99e(new Exception(e));
                recoverDatabase = false;
            }
        }
        if (!recoverDatabase) {
            cleanupInternal(true);
            openDatabase(1);
            recoverDatabase = this.databaseCreated;
            FileLog.m101e("Try create new database = " + recoverDatabase);
        }
        if (recoverDatabase) {
            reset();
        }
        return recoverDatabase;
    }

    public static void createTables(SQLiteDatabase sQLiteDatabase) throws SQLiteException {
        sQLiteDatabase.executeFast("CREATE TABLE messages_holes(uid INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, start));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes(uid, end);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_holes_v2(uid INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, type, start));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_end_media_holes_v2 ON media_holes_v2(uid, type, end);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE scheduled_messages_v2(mid INTEGER, uid INTEGER, send_state INTEGER, date INTEGER, data BLOB, ttl INTEGER, replydata BLOB, reply_to_message_id INTEGER, PRIMARY KEY(mid, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS send_state_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, send_state, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_date_idx_scheduled_messages_v2 ON scheduled_messages_v2(uid, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS reply_to_idx_scheduled_messages_v2 ON scheduled_messages_v2(mid, reply_to_message_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS idx_to_reply_scheduled_messages_v2 ON scheduled_messages_v2(reply_to_message_id, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE messages_v2(mid INTEGER, uid INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, reply_to_message_id INTEGER, custom_params BLOB, group_id INTEGER, reply_to_story_id INTEGER, PRIMARY KEY(mid, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_v2 ON messages_v2(uid, mid, read_state, out);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_v2 ON messages_v2(uid, date, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS mid_out_idx_messages_v2 ON messages_v2(mid, out);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS task_idx_messages_v2 ON messages_v2(uid, out, read_state, ttl, date, send_state);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS send_state_idx_messages_v2 ON messages_v2(mid, send_state, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_v2 ON messages_v2(uid, mention, read_state);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS is_channel_idx_messages_v2 ON messages_v2(mid, is_channel);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS reply_to_idx_messages_v2 ON messages_v2(mid, reply_to_message_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS idx_to_reply_messages_v2 ON messages_v2(reply_to_message_id, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mid_groupid_messages_v2 ON messages_v2(uid, mid, group_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE download_queue(uid INTEGER, type INTEGER, date INTEGER, data BLOB, parent TEXT, PRIMARY KEY (uid, type));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS type_date_idx_download_queue ON download_queue(type, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE user_contacts_v7(key TEXT PRIMARY KEY, uid INTEGER, fname TEXT, sname TEXT, imported INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE user_phones_v7(key TEXT, phone TEXT, sphone TEXT, deleted INTEGER, PRIMARY KEY (key, phone))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS sphone_deleted_idx_user_phones ON user_phones_v7(sphone, deleted);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialogs(did INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, last_mid INTEGER, inbox_max INTEGER, outbox_max INTEGER, last_mid_i INTEGER, unread_count_i INTEGER, pts INTEGER, date_i INTEGER, pinned INTEGER, flags INTEGER, folder_id INTEGER, data BLOB, unread_reactions INTEGER, last_mid_group INTEGER, ttl_period INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS date_idx_dialogs ON dialogs(date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS last_mid_idx_dialogs ON dialogs(last_mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS unread_count_idx_dialogs ON dialogs(unread_count);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS last_mid_i_idx_dialogs ON dialogs(last_mid_i);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS unread_count_i_idx_dialogs ON dialogs(unread_count_i);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS folder_id_idx_dialogs ON dialogs(folder_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS flags_idx_dialogs ON dialogs(flags);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_filter(id INTEGER PRIMARY KEY, ord INTEGER, unread_count INTEGER, flags INTEGER, title TEXT)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_filter_ep(id INTEGER, peer INTEGER, PRIMARY KEY (id, peer))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_filter_pin_v2(id INTEGER, peer INTEGER, pin INTEGER, PRIMARY KEY (id, peer))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE randoms_v2(random_id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (random_id, mid, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS mid_idx_randoms_v2 ON randoms_v2(mid, uid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE enc_tasks_v4(mid INTEGER, uid INTEGER, date INTEGER, media INTEGER, PRIMARY KEY(mid, uid, media))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS date_idx_enc_tasks_v4 ON enc_tasks_v4(date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE messages_seq(mid INTEGER PRIMARY KEY, seq_in INTEGER, seq_out INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS seq_idx_messages_seq ON messages_seq(seq_in, seq_out);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE params(id INTEGER PRIMARY KEY, seq INTEGER, pts INTEGER, date INTEGER, qts INTEGER, lsv INTEGER, sg INTEGER, pbytes BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("INSERT INTO params VALUES(1, 0, 0, 0, 0, 0, 0, NULL)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_v4(mid INTEGER, uid INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_v4 ON media_v4(uid, mid, type, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE bot_keyboard(uid INTEGER PRIMARY KEY, mid INTEGER, info BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS bot_keyboard_idx_mid_v2 ON bot_keyboard(mid, uid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE bot_keyboard_topics(uid INTEGER, tid INTEGER, mid INTEGER, info BLOB, PRIMARY KEY(uid, tid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS bot_keyboard_topics_idx_mid_v2 ON bot_keyboard_topics(mid, uid, tid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE chat_settings_v2(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER, online INTEGER, inviter INTEGER, links INTEGER, participants_count INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS chat_settings_pinned_idx ON chat_settings_v2(uid, pinned) WHERE pinned != 0;").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE user_settings(uid INTEGER PRIMARY KEY, info BLOB, pinned INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS user_settings_pinned_idx ON user_settings(uid, pinned) WHERE pinned != 0;").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE chat_pinned_v2(uid INTEGER, mid INTEGER, data BLOB, PRIMARY KEY (uid, mid));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE chat_pinned_count(uid INTEGER PRIMARY KEY, count INTEGER, end INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE chat_hints(did INTEGER, type INTEGER, rating REAL, date INTEGER, PRIMARY KEY(did, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS chat_hints_rating_idx ON chat_hints(rating);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE botcache(id TEXT PRIMARY KEY, date INTEGER, data BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS botcache_date_idx ON botcache(date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE users_data(uid INTEGER PRIMARY KEY, about TEXT)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE users(uid INTEGER PRIMARY KEY, name TEXT, status INTEGER, data BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE chats(uid INTEGER PRIMARY KEY, name TEXT, data BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE enc_chats(uid INTEGER PRIMARY KEY, user INTEGER, name TEXT, data BLOB, g BLOB, authkey BLOB, ttl INTEGER, layer INTEGER, seq_in INTEGER, seq_out INTEGER, use_count INTEGER, exchange_id INTEGER, key_date INTEGER, fprint INTEGER, fauthkey BLOB, khash BLOB, in_seq_no INTEGER, admin_id INTEGER, mtproto_seq INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE channel_users_v2(did INTEGER, uid INTEGER, date INTEGER, data BLOB, PRIMARY KEY(did, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE channel_admins_v3(did INTEGER, uid INTEGER, data BLOB, PRIMARY KEY(did, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE contacts(uid INTEGER PRIMARY KEY, mutual INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_photos(uid INTEGER, id INTEGER, num INTEGER, data BLOB, PRIMARY KEY (uid, id))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_photos_count(uid INTEGER PRIMARY KEY, count INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE dialog_settings(did INTEGER PRIMARY KEY, flags INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE web_recent_v3(id TEXT, type INTEGER, image_url TEXT, thumb_url TEXT, local_url TEXT, width INTEGER, height INTEGER, size INTEGER, date INTEGER, document BLOB, PRIMARY KEY (id, type));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stickers_v2(id INTEGER PRIMARY KEY, data BLOB, date INTEGER, hash INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stickers_featured(id INTEGER PRIMARY KEY, data BLOB, unread BLOB, date INTEGER, hash INTEGER, premium INTEGER, emoji INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stickers_dice(emoji TEXT PRIMARY KEY, data BLOB, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE hashtag_recent_v2(id TEXT PRIMARY KEY, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE webpage_pending_v2(id INTEGER, mid INTEGER, uid INTEGER, PRIMARY KEY (id, mid, uid));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE sent_files_v2(uid TEXT, type INTEGER, data BLOB, parent TEXT, PRIMARY KEY (uid, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE search_recent(did INTEGER PRIMARY KEY, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_counts_v2(uid INTEGER, type INTEGER, count INTEGER, old INTEGER, PRIMARY KEY(uid, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE keyvalue(id TEXT PRIMARY KEY, value TEXT)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE bot_info_v2(uid INTEGER, dialogId INTEGER, info BLOB, PRIMARY KEY(uid, dialogId))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE pending_tasks(id INTEGER PRIMARY KEY, data BLOB);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE requested_holes(uid INTEGER, seq_out_start INTEGER, seq_out_end INTEGER, PRIMARY KEY (uid, seq_out_start, seq_out_end));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE sharing_locations(uid INTEGER PRIMARY KEY, mid INTEGER, date INTEGER, period INTEGER, message BLOB, proximity INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stickersets2(id INTEGER PRIMATE KEY, data BLOB, hash INTEGER, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS stickersets2_id_index ON stickersets2(id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS stickers_featured_emoji_index ON stickers_featured(emoji);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE shortcut_widget(id INTEGER, did INTEGER, ord INTEGER, PRIMARY KEY (id, did));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS shortcut_widget_did ON shortcut_widget(did);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE emoji_keywords_v2(lang TEXT, keyword TEXT, emoji TEXT, PRIMARY KEY(lang, keyword, emoji));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS emoji_keywords_v2_keyword ON emoji_keywords_v2(keyword);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE emoji_keywords_info_v2(lang TEXT PRIMARY KEY, alias TEXT, version INTEGER, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE wallpapers2(uid INTEGER PRIMARY KEY, data BLOB, num INTEGER)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS wallpapers_num ON wallpapers2(num);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE unread_push_messages(uid INTEGER, mid INTEGER, random INTEGER, date INTEGER, data BLOB, fm TEXT, name TEXT, uname TEXT, flags INTEGER, topicId INTEGER, PRIMARY KEY(uid, mid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS unread_push_messages_idx_date ON unread_push_messages(date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS unread_push_messages_idx_random ON unread_push_messages(random);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE polls_v2(mid INTEGER, uid INTEGER, id INTEGER, PRIMARY KEY (mid, uid));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS polls_id_v2 ON polls_v2(id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE reactions(data BLOB, hash INTEGER, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE reaction_mentions(message_id INTEGER, state INTEGER, dialog_id INTEGER, PRIMARY KEY(message_id, dialog_id))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS reaction_mentions_did ON reaction_mentions(dialog_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE downloading_documents(data BLOB, hash INTEGER, id INTEGER, state INTEGER, date INTEGER, PRIMARY KEY(hash, id));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE animated_emoji(document_id INTEGER PRIMARY KEY, data BLOB);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE attach_menu_bots(data BLOB, hash INTEGER, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE premium_promo(data BLOB, date INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE emoji_statuses(data BLOB, type INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE messages_holes_topics(uid INTEGER, topic_id INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, start));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_end_messages_holes ON messages_holes_topics(uid, topic_id, end);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE messages_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, read_state INTEGER, send_state INTEGER, date INTEGER, data BLOB, out INTEGER, ttl INTEGER, media INTEGER, replydata BLOB, imp INTEGER, mention INTEGER, forwards INTEGER, replies_data BLOB, thread_reply_id INTEGER, is_channel INTEGER, reply_to_message_id INTEGER, custom_params BLOB, reply_to_story_id INTEGER, PRIMARY KEY(mid, topic_id, uid))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_date_mid_idx_messages_topics ON messages_topics(uid, date, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS mid_out_idx_messages_topics ON messages_topics(mid, out);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS task_idx_messages_topics ON messages_topics(uid, out, read_state, ttl, date, send_state);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS send_state_idx_messages_topics ON messages_topics(mid, send_state, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS is_channel_idx_messages_topics ON messages_topics(mid, is_channel);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS reply_to_idx_messages_topics ON messages_topics(mid, reply_to_message_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS idx_to_reply_messages_topics ON messages_topics(reply_to_message_id, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS mid_uid_messages_topics ON messages_topics(mid, uid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mid_read_out_idx_messages_topics ON messages_topics(uid, topic_id, mid, read_state, out);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mention_idx_messages_topics ON messages_topics(uid, topic_id, mention, read_state);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_topic_id_messages_topics ON messages_topics(uid, topic_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_topic_id_date_mid_messages_topics ON messages_topics(uid, topic_id, date, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_topic_id_mid_messages_topics ON messages_topics(uid, topic_id, mid);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_topics(mid INTEGER, uid INTEGER, topic_id INTEGER, date INTEGER, type INTEGER, data BLOB, PRIMARY KEY(mid, uid, topic_id, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_mid_type_date_idx_media_topics ON media_topics(uid, topic_id, mid, type, date);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_holes_topics(uid INTEGER, topic_id INTEGER, type INTEGER, start INTEGER, end INTEGER, PRIMARY KEY(uid, topic_id, type, start));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS uid_end_media_holes_topics ON media_holes_topics(uid, topic_id, type, end);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE topics(did INTEGER, topic_id INTEGER, data BLOB, top_message INTEGER, topic_message BLOB, unread_count INTEGER, max_read_id INTEGER, unread_mentions INTEGER, unread_reactions INTEGER, read_outbox INTEGER, pinned INTEGER, total_messages_count INTEGER, hidden INTEGER, PRIMARY KEY(did, topic_id));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS did_top_message_topics ON topics(did, top_message);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS did_topics ON topics(did);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE media_counts_topics(uid INTEGER, topic_id INTEGER, type INTEGER, count INTEGER, old INTEGER, PRIMARY KEY(uid, topic_id, type))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE reaction_mentions_topics(message_id INTEGER, state INTEGER, dialog_id INTEGER, topic_id INTEGER, PRIMARY KEY(message_id, dialog_id, topic_id))").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE INDEX IF NOT EXISTS reaction_mentions_topics_did ON reaction_mentions_topics(dialog_id, topic_id);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE emoji_groups(type INTEGER PRIMARY KEY, data BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE app_config(data BLOB)").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stories (dialog_id INTEGER, story_id INTEGER, data BLOB, custom_params BLOB, PRIMARY KEY (dialog_id, story_id));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE stories_counter (dialog_id INTEGER PRIMARY KEY, count INTEGER, max_read INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE profile_stories (dialog_id INTEGER, story_id INTEGER, data BLOB, type INTEGER, PRIMARY KEY(dialog_id, story_id));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE story_drafts (id INTEGER PRIMARY KEY, date INTEGER, data BLOB, type INTEGER);").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE story_pushes (uid INTEGER, sid INTEGER, date INTEGER, localName TEXT, flags INTEGER, expire_date INTEGER, PRIMARY KEY(uid, sid));").stepThis().dispose();
        sQLiteDatabase.executeFast("CREATE TABLE unconfirmed_auth (data BLOB);").stepThis().dispose();
        sQLiteDatabase.executeFast("PRAGMA user_version = 136").stepThis().dispose();
    }

    public boolean isDatabaseMigrationInProgress() {
        return this.databaseMigrationInProgress;
    }

    private void updateDbToLastVersion(int i) throws Exception {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateDbToLastVersion$5();
            }
        });
        FileLog.m102d("MessagesStorage start db migration from " + i + " to " + LAST_DB_VERSION);
        int migrate = DatabaseMigrationHelper.migrate(this, i);
        StringBuilder sb = new StringBuilder();
        sb.append("MessagesStorage db migration finished to varsion ");
        sb.append(migrate);
        FileLog.m102d(sb.toString());
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateDbToLastVersion$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDbToLastVersion$5() {
        this.databaseMigrationInProgress = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseMigration, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDbToLastVersion$6() {
        this.databaseMigrationInProgress = false;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseMigration, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void executeNoException(String str) {
        try {
            this.database.executeFast(str).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    private void cleanupInternal(boolean z) {
        if (z) {
            reset();
        } else {
            clearDatabaseValues();
        }
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.database = null;
        }
        if (z) {
            File file = this.cacheFile;
            if (file != null) {
                file.delete();
                this.cacheFile = null;
            }
            File file2 = this.walCacheFile;
            if (file2 != null) {
                file2.delete();
                this.walCacheFile = null;
            }
            File file3 = this.shmCacheFile;
            if (file3 != null) {
                file3.delete();
                this.shmCacheFile = null;
            }
        }
    }

    public void clearDatabaseValues() {
        this.sortingFilters.clear();
        this.archiveSortingFilters.clear();
        this.lastDateValue = 0;
        this.lastSeqValue = 0;
        this.lastPtsValue = 0;
        this.lastQtsValue = 0;
        this.lastSecretVersion = 0;
        this.mainUnreadCount = 0;
        this.archiveUnreadCount = 0;
        this.pendingMainUnreadCount = 0;
        this.pendingArchiveUnreadCount = 0;
        this.dialogFilters.clear();
        this.dialogFiltersMap.clear();
        this.unknownDialogsIds.clear();
        this.lastSavedSeq = 0;
        this.lastSavedPts = 0;
        this.lastSavedDate = 0;
        this.lastSavedQts = 0;
        this.secretPBytes = null;
        this.secretG = 0;
    }

    public void cleanup(final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda205
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$cleanup$8(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$8(boolean z) {
        cleanupInternal(true);
        openDatabase(1);
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$cleanup$7();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanup$7() {
        getMessagesController().getDifference();
    }

    public void saveSecretParams(final int i, final int i2, final byte[] bArr) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveSecretParams$9(i, i2, bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveSecretParams$9(int i, int i2, byte[] bArr) {
        try {
            SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE params SET lsv = ?, sg = ?, pbytes = ? WHERE id = 1");
            executeFast.bindInteger(1, i);
            executeFast.bindInteger(2, i2);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArr != null ? bArr.length : 1);
            if (bArr != null) {
                nativeByteBuffer.writeBytes(bArr);
            }
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            executeFast.step();
            executeFast.dispose();
            nativeByteBuffer.reuse();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void checkSQLException(Throwable th) {
        checkSQLException(th, true);
    }

    private void checkSQLException(Throwable th, boolean z) {
        if ((th instanceof SQLiteException) && th.getMessage() != null && th.getMessage().contains("is malformed") && !this.tryRecover) {
            this.tryRecover = true;
            FileLog.m101e("disk image malformed detected, try recover");
            if (recoverDatabase()) {
                this.tryRecover = false;
                clearLoadingDialogsOffsets();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$checkSQLException$10();
                    }
                });
                FileLog.m99e(new Exception("database restored!!"));
                return;
            }
            FileLog.m98e(new Exception(th), z);
            return;
        }
        FileLog.m98e(th, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkSQLException$10() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseReset, new Object[0]);
    }

    public void fixNotificationSettings() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$fixNotificationSettings$11();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fixNotificationSettings$11() {
        try {
            LongSparseArray longSparseArray = new LongSparseArray();
            Map<String, ?> all = MessagesController.getNotificationsSettings(this.currentAccount).getAll();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                if (key.startsWith(NotificationsSettingsFacade.PROPERTY_NOTIFY)) {
                    Integer num = (Integer) entry.getValue();
                    if (num.intValue() == 2 || num.intValue() == 3) {
                        String replace = key.replace(NotificationsSettingsFacade.PROPERTY_NOTIFY, "");
                        long j = 1;
                        if (num.intValue() != 2) {
                            Integer num2 = (Integer) all.get(NotificationsSettingsFacade.PROPERTY_NOTIFY_UNTIL + replace);
                            if (num2 != null) {
                                j = 1 | (num2.intValue() << 32);
                            }
                        }
                        try {
                            longSparseArray.put(Long.parseLong(replace), Long.valueOf(j));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
            try {
                this.database.beginTransaction();
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO dialog_settings VALUES(?, ?)");
                for (int i = 0; i < longSparseArray.size(); i++) {
                    executeFast.requery();
                    executeFast.bindLong(1, longSparseArray.keyAt(i));
                    executeFast.bindLong(2, ((Long) longSparseArray.valueAt(i)).longValue());
                    executeFast.step();
                }
                executeFast.dispose();
                this.database.commitTransaction();
            } catch (Exception e2) {
                checkSQLException(e2);
            }
        } catch (Throwable th) {
            checkSQLException(th);
        }
    }

    public long createPendingTask(final NativeByteBuffer nativeByteBuffer) {
        if (nativeByteBuffer == null) {
            return 0L;
        }
        final long andAdd = this.lastTaskId.getAndAdd(1L);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$createPendingTask$12(andAdd, nativeByteBuffer);
            }
        });
        return andAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPendingTask$12(long j, NativeByteBuffer nativeByteBuffer) {
        try {
            try {
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO pending_tasks VALUES(?, ?)");
                executeFast.bindLong(1, j);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.step();
                executeFast.dispose();
            } catch (Exception e) {
                checkSQLException(e);
            }
        } finally {
            nativeByteBuffer.reuse();
        }
    }

    public void removePendingTask(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$removePendingTask$13(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removePendingTask$13(long j) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM pending_tasks WHERE id = " + j).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    private void loadPendingTasks() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadPendingTasks$34();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1 A[Catch: Exception -> 0x036e, TryCatch #0 {Exception -> 0x036e, blocks: (B:3:0x0002, B:4:0x000d, B:6:0x0013, B:8:0x001e, B:9:0x0023, B:10:0x0026, B:79:0x0365, B:12:0x002b, B:13:0x0041, B:14:0x0057, B:15:0x0077, B:17:0x0085, B:20:0x008e, B:21:0x0093, B:22:0x00a1, B:24:0x00b3, B:26:0x00b9, B:28:0x00bf, B:29:0x00c7, B:30:0x00d8, B:31:0x00ea, B:32:0x0135, B:34:0x0146, B:35:0x014b, B:36:0x0159, B:38:0x0169, B:39:0x0177, B:40:0x0185, B:42:0x0195, B:43:0x01a3, B:44:0x01b1, B:45:0x01c5, B:46:0x01ee, B:47:0x01f3, B:49:0x0206, B:50:0x020e, B:51:0x021d, B:52:0x0237, B:54:0x0246, B:57:0x024f, B:58:0x0254, B:59:0x0262, B:60:0x0283, B:61:0x02a1, B:62:0x02c2, B:64:0x02fa, B:67:0x030a, B:70:0x0314, B:73:0x031e, B:74:0x0324, B:75:0x0339, B:76:0x0351, B:78:0x035b, B:80:0x036a), top: B:85:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadPendingTasks$34() {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$loadPendingTasks$34():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$14(TLRPC$Chat tLRPC$Chat, long j) {
        getMessagesController().loadUnknownChannel(tLRPC$Chat, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$15(long j, int i, long j2) {
        getMessagesController().getChannelDifference(j, i, j2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$16(TLRPC$Dialog tLRPC$Dialog, TLRPC$InputPeer tLRPC$InputPeer, long j) {
        getMessagesController().checkLastDialogMessage(tLRPC$Dialog, tLRPC$InputPeer, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$17(long j, boolean z, TLRPC$InputPeer tLRPC$InputPeer, long j2) {
        getMessagesController().pinDialog(j, z, tLRPC$InputPeer, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$18(long j, int i, long j2, TLRPC$InputChannel tLRPC$InputChannel) {
        getMessagesController().getChannelDifference(j, i, j2, tLRPC$InputChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$19(long j, int i, long j2, TLRPC$InputChannel tLRPC$InputChannel) {
        getMessagesController().getChannelDifference(j, i, j2, tLRPC$InputChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$20(long j, long j2, TLObject tLObject) {
        getMessagesController().deleteMessages((ArrayList<Integer>) null, (ArrayList<Long>) null, (TLRPC$EncryptedChat) null, -j, true, false, false, j2, tLObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$21(long j, long j2, TLObject tLObject) {
        getMessagesController().deleteMessages((ArrayList<Integer>) null, (ArrayList<Long>) null, (TLRPC$EncryptedChat) null, j, true, false, false, j2, tLObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$22(long j, TLRPC$InputPeer tLRPC$InputPeer, long j2) {
        getMessagesController().markDialogAsUnread(j, tLRPC$InputPeer, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$23(long j, int i, TLRPC$InputChannel tLRPC$InputChannel, int i2, long j2) {
        getMessagesController().markMessageAsRead2(-j, i, tLRPC$InputChannel, i2, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$24(long j, int i, TLRPC$InputChannel tLRPC$InputChannel, int i2, long j2, int i3) {
        getMessagesController().markMessageAsRead2(j, i, tLRPC$InputChannel, i2, j2, i3 == 23);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$25(Theme.OverrideWallpaperInfo overrideWallpaperInfo, boolean z, long j) {
        getMessagesController().saveWallpaperToServer(null, overrideWallpaperInfo, z, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$26(long j, boolean z, int i, int i2, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, long j2) {
        getMessagesController().deleteDialog(j, z ? 1 : 0, i, i2, z2, tLRPC$InputPeer, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$27(TLRPC$InputPeer tLRPC$InputPeer, long j) {
        getMessagesController().loadUnknownDialog(tLRPC$InputPeer, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$28(int i, ArrayList arrayList, long j) {
        getMessagesController().reorderPinnedDialogs(i, arrayList, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$29(int i, ArrayList arrayList, long j) {
        getMessagesController().addDialogToFolder(null, i, -1, arrayList, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$30(long j, long j2, TLObject tLObject) {
        getMessagesController().deleteMessages((ArrayList<Integer>) null, (ArrayList<Long>) null, (TLRPC$EncryptedChat) null, j, true, true, false, j2, tLObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$31(TLRPC$InputPeer tLRPC$InputPeer, long j) {
        getMessagesController().reloadMentionsCountForChannel(tLRPC$InputPeer, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$32(int i, boolean z, long j) {
        getSecretChatHelper().declineSecretChat(i, z, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPendingTasks$33(long j, long j2, int i) {
        getMessagesController().lambda$checkDeletingTask$72(j, j2, i);
    }

    public void saveChannelPts(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveChannelPts$35(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveChannelPts$35(int i, long j) {
        try {
            SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE dialogs SET pts = ? WHERE did = ?");
            executeFast.bindInteger(1, i);
            executeFast.bindLong(2, -j);
            executeFast.step();
            executeFast.dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveDiffParamsInternal */
    public void lambda$saveDiffParams$36(int i, int i2, int i3, int i4) {
        try {
            if (this.lastSavedSeq == i && this.lastSavedPts == i2 && this.lastSavedDate == i3 && this.lastQtsValue == i4) {
                return;
            }
            SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE params SET seq = ?, pts = ?, date = ?, qts = ? WHERE id = 1");
            executeFast.bindInteger(1, i);
            executeFast.bindInteger(2, i2);
            executeFast.bindInteger(3, i3);
            executeFast.bindInteger(4, i4);
            executeFast.step();
            executeFast.dispose();
            this.lastSavedSeq = i;
            this.lastSavedPts = i2;
            this.lastSavedDate = i3;
            this.lastSavedQts = i4;
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void saveDiffParams(final int i, final int i2, final int i3, final int i4) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveDiffParams$36(i, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMutedDialogsFiltersCounters$37() {
        resetAllUnreadCounters(true);
    }

    public void updateMutedDialogsFiltersCounters() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMutedDialogsFiltersCounters$37();
            }
        });
    }

    public void setDialogFlags(final long j, final long j2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda95
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogFlags$38(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogFlags$38(long j, long j2) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            SQLiteCursor queryFinalized = sQLiteDatabase.queryFinalized("SELECT flags FROM dialog_settings WHERE did = " + j, new Object[0]);
            int intValue = queryFinalized.next() ? queryFinalized.intValue(0) : 0;
            queryFinalized.dispose();
            if (j2 == intValue) {
                return;
            }
            this.database.executeFast(String.format(Locale.US, "REPLACE INTO dialog_settings VALUES(%d, %d)", Long.valueOf(j), Long.valueOf(j2))).stepThis().dispose();
            resetAllUnreadCounters(true);
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void putStoryPushMessage(final NotificationsController.StoryNotification storyNotification) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda174
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putStoryPushMessage$39(storyNotification);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putStoryPushMessage$39(NotificationsController.StoryNotification storyNotification) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM story_pushes WHERE uid = " + storyNotification.dialogId).stepThis().dispose();
            SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO story_pushes VALUES(?, ?, ?, ?, ?, ?)");
            for (Map.Entry<Integer, Pair<Long, Long>> entry : storyNotification.dateByIds.entrySet()) {
                int intValue = entry.getKey().intValue();
                long longValue = ((Long) entry.getValue().first).longValue();
                long longValue2 = ((Long) entry.getValue().second).longValue();
                executeFast.requery();
                int i = 1;
                executeFast.bindLong(1, storyNotification.dialogId);
                executeFast.bindInteger(2, intValue);
                executeFast.bindLong(3, longValue);
                if (storyNotification.localName == null) {
                    storyNotification.localName = "";
                }
                executeFast.bindString(4, storyNotification.localName);
                if (!storyNotification.hidden) {
                    i = 0;
                }
                executeFast.bindInteger(5, i);
                executeFast.bindLong(6, longValue2);
                executeFast.step();
            }
            executeFast.dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void deleteStoryPushMessage(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteStoryPushMessage$40(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStoryPushMessage$40(long j) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM story_pushes WHERE uid = " + j).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void deleteAllStoryPushMessages() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteAllStoryPushMessages$41();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllStoryPushMessages$41() {
        try {
            this.database.executeFast("DELETE FROM story_pushes").stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void putPushMessage(final MessageObject messageObject) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda170
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putPushMessage$42(messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPushMessage$42(MessageObject messageObject) {
        try {
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(messageObject.messageOwner.getObjectSize());
            messageObject.messageOwner.serializeToStream(nativeByteBuffer);
            int i = messageObject.localType == 2 ? 1 : 0;
            if (messageObject.localChannel) {
                i |= 2;
            }
            SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO unread_push_messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            executeFast.requery();
            executeFast.bindLong(1, messageObject.getDialogId());
            executeFast.bindInteger(2, messageObject.getId());
            executeFast.bindLong(3, messageObject.messageOwner.random_id);
            executeFast.bindInteger(4, messageObject.messageOwner.date);
            executeFast.bindByteBuffer(5, nativeByteBuffer);
            CharSequence charSequence = messageObject.messageText;
            if (charSequence == null) {
                executeFast.bindNull(6);
            } else {
                executeFast.bindString(6, charSequence.toString());
            }
            String str = messageObject.localName;
            if (str == null) {
                executeFast.bindNull(7);
            } else {
                executeFast.bindString(7, str);
            }
            String str2 = messageObject.localUserName;
            if (str2 == null) {
                executeFast.bindNull(8);
            } else {
                executeFast.bindString(8, str2);
            }
            executeFast.bindInteger(9, i);
            executeFast.bindInteger(10, MessageObject.getTopicId(messageObject.messageOwner, false));
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void clearLocalDatabase() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearLocalDatabase$43();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:114:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x034f A[Catch: all -> 0x036c, Exception -> 0x036e, TryCatch #0 {Exception -> 0x036e, blocks: (B:56:0x025a, B:57:0x025e, B:59:0x034f, B:61:0x0361), top: B:136:0x025a }] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$clearLocalDatabase$43() {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$clearLocalDatabase$43():void");
    }

    public void saveTopics(final long j, final List<TLRPC$TL_forumTopic> list, final boolean z, boolean z2) {
        if (z2) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda113
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$saveTopics$44(j, list, z);
                }
            });
        } else {
            saveTopicsInternal(j, list, z, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveTopics$44(long j, List list, boolean z) {
        saveTopicsInternal(j, list, z, true);
    }

    private void saveTopicsInternal(long j, List<TLRPC$TL_forumTopic> list, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                HashSet hashSet = new HashSet();
                HashMap hashMap = new HashMap();
                boolean z3 = false;
                int i4 = 0;
                while (true) {
                    i = 2;
                    if (i4 >= list.size()) {
                        break;
                    }
                    SQLiteCursor queryFinalized = this.database.queryFinalized("SELECT did, pinned FROM topics WHERE did = " + j + " AND topic_id = " + list.get(i4).f1658id, new Object[0]);
                    boolean next = queryFinalized.next();
                    if (next) {
                        hashMap.put(Integer.valueOf(i4), Integer.valueOf(queryFinalized.intValue(2)));
                    }
                    queryFinalized.dispose();
                    if (next) {
                        hashSet.add(Integer.valueOf(i4));
                    }
                    i4++;
                }
                if (z) {
                    this.database.executeFast("DELETE FROM topics WHERE did = " + j).stepThis().dispose();
                }
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO topics VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                if (z2) {
                    try {
                        this.database.beginTransaction();
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        this.database.commitTransaction();
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        this.database.commitTransaction();
                        throw th;
                    }
                }
                int i5 = 0;
                while (i5 < list.size()) {
                    TLRPC$TL_forumTopic tLRPC$TL_forumTopic = list.get(i5);
                    boolean contains = hashSet.contains(Integer.valueOf(i5));
                    executeFast.requery();
                    executeFast.bindLong(1, j);
                    executeFast.bindInteger(i, tLRPC$TL_forumTopic.f1658id);
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$TL_forumTopic.getObjectSize());
                    tLRPC$TL_forumTopic.serializeToStream(nativeByteBuffer);
                    executeFast.bindByteBuffer(3, nativeByteBuffer);
                    executeFast.bindInteger(4, tLRPC$TL_forumTopic.top_message);
                    NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(tLRPC$TL_forumTopic.topicStartMessage.getObjectSize());
                    tLRPC$TL_forumTopic.topicStartMessage.serializeToStream(nativeByteBuffer2);
                    executeFast.bindByteBuffer(5, nativeByteBuffer2);
                    executeFast.bindInteger(6, tLRPC$TL_forumTopic.unread_count);
                    executeFast.bindInteger(7, tLRPC$TL_forumTopic.read_inbox_max_id);
                    executeFast.bindInteger(8, tLRPC$TL_forumTopic.unread_mentions_count);
                    executeFast.bindInteger(9, tLRPC$TL_forumTopic.unread_reactions_count);
                    executeFast.bindInteger(10, tLRPC$TL_forumTopic.read_outbox_max_id);
                    if (tLRPC$TL_forumTopic.isShort && hashMap.containsKey(Integer.valueOf(i5))) {
                        executeFast.bindInteger(11, ((Integer) hashMap.get(Integer.valueOf(i5))).intValue());
                    } else {
                        executeFast.bindInteger(11, tLRPC$TL_forumTopic.pinned ? tLRPC$TL_forumTopic.pinnedOrder + 1 : 0);
                    }
                    executeFast.bindInteger(12, tLRPC$TL_forumTopic.totalMessagesCount);
                    executeFast.bindInteger(13, tLRPC$TL_forumTopic.hidden ? 1 : 0);
                    executeFast.step();
                    nativeByteBuffer2.reuse();
                    nativeByteBuffer.reuse();
                    if (contains) {
                        int i6 = tLRPC$TL_forumTopic.top_message;
                        i2 = i5;
                        closeHolesInTable("messages_holes_topics", j, i6, i6, tLRPC$TL_forumTopic.f1658id);
                        int i7 = tLRPC$TL_forumTopic.top_message;
                        closeHolesInMedia(j, i7, i7, -1, 0);
                        i3 = 2;
                    } else {
                        i2 = i5;
                        SQLiteDatabase sQLiteDatabase = this.database;
                        Locale locale = Locale.ENGLISH;
                        sQLiteDatabase.executeFast(String.format(locale, "DELETE FROM messages_holes_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$TL_forumTopic.f1658id))).stepThis().dispose();
                        this.database.executeFast(String.format(locale, "DELETE FROM media_holes_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$TL_forumTopic.f1658id))).stepThis().dispose();
                        this.database.executeFast(String.format(locale, "DELETE FROM messages_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$TL_forumTopic.f1658id))).stepThis().dispose();
                        i3 = 2;
                        this.database.executeFast(String.format(locale, "DELETE FROM media_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$TL_forumTopic.f1658id))).stepThis().dispose();
                        SQLitePreparedStatement executeFast2 = this.database.executeFast("REPLACE INTO messages_holes_topics VALUES(?, ?, ?, ?)");
                        createFirstHoles(j, executeFast2, this.database.executeFast("REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)"), tLRPC$TL_forumTopic.top_message, tLRPC$TL_forumTopic.f1658id);
                        executeFast2.dispose();
                        executeFast2.dispose();
                    }
                    int i8 = i2 + 1;
                    i = i3;
                    z3 = false;
                    i5 = i8;
                }
                resetAllUnreadCounters(z3);
                if (executeFast != null) {
                    executeFast.dispose();
                }
            } catch (Exception e2) {
                e = e2;
            }
            this.database.commitTransaction();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateTopicData(final long j, final TLRPC$TL_forumTopic tLRPC$TL_forumTopic, final int i) {
        if (tLRPC$TL_forumTopic == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateTopicData$45(i, tLRPC$TL_forumTopic, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateTopicData$45(int r12, org.telegram.tgnet.TLRPC$TL_forumTopic r13, long r14) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateTopicData$45(int, org.telegram.tgnet.TLRPC$TL_forumTopic, long):void");
    }

    public void loadTopics(final long j, final Consumer<ArrayList<TLRPC$TL_forumTopic>> consumer) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadTopics$47(j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x028a A[Catch: Exception -> 0x01c9, all -> 0x02b0, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x01c9, blocks: (B:44:0x0124, B:46:0x012f, B:48:0x013c, B:49:0x0147, B:52:0x015a, B:54:0x0160, B:55:0x016b, B:79:0x01bc, B:88:0x01db, B:112:0x0265, B:119:0x028a, B:122:0x0297), top: B:156:0x0124 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0297 A[Catch: Exception -> 0x01c9, all -> 0x02b0, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x01c9, blocks: (B:44:0x0124, B:46:0x012f, B:48:0x013c, B:49:0x0147, B:52:0x015a, B:54:0x0160, B:55:0x016b, B:79:0x01bc, B:88:0x01db, B:112:0x0265, B:119:0x028a, B:122:0x0297), top: B:156:0x0124 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02df  */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadTopics$47(long r21, p033j$.util.function.Consumer r23) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$loadTopics$47(long, j$.util.function.Consumer):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadTopics$46(ArrayList arrayList, ArrayList arrayList2) {
        if (!arrayList.isEmpty()) {
            getMessagesController().putUsers(arrayList, true);
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        getMessagesController().putChats(arrayList2, true);
    }

    public void loadGroupedMessagesForTopicUpdates(ArrayList<TopicsController.TopicUpdate> arrayList) {
        if (arrayList == null) {
            return;
        }
        try {
            LongSparseArray longSparseArray = new LongSparseArray();
            for (int i = 0; i < arrayList.size(); i++) {
                if (!arrayList.get(i).reloadTopic && !arrayList.get(i).onlyCounters && arrayList.get(i).topMessage != null) {
                    long j = arrayList.get(i).topMessage.grouped_id;
                    if (j != 0) {
                        ArrayList arrayList2 = (ArrayList) longSparseArray.get(j);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            longSparseArray.put(j, arrayList2);
                        }
                        arrayList2.add(arrayList.get(i));
                    }
                }
            }
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long keyAt = longSparseArray.keyAt(i2);
                ArrayList arrayList3 = (ArrayList) longSparseArray.valueAt(i2);
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_v2 WHERE uid = %s AND group_id = %s ORDER BY date DESC", Long.valueOf(((TopicsController.TopicUpdate) arrayList3.get(0)).dialogId), Long.valueOf(keyAt)), new Object[0]);
                ArrayList<MessageObject> arrayList4 = null;
                while (queryFinalized.next()) {
                    NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    if (TLdeserialize != null) {
                        TLdeserialize.readAttachPath(byteBufferValue, UserConfig.getInstance(this.currentAccount).clientUserId);
                    }
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList4.add(new MessageObject(this.currentAccount, TLdeserialize, false, false));
                }
                queryFinalized.dispose();
                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                    ((TopicsController.TopicUpdate) arrayList3.get(i3)).groupedMessages = arrayList4;
                }
            }
        } catch (Throwable th) {
            checkSQLException(th);
        }
    }

    public void loadGroupedMessagesForTopics(long j, ArrayList<TLRPC$TL_forumTopic> arrayList) {
        if (arrayList == null) {
            return;
        }
        try {
            LongSparseArray longSparseArray = new LongSparseArray();
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).topMessage != null) {
                    long j2 = arrayList.get(i).topMessage.grouped_id;
                    if (j2 != 0) {
                        ArrayList arrayList2 = (ArrayList) longSparseArray.get(j2);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            longSparseArray.put(j2, arrayList2);
                        }
                        arrayList2.add(arrayList.get(i));
                    }
                }
            }
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long keyAt = longSparseArray.keyAt(i2);
                ArrayList arrayList3 = (ArrayList) longSparseArray.valueAt(i2);
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_v2 WHERE uid = %s AND group_id = %s ORDER BY date DESC", Long.valueOf(j), Long.valueOf(keyAt)), new Object[0]);
                ArrayList<MessageObject> arrayList4 = null;
                while (queryFinalized.next()) {
                    NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                    TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    if (TLdeserialize != null) {
                        TLdeserialize.readAttachPath(byteBufferValue, UserConfig.getInstance(this.currentAccount).clientUserId);
                    }
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList4.add(new MessageObject(this.currentAccount, TLdeserialize, false, false));
                }
                queryFinalized.dispose();
                for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                    ((TLRPC$TL_forumTopic) arrayList3.get(i3)).groupedMessages = arrayList4;
                }
            }
        } catch (Throwable th) {
            checkSQLException(th);
        }
    }

    public void removeTopic(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$removeTopic$48(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeTopic$48(long j, int i) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            Locale locale = Locale.US;
            sQLiteDatabase.executeFast(String.format(locale, "DELETE FROM topics WHERE did = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
            this.database.executeFast(String.format(locale, "DELETE FROM messages_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (SQLiteException e) {
            e.printStackTrace();
        }
    }

    public void removeTopics(final long j, final ArrayList<Integer> arrayList) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda155
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$removeTopics$49(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeTopics$49(ArrayList arrayList, long j) {
        try {
            String join = TextUtils.join(", ", arrayList);
            SQLiteDatabase sQLiteDatabase = this.database;
            Locale locale = Locale.US;
            sQLiteDatabase.executeFast(String.format(locale, "DELETE FROM topics WHERE did = %d AND topic_id IN (%s)", Long.valueOf(j), join)).stepThis().dispose();
            this.database.executeFast(String.format(locale, "DELETE FROM messages_topics WHERE uid = %d AND topic_id IN (%s)", Long.valueOf(j), join)).stepThis().dispose();
        } catch (SQLiteException e) {
            e.printStackTrace();
        }
    }

    public void updateTopicsWithReadMessages(final HashMap<TopicKey, Integer> hashMap) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda166
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateTopicsWithReadMessages$50(hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopicsWithReadMessages$50(HashMap hashMap) {
        for (TopicKey topicKey : hashMap.keySet()) {
            try {
                this.database.executeFast(String.format(Locale.US, "UPDATE topics SET read_outbox = max((SELECT read_outbox FROM topics WHERE did = %d AND topic_id = %d), %d) WHERE did = %d AND topic_id = %d", Long.valueOf(topicKey.dialogId), Integer.valueOf(topicKey.topicId), Integer.valueOf(((Integer) hashMap.get(topicKey)).intValue()), Long.valueOf(topicKey.dialogId), Integer.valueOf(topicKey.topicId))).stepThis().dispose();
            } catch (SQLiteException e) {
                checkSQLException(e);
            }
        }
    }

    public void setDialogTtl(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogTtl$51(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogTtl$51(int i, long j) {
        try {
            this.database.executeFast(String.format(Locale.US, "UPDATE dialogs SET ttl_period = %d WHERE did = %d", Integer.valueOf(i), Long.valueOf(j))).stepThis().dispose();
        } catch (SQLiteException e) {
            checkSQLException(e);
        }
    }

    public ArrayList<File> getDatabaseFiles() {
        ArrayList<File> arrayList = new ArrayList<>();
        arrayList.add(this.cacheFile);
        arrayList.add(this.walCacheFile);
        arrayList.add(this.shmCacheFile);
        return arrayList;
    }

    public void reset() {
        clearDatabaseValues();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$reset$52();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reset$52() {
        for (int i = 0; i < 2; i++) {
            getUserConfig().setDialogsLoadOffset(i, 0, 0, 0L, 0L, 0L, 0L);
            getUserConfig().setTotalDialogsCount(i, 0);
        }
        getUserConfig().clearFilters();
        getUserConfig().clearPinnedDialogsLoaded();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didClearDatabase, new Object[0]);
        getMediaDataController().loadAttachMenuBots(false, true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseReset, new Object[0]);
        getMessagesController().getStoriesController().cleanup();
    }

    public void fullReset() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$fullReset$54();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fullReset$54() {
        cleanupInternal(true);
        clearLoadingDialogsOffsets();
        openDatabase(1);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$fullReset$53();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fullReset$53() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDatabaseReset, new Object[0]);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didClearDatabase, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ReadDialog {
        public int date;
        public int lastMid;
        public int unreadCount;

        private ReadDialog() {
        }
    }

    public void readAllDialogs(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$readAllDialogs$56(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllDialogs$56(int i) {
        SQLiteCursor queryFinalized;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                ArrayList<Long> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                final LongSparseArray longSparseArray = new LongSparseArray();
                if (i >= 0) {
                    queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT did, last_mid, unread_count, date FROM dialogs WHERE unread_count > 0 AND folder_id = %1$d", Integer.valueOf(i)), new Object[0]);
                } else {
                    queryFinalized = this.database.queryFinalized("SELECT did, last_mid, unread_count, date FROM dialogs WHERE unread_count > 0", new Object[0]);
                }
                while (queryFinalized.next()) {
                    try {
                        long longValue = queryFinalized.longValue(0);
                        if (!DialogObject.isFolderDialogId(longValue)) {
                            ReadDialog readDialog = new ReadDialog();
                            readDialog.lastMid = queryFinalized.intValue(1);
                            readDialog.unreadCount = queryFinalized.intValue(2);
                            readDialog.date = queryFinalized.intValue(3);
                            longSparseArray.put(longValue, readDialog);
                            if (!DialogObject.isEncryptedDialog(longValue)) {
                                if (DialogObject.isChatDialog(longValue)) {
                                    long j = -longValue;
                                    if (!arrayList2.contains(Long.valueOf(j))) {
                                        arrayList2.add(Long.valueOf(j));
                                    }
                                } else if (!arrayList.contains(Long.valueOf(longValue))) {
                                    arrayList.add(Long.valueOf(longValue));
                                }
                            } else {
                                int encryptedChatId = DialogObject.getEncryptedChatId(longValue);
                                if (!arrayList3.contains(Integer.valueOf(encryptedChatId))) {
                                    arrayList3.add(Integer.valueOf(encryptedChatId));
                                }
                            }
                        }
                    } catch (Exception e) {
                        sQLiteCursor = queryFinalized;
                        e = e;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        sQLiteCursor = queryFinalized;
                        th = th;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        throw th;
                    }
                }
                queryFinalized.dispose();
                final ArrayList<TLRPC$User> arrayList4 = new ArrayList<>();
                final ArrayList<TLRPC$Chat> arrayList5 = new ArrayList<>();
                final ArrayList<TLRPC$EncryptedChat> arrayList6 = new ArrayList<>();
                if (!arrayList3.isEmpty()) {
                    getEncryptedChatsInternal(TextUtils.join(",", arrayList3), arrayList6, arrayList);
                }
                if (!arrayList.isEmpty()) {
                    getUsersInternal(TextUtils.join(",", arrayList), arrayList4);
                }
                if (!arrayList2.isEmpty()) {
                    getChatsInternal(TextUtils.join(",", arrayList2), arrayList5);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda163
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$readAllDialogs$55(arrayList4, arrayList5, arrayList6, longSparseArray);
                    }
                });
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readAllDialogs$55(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, LongSparseArray longSparseArray) {
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        getMessagesController().putEncryptedChats(arrayList3, true);
        for (int i = 0; i < longSparseArray.size(); i++) {
            long keyAt = longSparseArray.keyAt(i);
            ReadDialog readDialog = (ReadDialog) longSparseArray.valueAt(i);
            if (getMessagesController().isForum(keyAt)) {
                getMessagesController().markAllTopicsAsRead(keyAt);
            }
            getMessagesController().markMentionsAsRead(keyAt, 0);
            MessagesController messagesController = getMessagesController();
            int i2 = readDialog.lastMid;
            messagesController.markDialogAsRead(keyAt, i2, i2, readDialog.date, false, 0, readDialog.unreadCount, true, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5 A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00de A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b6 A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c5 A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01dd A[Catch: all -> 0x03e3, Exception -> 0x03e6, TryCatch #4 {all -> 0x03e3, blocks: (B:4:0x002d, B:6:0x0035, B:8:0x005d, B:14:0x006d, B:18:0x008c, B:22:0x00a2, B:24:0x00b5, B:26:0x00bd, B:27:0x00c2, B:29:0x00de, B:31:0x00ea, B:33:0x00fd, B:35:0x0108, B:37:0x012d, B:39:0x0134, B:40:0x0148, B:42:0x014c, B:44:0x0150, B:46:0x0156, B:48:0x015a, B:50:0x015e, B:52:0x0166, B:54:0x016c, B:56:0x017d, B:58:0x0189, B:60:0x0190, B:62:0x0194, B:72:0x01b0, B:74:0x01b6, B:76:0x01bc, B:77:0x01bf, B:79:0x01c5, B:81:0x01d5, B:82:0x01dd, B:84:0x01e5, B:86:0x01ef, B:87:0x01f7, B:89:0x0202, B:69:0x01a2, B:70:0x01a6, B:91:0x0210), top: B:194:0x002d }] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.telegram.tgnet.TLRPC$messages_Dialogs loadDialogsByIds(java.lang.String r22, java.util.ArrayList<java.lang.Long> r23, java.util.ArrayList<java.lang.Long> r24, java.util.ArrayList<java.lang.Integer> r25) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.loadDialogsByIds(java.lang.String, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList):org.telegram.tgnet.TLRPC$messages_Dialogs");
    }

    private void loadDialogFilters() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadDialogFilters$58();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01af A[Catch: all -> 0x03cd, Exception -> 0x03d0, TryCatch #9 {Exception -> 0x03d0, all -> 0x03cd, blocks: (B:26:0x015c, B:28:0x0162, B:30:0x0198, B:39:0x01af, B:41:0x01b6, B:43:0x01bf, B:44:0x01c4, B:51:0x01cf, B:54:0x020d, B:56:0x0213, B:58:0x021c, B:60:0x0222, B:61:0x022b, B:63:0x0234, B:65:0x0243, B:69:0x025a, B:71:0x0260, B:73:0x026b, B:74:0x0273, B:76:0x0279, B:78:0x0283, B:79:0x028b, B:81:0x0299, B:66:0x024b, B:68:0x0251, B:83:0x02a5, B:53:0x01ef, B:84:0x02b5, B:32:0x01a0, B:89:0x02c7), top: B:149:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01b6 A[Catch: all -> 0x03cd, Exception -> 0x03d0, TryCatch #9 {Exception -> 0x03d0, all -> 0x03cd, blocks: (B:26:0x015c, B:28:0x0162, B:30:0x0198, B:39:0x01af, B:41:0x01b6, B:43:0x01bf, B:44:0x01c4, B:51:0x01cf, B:54:0x020d, B:56:0x0213, B:58:0x021c, B:60:0x0222, B:61:0x022b, B:63:0x0234, B:65:0x0243, B:69:0x025a, B:71:0x0260, B:73:0x026b, B:74:0x0273, B:76:0x0279, B:78:0x0283, B:79:0x028b, B:81:0x0299, B:66:0x024b, B:68:0x0251, B:83:0x02a5, B:53:0x01ef, B:84:0x02b5, B:32:0x01a0, B:89:0x02c7), top: B:149:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01bf A[Catch: all -> 0x03cd, Exception -> 0x03d0, TryCatch #9 {Exception -> 0x03d0, all -> 0x03cd, blocks: (B:26:0x015c, B:28:0x0162, B:30:0x0198, B:39:0x01af, B:41:0x01b6, B:43:0x01bf, B:44:0x01c4, B:51:0x01cf, B:54:0x020d, B:56:0x0213, B:58:0x021c, B:60:0x0222, B:61:0x022b, B:63:0x0234, B:65:0x0243, B:69:0x025a, B:71:0x0260, B:73:0x026b, B:74:0x0273, B:76:0x0279, B:78:0x0283, B:79:0x028b, B:81:0x0299, B:66:0x024b, B:68:0x0251, B:83:0x02a5, B:53:0x01ef, B:84:0x02b5, B:32:0x01a0, B:89:0x02c7), top: B:149:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0213 A[Catch: all -> 0x03cd, Exception -> 0x03d0, TryCatch #9 {Exception -> 0x03d0, all -> 0x03cd, blocks: (B:26:0x015c, B:28:0x0162, B:30:0x0198, B:39:0x01af, B:41:0x01b6, B:43:0x01bf, B:44:0x01c4, B:51:0x01cf, B:54:0x020d, B:56:0x0213, B:58:0x021c, B:60:0x0222, B:61:0x022b, B:63:0x0234, B:65:0x0243, B:69:0x025a, B:71:0x0260, B:73:0x026b, B:74:0x0273, B:76:0x0279, B:78:0x0283, B:79:0x028b, B:81:0x0299, B:66:0x024b, B:68:0x0251, B:83:0x02a5, B:53:0x01ef, B:84:0x02b5, B:32:0x01a0, B:89:0x02c7), top: B:149:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a5 A[Catch: all -> 0x03cd, Exception -> 0x03d0, LOOP:1: B:48:0x01ca->B:83:0x02a5, LOOP_END, TryCatch #9 {Exception -> 0x03d0, all -> 0x03cd, blocks: (B:26:0x015c, B:28:0x0162, B:30:0x0198, B:39:0x01af, B:41:0x01b6, B:43:0x01bf, B:44:0x01c4, B:51:0x01cf, B:54:0x020d, B:56:0x0213, B:58:0x021c, B:60:0x0222, B:61:0x022b, B:63:0x0234, B:65:0x0243, B:69:0x025a, B:71:0x0260, B:73:0x026b, B:74:0x0273, B:76:0x0279, B:78:0x0283, B:79:0x028b, B:81:0x0299, B:66:0x024b, B:68:0x0251, B:83:0x02a5, B:53:0x01ef, B:84:0x02b5, B:32:0x01a0, B:89:0x02c7), top: B:149:0x015c }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x02a0 -> B:52:0x01ed). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadDialogFilters$58() {
        /*
            Method dump skipped, instructions count: 1025
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$loadDialogFilters$58():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$loadDialogFilters$57(MessagesController.DialogFilter dialogFilter, MessagesController.DialogFilter dialogFilter2) {
        int i = dialogFilter.order;
        int i2 = dialogFilter2.order;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:276:0x05ed, code lost:
        if (r13.indexOfKey(r15.f1749id) >= 0) goto L293;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0314 A[Catch: all -> 0x07ad, Exception -> 0x07b1, TryCatch #5 {Exception -> 0x07b1, all -> 0x07ad, blocks: (B:7:0x000a, B:8:0x005b, B:9:0x005e, B:48:0x0159, B:51:0x0181, B:53:0x018f, B:55:0x01b4, B:59:0x01c3, B:60:0x01ca, B:62:0x01ce, B:63:0x01d8, B:65:0x01dc, B:73:0x0205, B:66:0x01e7, B:68:0x01eb, B:71:0x01f0, B:72:0x01fb, B:74:0x021a, B:76:0x0228, B:78:0x023f, B:80:0x024f, B:81:0x0261, B:83:0x026a, B:108:0x02fc, B:86:0x0281, B:90:0x029c, B:92:0x02aa, B:96:0x02bb, B:97:0x02c2, B:99:0x02c6, B:100:0x02d0, B:102:0x02d4, B:105:0x02d9, B:107:0x02ee, B:106:0x02e4, B:111:0x030e, B:113:0x0314, B:115:0x0326, B:117:0x0332, B:119:0x0338, B:121:0x0349, B:124:0x035c, B:126:0x0371, B:131:0x0381, B:134:0x038c, B:135:0x0394, B:137:0x039f, B:138:0x03a9, B:140:0x03ad, B:142:0x03b1, B:143:0x03bb, B:145:0x03c1, B:147:0x03c5, B:152:0x03f7, B:154:0x03fd, B:156:0x0401, B:157:0x040c, B:158:0x0416, B:160:0x0430, B:148:0x03d0, B:150:0x03e2, B:151:0x03ed, B:159:0x041e, B:161:0x0436, B:162:0x043f, B:165:0x0445, B:391:0x0767, B:168:0x0455, B:178:0x046f, B:180:0x0474, B:182:0x0479, B:184:0x0486, B:187:0x0490, B:189:0x0495, B:191:0x04a3, B:193:0x04aa, B:195:0x04af, B:197:0x04b4, B:199:0x04c1, B:200:0x04c7, B:202:0x04cc, B:204:0x04da, B:205:0x04df, B:207:0x04e4, B:209:0x04e9, B:211:0x04f6, B:212:0x04fc, B:214:0x0501, B:216:0x050f, B:217:0x0514, B:219:0x0519, B:221:0x051e, B:223:0x052b, B:224:0x0531, B:226:0x0536, B:228:0x0544, B:229:0x0549, B:231:0x054e, B:233:0x0553, B:235:0x0560, B:236:0x0566, B:238:0x056b, B:240:0x0579, B:242:0x0580, B:244:0x0589, B:252:0x05aa, B:259:0x05c3, B:261:0x05c7, B:269:0x05d8, B:271:0x05db, B:285:0x0605, B:273:0x05e0, B:275:0x05e5, B:277:0x05ef, B:279:0x05f4, B:281:0x05f9, B:262:0x05ca, B:264:0x05ce, B:267:0x05d3, B:268:0x05d6, B:256:0x05b9, B:310:0x0660, B:287:0x0611, B:289:0x0622, B:291:0x0628, B:293:0x062c, B:295:0x0631, B:297:0x0634, B:298:0x0637, B:300:0x063c, B:302:0x0645, B:305:0x0651, B:307:0x0656, B:294:0x062f, B:311:0x066c, B:313:0x0679, B:321:0x0696, B:328:0x06af, B:330:0x06b3, B:338:0x06c4, B:340:0x06c7, B:342:0x06cc, B:346:0x06d9, B:348:0x06de, B:350:0x06e6, B:353:0x06ed, B:331:0x06b6, B:333:0x06ba, B:336:0x06bf, B:337:0x06c2, B:325:0x06a5, B:376:0x0741, B:355:0x06f9, B:357:0x0706, B:359:0x070c, B:361:0x0710, B:363:0x0715, B:365:0x0718, B:367:0x071d, B:369:0x0726, B:371:0x072b, B:373:0x0734, B:375:0x073f, B:362:0x0713, B:377:0x0749, B:379:0x074d, B:383:0x0756, B:385:0x075a, B:386:0x075d, B:388:0x0761, B:390:0x0765, B:169:0x0458, B:171:0x045c, B:173:0x0464, B:174:0x0467, B:175:0x0469, B:176:0x046b, B:399:0x0779, B:401:0x077e, B:403:0x0785, B:406:0x0790, B:408:0x079a, B:400:0x077c), top: B:435:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0771  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x07b9  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x07c1  */
    /* JADX WARN: Removed duplicated region for block: B:493:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calcUnreadCounters(boolean r28) {
        /*
            Method dump skipped, instructions count: 1989
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.calcUnreadCounters(boolean):void");
    }

    private void saveDialogFilterInternal(MessagesController.DialogFilter dialogFilter, boolean z, boolean z2) {
        int i;
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement;
        SQLitePreparedStatement sQLitePreparedStatement2;
        SQLitePreparedStatement sQLitePreparedStatement3 = null;
        try {
            try {
                if (!SortingFilter.isSortingFilter(false, dialogFilter.f1538id) && !SortingFilter.isSortingFilter(true, dialogFilter.f1538id) && !this.dialogFilters.contains(dialogFilter)) {
                    if (z) {
                        if (this.dialogFilters.get(0).isDefault()) {
                            this.dialogFilters.add(1, dialogFilter);
                        } else {
                            this.dialogFilters.add(0, dialogFilter);
                        }
                    } else {
                        this.dialogFilters.add(dialogFilter);
                    }
                    this.dialogFiltersMap.put(dialogFilter.f1538id, dialogFilter);
                }
                executeFast = this.database.executeFast("REPLACE INTO dialog_filter VALUES(?, ?, ?, ?, ?)");
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            executeFast.bindInteger(1, dialogFilter.f1538id);
            executeFast.bindInteger(2, dialogFilter.order);
            executeFast.bindInteger(3, dialogFilter.unreadCount);
            executeFast.bindInteger(4, dialogFilter.flags);
            executeFast.bindString(5, dialogFilter.f1538id == 0 ? "ALL_CHATS" : dialogFilter.name);
            executeFast.step();
            executeFast.dispose();
            if (z2) {
                this.database.executeFast("DELETE FROM dialog_filter_ep WHERE id = " + dialogFilter.f1538id).stepThis().dispose();
                this.database.executeFast("DELETE FROM dialog_filter_pin_v2 WHERE id = " + dialogFilter.f1538id).stepThis().dispose();
                this.database.beginTransaction();
                SQLitePreparedStatement executeFast2 = this.database.executeFast("REPLACE INTO dialog_filter_pin_v2 VALUES(?, ?, ?)");
                int size = dialogFilter.alwaysShow.size();
                for (int i2 = 0; i2 < size; i2++) {
                    long longValue = dialogFilter.alwaysShow.get(i2).longValue();
                    executeFast2.requery();
                    executeFast2.bindInteger(1, dialogFilter.f1538id);
                    executeFast2.bindLong(2, longValue);
                    executeFast2.bindInteger(3, dialogFilter.pinnedDialogs.get(longValue, Integer.MIN_VALUE));
                    executeFast2.step();
                }
                int size2 = dialogFilter.pinnedDialogs.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    long keyAt = dialogFilter.pinnedDialogs.keyAt(i3);
                    if (DialogObject.isEncryptedDialog(keyAt)) {
                        executeFast2.requery();
                        executeFast2.bindInteger(1, dialogFilter.f1538id);
                        executeFast2.bindLong(2, keyAt);
                        executeFast2.bindInteger(3, dialogFilter.pinnedDialogs.valueAt(i3));
                        executeFast2.step();
                    }
                }
                executeFast2.dispose();
                SQLitePreparedStatement executeFast3 = this.database.executeFast("REPLACE INTO dialog_filter_ep VALUES(?, ?)");
                int size3 = dialogFilter.neverShow.size();
                for (i = 0; i < size3; i++) {
                    executeFast3.requery();
                    executeFast3.bindInteger(1, dialogFilter.f1538id);
                    executeFast3.bindLong(2, dialogFilter.neverShow.get(i).longValue());
                    executeFast3.step();
                }
                executeFast3.dispose();
                this.database.commitTransaction();
            }
            SQLiteDatabase sQLiteDatabase = this.database;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.commitTransaction();
            }
        } catch (Exception e2) {
            e = e2;
            sQLitePreparedStatement3 = sQLitePreparedStatement2;
            checkSQLException(e);
            SQLiteDatabase sQLiteDatabase2 = this.database;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.commitTransaction();
            }
            if (sQLitePreparedStatement3 != null) {
                sQLitePreparedStatement3.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLitePreparedStatement3 = sQLitePreparedStatement;
            SQLiteDatabase sQLiteDatabase3 = this.database;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.commitTransaction();
            }
            if (sQLitePreparedStatement3 != null) {
                sQLitePreparedStatement3.dispose();
            }
            throw th;
        }
    }

    private ArrayList<Long> toPeerIds(ArrayList<TLRPC$InputPeer> arrayList) {
        ArrayList<Long> arrayList2 = new ArrayList<>();
        if (arrayList == null) {
            return arrayList2;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC$InputPeer tLRPC$InputPeer = arrayList.get(i);
            if (tLRPC$InputPeer != null) {
                long j = tLRPC$InputPeer.user_id;
                if (j == 0) {
                    long j2 = tLRPC$InputPeer.chat_id;
                    if (j2 == 0) {
                        j2 = tLRPC$InputPeer.channel_id;
                    }
                    j = -j2;
                }
                arrayList2.add(Long.valueOf(j));
            }
        }
        return arrayList2;
    }

    public void checkLoadedRemoteFilters(final TLRPC$Vector tLRPC$Vector, final Runnable runnable) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda200
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$checkLoadedRemoteFilters$60(tLRPC$Vector, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0305 A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0317 A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0321 A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019b A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01c9 A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0265 A[Catch: Exception -> 0x0572, TryCatch #0 {Exception -> 0x0572, blocks: (B:3:0x0004, B:5:0x0012, B:6:0x0022, B:8:0x005d, B:10:0x0072, B:12:0x007e, B:14:0x0082, B:15:0x0085, B:17:0x0089, B:18:0x008c, B:20:0x0090, B:21:0x0093, B:23:0x0097, B:24:0x009a, B:26:0x009e, B:27:0x00a1, B:29:0x00a5, B:30:0x00a8, B:32:0x00ac, B:33:0x00af, B:35:0x00b3, B:37:0x00ba, B:38:0x00bd, B:40:0x00cf, B:42:0x00e0, B:44:0x00e8, B:46:0x00ec, B:48:0x00f3, B:50:0x0112, B:52:0x0126, B:55:0x0136, B:57:0x0144, B:59:0x015c, B:63:0x0180, B:62:0x0171, B:67:0x0192, B:69:0x019b, B:73:0x01b6, B:72:0x01a8, B:74:0x01b9, B:76:0x01c9, B:78:0x01dd, B:84:0x01f0, B:86:0x01fa, B:88:0x0206, B:89:0x021e, B:91:0x0236, B:93:0x023c, B:96:0x0247, B:79:0x01e2, B:83:0x01eb, B:82:0x01e9, B:99:0x0265, B:100:0x026d, B:102:0x0273, B:107:0x0297, B:109:0x029c, B:111:0x02a2, B:114:0x02a9, B:115:0x02b0, B:117:0x02b6, B:118:0x02c0, B:120:0x02c6, B:127:0x02de, B:130:0x02eb, B:133:0x02f2, B:134:0x02f5, B:136:0x02fb, B:112:0x02a5, B:108:0x029a, B:137:0x02fe, B:139:0x0305, B:142:0x0317, B:145:0x0321, B:201:0x047b, B:148:0x033b, B:151:0x0362, B:153:0x036b, B:155:0x037a, B:161:0x038d, B:163:0x0395, B:164:0x039a, B:166:0x03b3, B:167:0x03b9, B:156:0x037f, B:160:0x0388, B:159:0x0386, B:170:0x03c5, B:173:0x03cc, B:175:0x03d1, B:177:0x03d8, B:179:0x03e6, B:181:0x03f0, B:182:0x03f3, B:184:0x03fb, B:198:0x044c, B:187:0x0410, B:191:0x0420, B:193:0x0436, B:194:0x0439, B:196:0x0441, B:190:0x041e, B:199:0x045a, B:174:0x03cf, B:171:0x03c8, B:200:0x046e, B:202:0x048f, B:205:0x04a3, B:207:0x04b9, B:209:0x04d2, B:211:0x04df, B:213:0x04ed, B:214:0x0503, B:216:0x0510, B:218:0x051e, B:219:0x0530, B:221:0x0536, B:223:0x053c, B:225:0x0542, B:226:0x0556, B:208:0x04cd), top: B:231:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$checkLoadedRemoteFilters$60(org.telegram.tgnet.TLRPC$Vector r36, java.lang.Runnable r37) {
        /*
            Method dump skipped, instructions count: 1399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$checkLoadedRemoteFilters$60(org.telegram.tgnet.TLRPC$Vector, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$checkLoadedRemoteFilters$59(LongSparseIntArray longSparseIntArray, Long l, Long l2) {
        int i = longSparseIntArray.get(l.longValue());
        int i2 = longSparseIntArray.get(l2.longValue());
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processLoadedFilterPeersInternal */
    public void lambda$processLoadedFilterPeers$62(TLRPC$messages_Dialogs tLRPC$messages_Dialogs, TLRPC$messages_Dialogs tLRPC$messages_Dialogs2, ArrayList<TLRPC$User> arrayList, ArrayList<TLRPC$Chat> arrayList2, ArrayList<MessagesController.DialogFilter> arrayList3, SparseArray<MessagesController.DialogFilter> sparseArray, ArrayList<Integer> arrayList4, HashMap<Integer, HashSet<Long>> hashMap, HashSet<Integer> hashSet, Runnable runnable) {
        putUsersAndChats(arrayList, arrayList2, true, false);
        int size = sparseArray.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            lambda$deleteDialogFilter$63(sparseArray.valueAt(i));
            i++;
            z = true;
        }
        Iterator<Integer> it = hashSet.iterator();
        while (it.hasNext()) {
            MessagesController.DialogFilter dialogFilter = this.dialogFiltersMap.get(it.next().intValue());
            if (dialogFilter != null) {
                dialogFilter.pendingUnreadCount = -1;
            }
        }
        for (Map.Entry<Integer, HashSet<Long>> entry : hashMap.entrySet()) {
            MessagesController.DialogFilter dialogFilter2 = this.dialogFiltersMap.get(entry.getKey().intValue());
            if (dialogFilter2 != null) {
                Iterator<Long> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    dialogFilter2.pinnedDialogs.delete(it2.next().longValue());
                }
                z = true;
            }
        }
        int size2 = arrayList3.size();
        int i2 = 0;
        while (i2 < size2) {
            saveDialogFilterInternal(arrayList3.get(i2), false, true);
            i2++;
            z = true;
        }
        int size3 = this.dialogFilters.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < size3; i3++) {
            MessagesController.DialogFilter dialogFilter3 = this.dialogFilters.get(i3);
            int indexOf = arrayList4.indexOf(Integer.valueOf(dialogFilter3.f1538id));
            if (dialogFilter3.order != indexOf) {
                dialogFilter3.order = indexOf;
                z2 = true;
                z = true;
            }
        }
        if (z2) {
            Collections.sort(this.dialogFilters, new Comparator() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda219
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$processLoadedFilterPeersInternal$61;
                    lambda$processLoadedFilterPeersInternal$61 = MessagesStorage.lambda$processLoadedFilterPeersInternal$61((MessagesController.DialogFilter) obj, (MessagesController.DialogFilter) obj2);
                    return lambda$processLoadedFilterPeersInternal$61;
                }
            });
            saveDialogFiltersOrderInternal();
        }
        int i4 = z ? 1 : 2;
        calcUnreadCounters(true);
        getMessagesController().processLoadedDialogFilters(new ArrayList<>(this.dialogFilters), null, null, tLRPC$messages_Dialogs, tLRPC$messages_Dialogs2, arrayList, arrayList2, null, i4, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$processLoadedFilterPeersInternal$61(MessagesController.DialogFilter dialogFilter, MessagesController.DialogFilter dialogFilter2) {
        int i = dialogFilter.order;
        int i2 = dialogFilter2.order;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processLoadedFilterPeers(final TLRPC$messages_Dialogs tLRPC$messages_Dialogs, final TLRPC$messages_Dialogs tLRPC$messages_Dialogs2, final ArrayList<TLRPC$User> arrayList, final ArrayList<TLRPC$Chat> arrayList2, final ArrayList<MessagesController.DialogFilter> arrayList3, final SparseArray<MessagesController.DialogFilter> sparseArray, final ArrayList<Integer> arrayList4, final HashMap<Integer, HashSet<Long>> hashMap, final HashSet<Integer> hashSet, final Runnable runnable) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda203
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$processLoadedFilterPeers$62(tLRPC$messages_Dialogs, tLRPC$messages_Dialogs2, arrayList, arrayList2, arrayList3, sparseArray, arrayList4, hashMap, hashSet, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteDialogFilterInternal */
    public void lambda$deleteDialogFilter$63(MessagesController.DialogFilter dialogFilter) {
        try {
            this.dialogFilters.remove(dialogFilter);
            this.dialogFiltersMap.remove(dialogFilter.f1538id);
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM dialog_filter WHERE id = " + dialogFilter.f1538id).stepThis().dispose();
            SQLiteDatabase sQLiteDatabase2 = this.database;
            sQLiteDatabase2.executeFast("DELETE FROM dialog_filter_ep WHERE id = " + dialogFilter.f1538id).stepThis().dispose();
            SQLiteDatabase sQLiteDatabase3 = this.database;
            sQLiteDatabase3.executeFast("DELETE FROM dialog_filter_pin_v2 WHERE id = " + dialogFilter.f1538id).stepThis().dispose();
            getFiltersController().removeFilterSettings(dialogFilter.f1538id);
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void deleteDialogFilter(final MessagesController.DialogFilter dialogFilter) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda172
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteDialogFilter$63(dialogFilter);
            }
        });
    }

    public void saveDialogFilter(final MessagesController.DialogFilter dialogFilter, final boolean z, final boolean z2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda173
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveDialogFilter$65(dialogFilter, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDialogFilter$65(MessagesController.DialogFilter dialogFilter, boolean z, boolean z2) {
        saveDialogFilterInternal(dialogFilter, z, z2);
        calcUnreadCounters(false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveDialogFilter$64();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDialogFilter$64() {
        ArrayList<MessagesController.DialogFilter> arrayList = getMessagesController().dialogFilters;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).unreadCount = arrayList.get(i).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList2 = getMessagesController().sortingDialogFilters;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            arrayList2.get(i2).unreadCount = arrayList2.get(i2).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList3 = getMessagesController().archiveSortingDialogFilters;
        int size3 = arrayList3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            arrayList3.get(i3).unreadCount = arrayList3.get(i3).pendingUnreadCount;
        }
        this.mainUnreadCount = this.pendingMainUnreadCount;
        this.archiveUnreadCount = this.pendingArchiveUnreadCount;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE));
    }

    public void saveDialogFiltersOrderInternal() {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE dialog_filter SET ord = ?, flags = ? WHERE id = ?");
                int size = this.dialogFilters.size();
                for (int i = 0; i < size; i++) {
                    MessagesController.DialogFilter dialogFilter = this.dialogFilters.get(i);
                    sQLitePreparedStatement.requery();
                    sQLitePreparedStatement.bindInteger(1, dialogFilter.order);
                    sQLitePreparedStatement.bindInteger(2, dialogFilter.flags);
                    sQLitePreparedStatement.bindInteger(3, dialogFilter.f1538id);
                    sQLitePreparedStatement.step();
                }
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement != null) {
                    sQLitePreparedStatement.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void saveDialogFiltersOrder() {
        final ArrayList arrayList = new ArrayList(getMessagesController().dialogFilters);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda151
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveDialogFiltersOrder$66(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveDialogFiltersOrder$66(ArrayList arrayList) {
        this.dialogFilters.clear();
        this.dialogFiltersMap.clear();
        this.dialogFilters.addAll(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            ((MessagesController.DialogFilter) arrayList.get(i)).order = i;
            this.dialogFiltersMap.put(((MessagesController.DialogFilter) arrayList.get(i)).f1538id, (MessagesController.DialogFilter) arrayList.get(i));
        }
        saveDialogFiltersOrderInternal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void addReplyMessages(TLRPC$Message tLRPC$Message, LongSparseArray<SparseArray<ArrayList<TLRPC$Message>>> longSparseArray, LongSparseArray<ArrayList<Integer>> longSparseArray2) {
        int i = tLRPC$Message.reply_to.reply_to_msg_id;
        long replyToDialogId = MessageObject.getReplyToDialogId(tLRPC$Message);
        SparseArray<ArrayList<TLRPC$Message>> sparseArray = longSparseArray.get(replyToDialogId);
        ArrayList<Integer> arrayList = longSparseArray2.get(replyToDialogId);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            longSparseArray.put(replyToDialogId, sparseArray);
        }
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            longSparseArray2.put(replyToDialogId, arrayList);
        }
        ArrayList<TLRPC$Message> arrayList2 = sparseArray.get(tLRPC$Message.reply_to.reply_to_msg_id);
        if (arrayList2 == null) {
            arrayList2 = new ArrayList<>();
            sparseArray.put(tLRPC$Message.reply_to.reply_to_msg_id, arrayList2);
            if (!arrayList.contains(Integer.valueOf(tLRPC$Message.reply_to.reply_to_msg_id))) {
                arrayList.add(Integer.valueOf(tLRPC$Message.reply_to.reply_to_msg_id));
            }
        }
        arrayList2.add(tLRPC$Message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092 A[Catch: all -> 0x0101, Exception -> 0x0103, TryCatch #1 {Exception -> 0x0103, blocks: (B:22:0x0045, B:25:0x008c, B:27:0x0092, B:29:0x0098, B:31:0x00d3, B:33:0x00da, B:35:0x00f4, B:24:0x0069), top: B:49:0x0045, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f4 A[Catch: all -> 0x0101, Exception -> 0x0103, TRY_LEAVE, TryCatch #1 {Exception -> 0x0103, blocks: (B:22:0x0045, B:25:0x008c, B:27:0x0092, B:29:0x0098, B:31:0x00d3, B:33:0x00da, B:35:0x00f4, B:24:0x0069), top: B:49:0x0045, outer: #0 }] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4, types: [boolean, int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0067 -> B:25:0x008c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadReplyMessages(androidx.collection.LongSparseArray<android.util.SparseArray<java.util.ArrayList<org.telegram.tgnet.TLRPC$Message>>> r20, androidx.collection.LongSparseArray<java.util.ArrayList<java.lang.Integer>> r21, java.util.ArrayList<java.lang.Long> r22, java.util.ArrayList<java.lang.Long> r23, boolean r24) throws org.telegram.SQLite.SQLiteException {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.loadReplyMessages(androidx.collection.LongSparseArray, androidx.collection.LongSparseArray, java.util.ArrayList, java.util.ArrayList, boolean):void");
    }

    public void loadUnreadMessages() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadUnreadMessages$68();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0582  */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadUnreadMessages$68() {
        /*
            Method dump skipped, instructions count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$loadUnreadMessages$68():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUnreadMessages$67(LongSparseArray longSparseArray, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5, HashMap hashMap) {
        getNotificationsController().processLoadedUnreadMessages(longSparseArray, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, hashMap.values());
    }

    public void putWallpapers(final ArrayList<TLRPC$WallPaper> arrayList, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putWallpapers$69(i, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putWallpapers$69(int r11, java.util.ArrayList r12) {
        /*
            r10 = this;
            r0 = 0
            r1 = 1
            if (r11 != r1) goto L13
            org.telegram.SQLite.SQLiteDatabase r2 = r10.database     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            java.lang.String r3 = "DELETE FROM wallpapers2 WHERE num >= -1"
            org.telegram.SQLite.SQLitePreparedStatement r2 = r2.executeFast(r3)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            org.telegram.SQLite.SQLitePreparedStatement r2 = r2.stepThis()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r2.dispose()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
        L13:
            org.telegram.SQLite.SQLiteDatabase r2 = r10.database     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            if (r11 == 0) goto L23
            org.telegram.SQLite.SQLiteDatabase r2 = r10.database     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            java.lang.String r3 = "REPLACE INTO wallpapers2 VALUES(?, ?, ?)"
            org.telegram.SQLite.SQLitePreparedStatement r2 = r2.executeFast(r3)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            goto L2b
        L23:
            org.telegram.SQLite.SQLiteDatabase r2 = r10.database     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            java.lang.String r3 = "UPDATE wallpapers2 SET data = ? WHERE uid = ?"
            org.telegram.SQLite.SQLitePreparedStatement r2 = r2.executeFast(r3)     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
        L2b:
            r3 = 0
            int r4 = r12.size()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
        L30:
            if (r3 >= r4) goto L73
            java.lang.Object r5 = r12.get(r3)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            org.telegram.tgnet.TLRPC$WallPaper r5 = (org.telegram.tgnet.TLRPC$WallPaper) r5     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2.requery()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            org.telegram.tgnet.NativeByteBuffer r6 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            int r7 = r5.getObjectSize()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r5.serializeToStream(r6)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r7 = 2
            if (r11 == 0) goto L62
            long r8 = r5.f1757id     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2.bindLong(r1, r8)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2.bindByteBuffer(r7, r6)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r5 = 3
            if (r11 >= 0) goto L59
            r2.bindInteger(r5, r11)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            goto L6a
        L59:
            if (r11 != r7) goto L5d
            r7 = -1
            goto L5e
        L5d:
            r7 = r3
        L5e:
            r2.bindInteger(r5, r7)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            goto L6a
        L62:
            r2.bindByteBuffer(r1, r6)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            long r8 = r5.f1757id     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r2.bindLong(r7, r8)     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
        L6a:
            r2.step()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            r6.reuse()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            int r3 = r3 + 1
            goto L30
        L73:
            r2.dispose()     // Catch: java.lang.Throwable -> L83 java.lang.Exception -> L86
            org.telegram.SQLite.SQLiteDatabase r11 = r10.database     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            r11.commitTransaction()     // Catch: java.lang.Throwable -> L89 java.lang.Exception -> L8b
            org.telegram.SQLite.SQLiteDatabase r11 = r10.database
            if (r11 == 0) goto L9b
            r11.commitTransaction()
            goto L9b
        L83:
            r11 = move-exception
            r0 = r2
            goto L9c
        L86:
            r11 = move-exception
            r0 = r2
            goto L8c
        L89:
            r11 = move-exception
            goto L9c
        L8b:
            r11 = move-exception
        L8c:
            r10.checkSQLException(r11)     // Catch: java.lang.Throwable -> L89
            org.telegram.SQLite.SQLiteDatabase r11 = r10.database
            if (r11 == 0) goto L96
            r11.commitTransaction()
        L96:
            if (r0 == 0) goto L9b
            r0.dispose()
        L9b:
            return
        L9c:
            org.telegram.SQLite.SQLiteDatabase r12 = r10.database
            if (r12 == 0) goto La3
            r12.commitTransaction()
        La3:
            if (r0 == 0) goto La8
            r0.dispose()
        La8:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putWallpapers$69(int, java.util.ArrayList):void");
    }

    public void deleteWallpaper(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteWallpaper$70(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteWallpaper$70(long j) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM wallpapers2 WHERE uid = " + j).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void getWallpapers() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getWallpapers$72();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getWallpapers$72() {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                sQLiteCursor = this.database.queryFinalized("SELECT data FROM wallpapers2 WHERE 1 ORDER BY num ASC", new Object[0]);
                final ArrayList arrayList = new ArrayList();
                while (sQLiteCursor.next()) {
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        TLRPC$WallPaper TLdeserialize = TLRPC$WallPaper.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                        if (TLdeserialize != null) {
                            arrayList.add(TLdeserialize);
                        }
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.lambda$getWallpapers$71(arrayList);
                    }
                });
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor == null) {
                    return;
                }
            }
            sQLiteCursor.dispose();
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getWallpapers$71(ArrayList arrayList) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.wallpapersDidLoad, arrayList);
    }

    public void addRecentLocalFile(final String str, final String str2, final TLRPC$Document tLRPC$Document) {
        if (str == null || str.length() == 0) {
            return;
        }
        if ((str2 == null || str2.length() == 0) && tLRPC$Document == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda185
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$addRecentLocalFile$73(tLRPC$Document, str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addRecentLocalFile$73(TLRPC$Document tLRPC$Document, String str, String str2) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                if (tLRPC$Document != null) {
                    sQLitePreparedStatement = this.database.executeFast("UPDATE web_recent_v3 SET document = ? WHERE image_url = ?");
                    sQLitePreparedStatement.requery();
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Document.getObjectSize());
                    tLRPC$Document.serializeToStream(nativeByteBuffer);
                    sQLitePreparedStatement.bindByteBuffer(1, nativeByteBuffer);
                    sQLitePreparedStatement.bindString(2, str);
                    sQLitePreparedStatement.step();
                    sQLitePreparedStatement.dispose();
                    nativeByteBuffer.reuse();
                } else {
                    sQLitePreparedStatement = this.database.executeFast("UPDATE web_recent_v3 SET local_url = ? WHERE image_url = ?");
                    sQLitePreparedStatement.requery();
                    sQLitePreparedStatement.bindString(1, str2);
                    sQLitePreparedStatement.bindString(2, str);
                    sQLitePreparedStatement.step();
                    sQLitePreparedStatement.dispose();
                }
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void deleteUserChatHistory(final long j, final long j2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda93
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteUserChatHistory$76(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00de A[Catch: all -> 0x00ed, Exception -> 0x00f0, TRY_LEAVE, TryCatch #7 {Exception -> 0x00f0, all -> 0x00ed, blocks: (B:3:0x0004, B:35:0x00a0, B:39:0x00c6, B:41:0x00de), top: B:67:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$deleteUserChatHistory$76(final long r18, long r20) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$deleteUserChatHistory$76(long, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteUserChatHistory$74(ArrayList arrayList, long j, ArrayList arrayList2) {
        getFileLoader().cancelLoadFiles(arrayList);
        getMessagesController().markDialogMessageAsDeleted(j, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteUserChatHistory$75(ArrayList arrayList, long j) {
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.messagesDeleted;
        Object[] objArr = new Object[3];
        objArr[0] = arrayList;
        objArr[1] = Long.valueOf(DialogObject.isChatDialog(j) ? -j : 0L);
        objArr[2] = Boolean.FALSE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, objArr);
    }

    private boolean addFilesToDelete(TLRPC$Message tLRPC$Message, ArrayList<File> arrayList, ArrayList<Pair<Long, Integer>> arrayList2, ArrayList<String> arrayList3, boolean z) {
        long j;
        int i;
        int i2 = 0;
        if (tLRPC$Message == null) {
            return false;
        }
        TLRPC$Document document = MessageObject.getDocument(tLRPC$Message);
        TLRPC$Photo photo = MessageObject.getPhoto(tLRPC$Message);
        if (MessageObject.isVoiceMessage(tLRPC$Message)) {
            if (document == null || getMediaDataController().ringtoneDataStore.contains(document.f1610id)) {
                return false;
            }
            j = document.f1610id;
            i = 2;
        } else {
            if (MessageObject.isStickerMessage(tLRPC$Message) || MessageObject.isAnimatedStickerMessage(tLRPC$Message)) {
                if (document == null) {
                    return false;
                }
                j = document.f1610id;
            } else if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isGifMessage(tLRPC$Message)) {
                if (document == null) {
                    return false;
                }
                j = document.f1610id;
                i = 4;
            } else if (document != null) {
                if (getMediaDataController().ringtoneDataStore.contains(document.f1610id)) {
                    return false;
                }
                j = document.f1610id;
                i = 8;
            } else if (photo == null || FileLoader.getClosestPhotoSizeWithSize(photo.sizes, AndroidUtilities.getPhotoSize()) == null) {
                i = 0;
                j = 0;
            } else {
                j = photo.f1632id;
            }
            i = 1;
        }
        if (j != 0) {
            arrayList2.add(new Pair<>(Long.valueOf(j), Integer.valueOf(i)));
        }
        if (photo != null) {
            int size = photo.sizes.size();
            while (i2 < size) {
                TLRPC$PhotoSize tLRPC$PhotoSize = photo.sizes.get(i2);
                String attachFileName = FileLoader.getAttachFileName(tLRPC$PhotoSize);
                if (!TextUtils.isEmpty(attachFileName)) {
                    arrayList3.add(attachFileName);
                }
                File pathToAttach = getFileLoader().getPathToAttach(tLRPC$PhotoSize, z);
                if (pathToAttach.toString().length() > 0) {
                    arrayList.add(pathToAttach);
                }
                i2++;
            }
            return true;
        } else if (document != null) {
            String attachFileName2 = FileLoader.getAttachFileName(document);
            if (!TextUtils.isEmpty(attachFileName2)) {
                arrayList3.add(attachFileName2);
            }
            File pathToAttach2 = getFileLoader().getPathToAttach(document, z);
            if (pathToAttach2.toString().length() > 0) {
                arrayList.add(pathToAttach2);
            }
            int size2 = document.thumbs.size();
            while (i2 < size2) {
                File pathToAttach3 = getFileLoader().getPathToAttach(document.thumbs.get(i2));
                if (pathToAttach3.toString().length() > 0) {
                    arrayList.add(pathToAttach3);
                }
                i2++;
            }
            return true;
        } else {
            return false;
        }
    }

    public void deleteDialog(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteDialog$79(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03d9 A[Catch: all -> 0x0530, Exception -> 0x0538, TryCatch #24 {Exception -> 0x0538, all -> 0x0530, blocks: (B:4:0x000c, B:17:0x0048, B:51:0x0115, B:132:0x0421, B:126:0x033d, B:128:0x03d9, B:130:0x03df, B:131:0x03ff, B:23:0x005b, B:43:0x00eb), top: B:197:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03ff A[Catch: all -> 0x0530, Exception -> 0x0538, TryCatch #24 {Exception -> 0x0538, all -> 0x0530, blocks: (B:4:0x000c, B:17:0x0048, B:51:0x0115, B:132:0x0421, B:126:0x033d, B:128:0x03d9, B:130:0x03df, B:131:0x03ff, B:23:0x005b, B:43:0x00eb), top: B:197:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:212:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d5  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v29 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$deleteDialog$79(int r26, long r27) {
        /*
            Method dump skipped, instructions count: 1390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$deleteDialog$79(int, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteDialog$77(ArrayList arrayList) {
        getFileLoader().cancelLoadFiles(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteDialog$78() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needReloadRecentDialogsSearch, new Object[0]);
    }

    public void onDeleteQueryComplete(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$onDeleteQueryComplete$80(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDeleteQueryComplete$80(long j) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM media_counts_v2 WHERE uid = " + j).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void clearUserPhotos(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearUserPhotos$81(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearUserPhotos$81(long j) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM dialog_photos WHERE uid = " + j).stepThis().dispose();
            SQLiteDatabase sQLiteDatabase2 = this.database;
            sQLiteDatabase2.executeFast("DELETE FROM dialog_photos_count WHERE uid = " + j).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void clearUserPhoto(final long j, final long j2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearUserPhoto$82(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearUserPhoto$82(long j, long j2) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM dialog_photos WHERE uid = " + j + " AND id = " + j2).stepThis().dispose();
            SQLiteDatabase sQLiteDatabase2 = this.database;
            sQLiteDatabase2.executeFast("UPDATE dialog_photos_count SET count = count - 1 WHERE uid = " + j + " AND count > 0").stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void resetDialogs(final TLRPC$messages_Dialogs tLRPC$messages_Dialogs, final int i, final int i2, final int i3, final int i4, final int i5, final LongSparseArray<TLRPC$Dialog> longSparseArray, final LongSparseArray<ArrayList<MessageObject>> longSparseArray2, final TLRPC$Message tLRPC$Message, final int i6) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda202
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$resetDialogs$84(tLRPC$messages_Dialogs, i6, i2, i3, i4, i5, tLRPC$Message, i, longSparseArray, longSparseArray2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02ee A[Catch: all -> 0x0342, Exception -> 0x0345, LOOP:5: B:77:0x02eb->B:79:0x02ee, LOOP_END, TryCatch #4 {Exception -> 0x0345, all -> 0x0342, blocks: (B:3:0x0006, B:4:0x0024, B:6:0x002c, B:7:0x0040, B:21:0x0094, B:23:0x01da, B:25:0x01e8, B:41:0x022e, B:28:0x01ed, B:32:0x0208, B:34:0x0210, B:35:0x0213, B:37:0x0223, B:38:0x0225, B:40:0x0229, B:42:0x0234, B:45:0x0261, B:47:0x0269, B:49:0x0277, B:79:0x02ee, B:80:0x030d, B:50:0x027a, B:54:0x0287, B:57:0x0290, B:59:0x0298, B:61:0x02a6, B:62:0x02a9, B:65:0x02b7, B:68:0x02c0, B:70:0x02c8, B:72:0x02d6, B:73:0x02dd), top: B:110:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0338  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$resetDialogs$84(org.telegram.tgnet.TLRPC$messages_Dialogs r33, int r34, int r35, int r36, int r37, int r38, org.telegram.tgnet.TLRPC$Message r39, int r40, androidx.collection.LongSparseArray r41, androidx.collection.LongSparseArray r42) {
        /*
            Method dump skipped, instructions count: 869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$resetDialogs$84(org.telegram.tgnet.TLRPC$messages_Dialogs, int, int, int, int, int, org.telegram.tgnet.TLRPC$Message, int, androidx.collection.LongSparseArray, androidx.collection.LongSparseArray):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$resetDialogs$83(LongSparseIntArray longSparseIntArray, Long l, Long l2) {
        int i = longSparseIntArray.get(l.longValue());
        int i2 = longSparseIntArray.get(l2.longValue());
        if (i < i2) {
            return 1;
        }
        return i > i2 ? -1 : 0;
    }

    public void emptyMessagesMedia(final long j, final ArrayList<Integer> arrayList) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda157
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$emptyMessagesMedia$87(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:108:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x012f A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0135 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0142 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0156 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0183 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0197 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a1 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ac A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bf A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c3 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d1 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d7 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e0 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e6 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f2 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f7 A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01fc A[Catch: all -> 0x0212, Exception -> 0x0214, TryCatch #7 {Exception -> 0x0214, all -> 0x0212, blocks: (B:29:0x00d0, B:31:0x00d6, B:33:0x0115, B:38:0x011d, B:40:0x012f, B:42:0x013c, B:44:0x0142, B:46:0x015a, B:52:0x0165, B:56:0x0173, B:58:0x0183, B:60:0x019b, B:62:0x01a1, B:66:0x01a8, B:68:0x01b0, B:70:0x01bf, B:72:0x01c8, B:74:0x01d1, B:76:0x01da, B:78:0x01e0, B:80:0x01ea, B:82:0x01f2, B:84:0x01f7, B:86:0x01fc, B:87:0x01ff, B:79:0x01e6, B:75:0x01d7, B:71:0x01c3, B:65:0x01a6, B:67:0x01ac, B:59:0x0197, B:45:0x0156, B:41:0x0135, B:88:0x0206), top: B:120:0x00d0 }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$emptyMessagesMedia$87(java.util.ArrayList r18, long r19) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$emptyMessagesMedia$87(java.util.ArrayList, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emptyMessagesMedia$85(ArrayList arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, arrayList.get(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emptyMessagesMedia$86(ArrayList arrayList) {
        getFileLoader().cancelLoadFiles(arrayList);
    }

    public void updateMessagePollResults(final long j, final TLRPC$Poll tLRPC$Poll, final TLRPC$PollResults tLRPC$PollResults) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessagePollResults$88(j, tLRPC$Poll, tLRPC$PollResults);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessagePollResults$88(long j, TLRPC$Poll tLRPC$Poll, TLRPC$PollResults tLRPC$PollResults) {
        int i;
        int i2;
        LongSparseArray longSparseArray;
        SQLitePreparedStatement sQLitePreparedStatement;
        int i3;
        SQLiteCursor queryFinalized;
        ArrayList arrayList;
        int i4;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                int i5 = 1;
                int i6 = 0;
                SQLiteCursor queryFinalized2 = this.database.queryFinalized(String.format(Locale.US, "SELECT uid, mid FROM polls_v2 WHERE id = %d", Long.valueOf(j)), new Object[0]);
                LongSparseArray longSparseArray2 = null;
                while (queryFinalized2.next()) {
                    try {
                        long longValue = queryFinalized2.longValue(0);
                        if (longSparseArray2 == null) {
                            longSparseArray2 = new LongSparseArray();
                        }
                        ArrayList arrayList2 = (ArrayList) longSparseArray2.get(longValue);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            longSparseArray2.put(longValue, arrayList2);
                        }
                        arrayList2.add(Integer.valueOf(queryFinalized2.intValue(1)));
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized2;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized2;
                    }
                }
                queryFinalized2.dispose();
                if (longSparseArray2 != null) {
                    this.database.beginTransaction();
                    SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?");
                    SQLitePreparedStatement executeFast2 = this.database.executeFast("UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?");
                    int size = longSparseArray2.size();
                    int i7 = 0;
                    while (i7 < size) {
                        long keyAt = longSparseArray2.keyAt(i7);
                        ArrayList arrayList3 = (ArrayList) longSparseArray2.valueAt(i7);
                        int size2 = arrayList3.size();
                        int i8 = i6;
                        while (i8 < size2) {
                            Integer num = (Integer) arrayList3.get(i8);
                            SQLiteCursor sQLiteCursor2 = sQLiteCursor;
                            int i9 = i6;
                            while (i6 < 2) {
                                int i10 = i6 == i5 ? i5 : 0;
                                if (i10 != 0) {
                                    try {
                                        longSparseArray = longSparseArray2;
                                        sQLitePreparedStatement = executeFast2;
                                        i3 = size;
                                        queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_topics WHERE mid = %d AND uid = %d", num, Long.valueOf(keyAt)), new Object[0]);
                                    } catch (Exception e2) {
                                        e = e2;
                                        sQLiteCursor = sQLiteCursor2;
                                        checkSQLException(e);
                                        if (sQLiteCursor == null) {
                                            return;
                                        }
                                        sQLiteCursor.dispose();
                                    } catch (Throwable th2) {
                                        th = th2;
                                        sQLiteCursor = sQLiteCursor2;
                                        if (sQLiteCursor != null) {
                                            sQLiteCursor.dispose();
                                        }
                                        throw th;
                                    }
                                } else {
                                    longSparseArray = longSparseArray2;
                                    sQLitePreparedStatement = executeFast2;
                                    i3 = size;
                                    queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_v2 WHERE mid = %d AND uid = %d", num, Long.valueOf(keyAt)), new Object[0]);
                                }
                                SQLitePreparedStatement sQLitePreparedStatement2 = i10 != 0 ? sQLitePreparedStatement : executeFast;
                                if (queryFinalized.next()) {
                                    NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                                    if (byteBufferValue != null) {
                                        TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                                        arrayList = arrayList3;
                                        i4 = size2;
                                        TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                                        byteBufferValue.reuse();
                                        TLRPC$MessageMedia tLRPC$MessageMedia = TLdeserialize.media;
                                        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPoll) {
                                            TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia;
                                            if (tLRPC$Poll != null) {
                                                tLRPC$TL_messageMediaPoll.poll = tLRPC$Poll;
                                            }
                                            if (tLRPC$PollResults != null) {
                                                MessageObject.updatePollResults(tLRPC$TL_messageMediaPoll, tLRPC$PollResults);
                                            }
                                            MessageObject.normalizeFlags(TLdeserialize);
                                            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(TLdeserialize.getObjectSize());
                                            TLdeserialize.serializeToStream(nativeByteBuffer);
                                            sQLitePreparedStatement2.requery();
                                            sQLitePreparedStatement2.bindByteBuffer(1, nativeByteBuffer);
                                            sQLitePreparedStatement2.bindInteger(2, num.intValue());
                                            sQLitePreparedStatement2.bindLong(3, keyAt);
                                            sQLitePreparedStatement2.step();
                                            nativeByteBuffer.reuse();
                                        }
                                    } else {
                                        arrayList = arrayList3;
                                        i4 = size2;
                                    }
                                    i9 = 1;
                                } else {
                                    arrayList = arrayList3;
                                    i4 = size2;
                                }
                                queryFinalized.dispose();
                                i6++;
                                sQLiteCursor2 = queryFinalized;
                                arrayList3 = arrayList;
                                longSparseArray2 = longSparseArray;
                                executeFast2 = sQLitePreparedStatement;
                                size = i3;
                                size2 = i4;
                                i5 = 1;
                            }
                            LongSparseArray longSparseArray3 = longSparseArray2;
                            SQLitePreparedStatement sQLitePreparedStatement3 = executeFast2;
                            int i11 = size;
                            ArrayList arrayList4 = arrayList3;
                            int i12 = size2;
                            if (i9 == 0) {
                                i = 0;
                                i2 = 1;
                                this.database.executeFast(String.format(Locale.US, "DELETE FROM polls_v2 WHERE mid = %d AND uid = %d", num, Long.valueOf(keyAt))).stepThis().dispose();
                            } else {
                                i = 0;
                                i2 = 1;
                            }
                            i8++;
                            sQLiteCursor = sQLiteCursor2;
                            i6 = i;
                            i5 = i2;
                            arrayList3 = arrayList4;
                            longSparseArray2 = longSparseArray3;
                            executeFast2 = sQLitePreparedStatement3;
                            size = i11;
                            size2 = i12;
                        }
                        i7++;
                        size = size;
                    }
                    executeFast.dispose();
                    this.database.commitTransaction();
                }
                if (sQLiteCursor == null) {
                    return;
                }
            } catch (Exception e3) {
                e = e3;
            }
            sQLiteCursor.dispose();
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void updateMessageReactions(final long j, final int i, final TLRPC$TL_messageReactions tLRPC$TL_messageReactions) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageReactions$89(i, j, tLRPC$TL_messageReactions);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageReactions$89(int i, long j, TLRPC$TL_messageReactions tLRPC$TL_messageReactions) {
        SQLiteCursor queryFinalized;
        NativeByteBuffer byteBufferValue;
        SQLitePreparedStatement executeFast;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                this.database.beginTransaction();
                for (int i2 = 0; i2 < 2; i2++) {
                    if (i2 == 0) {
                        queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_v2 WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j)), new Object[0]);
                    } else {
                        queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM messages_topics WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j)), new Object[0]);
                    }
                    try {
                        if (queryFinalized.next() && (byteBufferValue = queryFinalized.byteBufferValue(0)) != null) {
                            TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            if (TLdeserialize != null) {
                                TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                                byteBufferValue.reuse();
                                MessageObject.updateReactions(TLdeserialize, tLRPC$TL_messageReactions);
                                if (i2 == 0) {
                                    executeFast = this.database.executeFast("UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?");
                                } else {
                                    executeFast = this.database.executeFast("UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?");
                                }
                                MessageObject.normalizeFlags(TLdeserialize);
                                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(TLdeserialize.getObjectSize());
                                TLdeserialize.serializeToStream(nativeByteBuffer);
                                executeFast.requery();
                                executeFast.bindByteBuffer(1, nativeByteBuffer);
                                executeFast.bindInteger(2, i);
                                executeFast.bindLong(3, j);
                                executeFast.step();
                                nativeByteBuffer.reuse();
                                executeFast.dispose();
                            } else {
                                byteBufferValue.reuse();
                            }
                        }
                        queryFinalized.dispose();
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase = this.database;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        throw th;
                    }
                }
                this.database.commitTransaction();
                SQLiteDatabase sQLiteDatabase3 = this.database;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.commitTransaction();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void updateMessageVoiceTranscriptionOpen(final long j, final int i, final TLRPC$Message tLRPC$Message) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageVoiceTranscriptionOpen$90(i, j, tLRPC$Message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageVoiceTranscriptionOpen$90(int i, long j, TLRPC$Message tLRPC$Message) {
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.beginTransaction();
                TLRPC$Message messageWithCustomParamsOnlyInternal = getMessageWithCustomParamsOnlyInternal(i, j);
                messageWithCustomParamsOnlyInternal.voiceTranscriptionOpen = tLRPC$Message.voiceTranscriptionOpen;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionRated = tLRPC$Message.voiceTranscriptionRated;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionFinal = tLRPC$Message.voiceTranscriptionFinal;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionForce = tLRPC$Message.voiceTranscriptionForce;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionId = tLRPC$Message.voiceTranscriptionId;
                for (int i2 = 0; i2 < 2; i2++) {
                    if (i2 == 0) {
                        executeFast = this.database.executeFast("UPDATE messages_v2 SET custom_params = ? WHERE mid = ? AND uid = ?");
                    } else {
                        executeFast = this.database.executeFast("UPDATE messages_topics SET custom_params = ? WHERE mid = ? AND uid = ?");
                    }
                    try {
                        executeFast.requery();
                        NativeByteBuffer writeLocalParams = MessageCustomParamsHelper.writeLocalParams(messageWithCustomParamsOnlyInternal);
                        if (writeLocalParams != null) {
                            executeFast.bindByteBuffer(1, writeLocalParams);
                        } else {
                            executeFast.bindNull(1);
                        }
                        executeFast.bindInteger(2, i);
                        executeFast.bindLong(3, j);
                        executeFast.step();
                        executeFast.dispose();
                        if (writeLocalParams != null) {
                            writeLocalParams.reuse();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase = this.database;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                this.database.commitTransaction();
                SQLiteDatabase sQLiteDatabase3 = this.database;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.commitTransaction();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateMessageVoiceTranscription(final long j, final int i, final String str, final long j2, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageVoiceTranscription$91(i, j, z, j2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageVoiceTranscription$91(int i, long j, boolean z, long j2, String str) {
        TLRPC$Message messageWithCustomParamsOnlyInternal;
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.beginTransaction();
                messageWithCustomParamsOnlyInternal = getMessageWithCustomParamsOnlyInternal(i, j);
                messageWithCustomParamsOnlyInternal.voiceTranscriptionFinal = z;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionId = j2;
                messageWithCustomParamsOnlyInternal.voiceTranscription = str;
                executeFast = this.database.executeFast("UPDATE messages_v2 SET custom_params = ? WHERE mid = ? AND uid = ?");
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            executeFast.requery();
            NativeByteBuffer writeLocalParams = MessageCustomParamsHelper.writeLocalParams(messageWithCustomParamsOnlyInternal);
            if (writeLocalParams != null) {
                executeFast.bindByteBuffer(1, writeLocalParams);
            } else {
                executeFast.bindNull(1);
            }
            executeFast.bindInteger(2, i);
            executeFast.bindLong(3, j);
            executeFast.step();
            executeFast.dispose();
            this.database.commitTransaction();
            if (writeLocalParams != null) {
                writeLocalParams.reuse();
            }
            SQLiteDatabase sQLiteDatabase = this.database;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.commitTransaction();
            }
        } catch (Exception e2) {
            e = e2;
            sQLitePreparedStatement = executeFast;
            checkSQLException(e);
            SQLiteDatabase sQLiteDatabase2 = this.database;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLitePreparedStatement = executeFast;
            SQLiteDatabase sQLiteDatabase3 = this.database;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateMessageVoiceTranscription(final long j, final int i, final String str, final TLRPC$Message tLRPC$Message) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageVoiceTranscription$92(i, j, tLRPC$Message, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageVoiceTranscription$92(int i, long j, TLRPC$Message tLRPC$Message, String str) {
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.beginTransaction();
                TLRPC$Message messageWithCustomParamsOnlyInternal = getMessageWithCustomParamsOnlyInternal(i, j);
                messageWithCustomParamsOnlyInternal.voiceTranscriptionOpen = tLRPC$Message.voiceTranscriptionOpen;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionRated = tLRPC$Message.voiceTranscriptionRated;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionFinal = tLRPC$Message.voiceTranscriptionFinal;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionForce = tLRPC$Message.voiceTranscriptionForce;
                messageWithCustomParamsOnlyInternal.voiceTranscriptionId = tLRPC$Message.voiceTranscriptionId;
                messageWithCustomParamsOnlyInternal.voiceTranscription = str;
                for (int i2 = 0; i2 < 2; i2++) {
                    if (i2 == 0) {
                        executeFast = this.database.executeFast("UPDATE messages_v2 SET custom_params = ? WHERE mid = ? AND uid = ?");
                    } else {
                        executeFast = this.database.executeFast("UPDATE messages_topics SET custom_params = ? WHERE mid = ? AND uid = ?");
                    }
                    try {
                        executeFast.requery();
                        NativeByteBuffer writeLocalParams = MessageCustomParamsHelper.writeLocalParams(messageWithCustomParamsOnlyInternal);
                        if (writeLocalParams != null) {
                            executeFast.bindByteBuffer(1, writeLocalParams);
                        } else {
                            executeFast.bindNull(1);
                        }
                        executeFast.bindInteger(2, i);
                        executeFast.bindLong(3, j);
                        executeFast.step();
                        executeFast.dispose();
                        this.database.commitTransaction();
                        if (writeLocalParams != null) {
                            writeLocalParams.reuse();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase = this.database;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                SQLiteDatabase sQLiteDatabase3 = this.database;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.commitTransaction();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void updateMessageCustomParams(final long j, final TLRPC$Message tLRPC$Message) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda193
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageCustomParams$93(tLRPC$Message, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageCustomParams$93(TLRPC$Message tLRPC$Message, long j) {
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.beginTransaction();
                TLRPC$Message messageWithCustomParamsOnlyInternal = getMessageWithCustomParamsOnlyInternal(tLRPC$Message.f1626id, j);
                MessageCustomParamsHelper.copyParams(tLRPC$Message, messageWithCustomParamsOnlyInternal);
                for (int i = 0; i < 2; i++) {
                    if (i == 0) {
                        executeFast = this.database.executeFast("UPDATE messages_v2 SET custom_params = ? WHERE mid = ? AND uid = ?");
                    } else {
                        executeFast = this.database.executeFast("UPDATE messages_topics SET custom_params = ? WHERE mid = ? AND uid = ?");
                    }
                    try {
                        executeFast.requery();
                        NativeByteBuffer writeLocalParams = MessageCustomParamsHelper.writeLocalParams(messageWithCustomParamsOnlyInternal);
                        if (writeLocalParams != null) {
                            executeFast.bindByteBuffer(1, writeLocalParams);
                        } else {
                            executeFast.bindNull(1);
                        }
                        executeFast.bindInteger(2, tLRPC$Message.f1626id);
                        executeFast.bindLong(3, j);
                        executeFast.step();
                        executeFast.dispose();
                        if (writeLocalParams != null) {
                            writeLocalParams.reuse();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase = this.database;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                this.database.commitTransaction();
                SQLiteDatabase sQLiteDatabase3 = this.database;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.commitTransaction();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public TLRPC$Message getMessageWithCustomParamsOnlyInternal(int i, long j) {
        SQLiteCursor queryFinalized;
        boolean z;
        TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized("SELECT custom_params FROM messages_v2 WHERE mid = " + i + " AND uid = " + j, new Object[0]);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
            e = e;
        }
        try {
            if (queryFinalized.next()) {
                MessageCustomParamsHelper.readLocalParams(tLRPC$TL_message, queryFinalized.byteBufferValue(0));
                z = true;
            } else {
                z = false;
            }
            queryFinalized.dispose();
            if (!z) {
                sQLiteCursor = this.database.queryFinalized("SELECT custom_params FROM messages_topics WHERE mid = " + i + " AND uid = " + j, new Object[0]);
                if (sQLiteCursor.next()) {
                    MessageCustomParamsHelper.readLocalParams(tLRPC$TL_message, sQLiteCursor.byteBufferValue(0));
                }
                sQLiteCursor.dispose();
            }
        } catch (SQLiteException e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            return tLRPC$TL_message;
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
        return tLRPC$TL_message;
    }

    public void getNewTask(final LongSparseArray<ArrayList<Integer>> longSparseArray, final LongSparseArray<ArrayList<Integer>> longSparseArray2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda134
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getNewTask$94(longSparseArray, longSparseArray2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a5, code lost:
        if (r15 > 0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getNewTask$94(androidx.collection.LongSparseArray r14, androidx.collection.LongSparseArray r15) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getNewTask$94(androidx.collection.LongSparseArray, androidx.collection.LongSparseArray):void");
    }

    public void markMentionMessageAsRead(final long j, final int i, final long j2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$markMentionMessageAsRead$95(i, j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMentionMessageAsRead$95(int i, long j, long j2) {
        SQLiteCursor sQLiteCursor;
        SQLiteCursor sQLiteCursor2;
        SQLiteCursor sQLiteCursor3 = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabase = this.database;
                Locale locale = Locale.US;
                sQLiteDatabase.executeFast(String.format(locale, "UPDATE messages_v2 SET read_state = read_state | 2 WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j))).stepThis().dispose();
                SQLiteCursor queryFinalized = this.database.queryFinalized("SELECT unread_count_i FROM dialogs WHERE did = " + j2, new Object[0]);
                try {
                    int max = queryFinalized.next() ? Math.max(0, queryFinalized.intValue(0) - 1) : 0;
                    queryFinalized.dispose();
                    this.database.executeFast(String.format(locale, "UPDATE dialogs SET unread_count_i = %d WHERE did = %d", Integer.valueOf(max), Long.valueOf(j2))).stepThis().dispose();
                    LongSparseIntArray longSparseIntArray = new LongSparseIntArray(1);
                    longSparseIntArray.put(j2, max);
                    if (max == 0) {
                        updateFiltersReadCounter(null, longSparseIntArray, true);
                    }
                    getMessagesController().processDialogsUpdateRead(null, longSparseIntArray);
                    this.database.executeFast(String.format(locale, "UPDATE messages_topics SET read_state = read_state | 2 WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j))).stepThis().dispose();
                    SQLiteCursor queryFinalized2 = this.database.queryFinalized(String.format(locale, "SELECT data FROM messages_topics WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j)), new Object[0]);
                    int i2 = 0;
                    while (queryFinalized2.next()) {
                        try {
                            NativeByteBuffer byteBufferValue = queryFinalized2.byteBufferValue(0);
                            if (byteBufferValue != null) {
                                TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                                byteBufferValue.reuse();
                                i2 = MessageObject.getTopicId(TLdeserialize, isForum(j));
                            }
                        } catch (Exception e) {
                            sQLiteCursor3 = sQLiteCursor2;
                            e = e;
                            checkSQLException(e);
                            if (sQLiteCursor3 != null) {
                                sQLiteCursor3.dispose();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            sQLiteCursor3 = sQLiteCursor;
                            th = th;
                            if (sQLiteCursor3 != null) {
                                sQLiteCursor3.dispose();
                            }
                            throw th;
                        }
                    }
                    queryFinalized2.dispose();
                    if (i2 != 0) {
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        Locale locale2 = Locale.US;
                        SQLiteCursor queryFinalized3 = sQLiteDatabase2.queryFinalized(String.format(locale2, "SELECT unread_mentions FROM topics WHERE did = %d AND topic_id = %d", Long.valueOf(j2), Integer.valueOf(i2)), new Object[0]);
                        int max2 = queryFinalized3.next() ? Math.max(0, queryFinalized3.intValue(0) - 1) : 0;
                        queryFinalized3.dispose();
                        this.database.executeFast(String.format(locale2, "UPDATE topics SET unread_mentions = %d WHERE did = %d AND topic_id = %d", Integer.valueOf(max2), Long.valueOf(j), Integer.valueOf(i2))).stepThis().dispose();
                        getMessagesController().getTopicsController().updateMentionsUnread(j, i2, max2);
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteCursor3 = queryFinalized;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteCursor3 = queryFinalized;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public void markMessageAsMention(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$markMessageAsMention$96(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessageAsMention$96(int i, long j) {
        try {
            this.database.executeFast(String.format(Locale.US, "UPDATE messages_v2 SET mention = 1, read_state = read_state & ~2 WHERE mid = %d AND uid = %d", Integer.valueOf(i), Long.valueOf(j))).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void resetMentionsCount(final long j, final int i, final int i2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$resetMentionsCount$97(i, j, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetMentionsCount$97(int i, long j, int i2) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                if (i == 0) {
                    SQLiteDatabase sQLiteDatabase = this.database;
                    SQLiteCursor queryFinalized = sQLiteDatabase.queryFinalized("SELECT unread_count_i FROM dialogs WHERE did = " + j, new Object[0]);
                    try {
                        int intValue = queryFinalized.next() ? queryFinalized.intValue(0) : 0;
                        queryFinalized.dispose();
                        if (intValue == 0 && i2 == 0) {
                            return;
                        }
                        if (i2 == 0) {
                            this.database.executeFast(String.format(Locale.US, "UPDATE messages_v2 SET read_state = read_state | 2 WHERE uid = %d AND mention = 1 AND read_state IN(0, 1)", Long.valueOf(j))).stepThis().dispose();
                        }
                        this.database.executeFast(String.format(Locale.US, "UPDATE dialogs SET unread_count_i = %d WHERE did = %d", Integer.valueOf(i2), Long.valueOf(j))).stepThis().dispose();
                        LongSparseIntArray longSparseIntArray = new LongSparseIntArray(1);
                        longSparseIntArray.put(j, i2);
                        getMessagesController().processDialogsUpdateRead(null, longSparseIntArray);
                        if (i2 == 0) {
                            updateFiltersReadCounter(null, longSparseIntArray, true);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        throw th;
                    }
                }
                this.database.executeFast(String.format(Locale.US, "UPDATE topics SET unread_mentions = %d WHERE did = %d AND topic_id = %d", Integer.valueOf(i2), Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
                TopicsController.TopicUpdate topicUpdate = new TopicsController.TopicUpdate();
                topicUpdate.dialogId = j;
                topicUpdate.topicId = i;
                topicUpdate.onlyCounters = true;
                topicUpdate.unreadMentions = i2;
                topicUpdate.unreadCount = -1;
                getMessagesController().getTopicsController().processUpdate(Collections.singletonList(topicUpdate));
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void createTaskForMid(final long j, final int i, final int i2, final int i3, final int i4, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$createTaskForMid$99(i2, i3, i4, i, z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTaskForMid$99(int i, int i2, int i3, int i4, final boolean z, final long j) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                int max = Math.max(i, i2) + i3;
                SparseArray<ArrayList<Integer>> sparseArray = new SparseArray<>();
                final ArrayList<Integer> arrayList = new ArrayList<>();
                arrayList.add(Integer.valueOf(i4));
                sparseArray.put(max, arrayList);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda209
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$createTaskForMid$98(z, j, arrayList);
                    }
                });
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO enc_tasks_v4 VALUES(?, ?, ?, ?)");
                for (int i5 = 0; i5 < sparseArray.size(); i5++) {
                    try {
                        int keyAt = sparseArray.keyAt(i5);
                        ArrayList<Integer> arrayList2 = sparseArray.get(keyAt);
                        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                            executeFast.requery();
                            executeFast.bindInteger(1, arrayList2.get(i6).intValue());
                            executeFast.bindLong(2, j);
                            executeFast.bindInteger(3, keyAt);
                            executeFast.bindInteger(4, 1);
                            executeFast.step();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                executeFast.dispose();
                this.database.executeFast(String.format(Locale.US, "UPDATE messages_v2 SET ttl = 0 WHERE mid = %d AND uid = %d", Integer.valueOf(i4), Long.valueOf(j))).stepThis().dispose();
                getMessagesController().didAddedNewTask(max, j, sparseArray);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTaskForMid$98(boolean z, long j, ArrayList arrayList) {
        if (!z) {
            markMessagesContentAsRead(j, arrayList, 0, 0);
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagesReadContent, Long.valueOf(j), arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void createTaskForSecretMedia(long r17, android.util.SparseArray<java.util.ArrayList<java.lang.Integer>> r19) {
        /*
            r16 = this;
            r1 = r16
            r2 = r17
            r0 = r19
            r4 = 2147483647(0x7fffffff, float:NaN)
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r6.<init>()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            int r7 = r19.size()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            if (r7 == 0) goto La8
            org.telegram.SQLite.SQLiteDatabase r7 = r1.database     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r7.beginTransaction()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            org.telegram.SQLite.SQLiteDatabase r7 = r1.database     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.lang.String r8 = "REPLACE INTO enc_tasks_v4 VALUES(?, ?, ?, ?)"
            org.telegram.SQLite.SQLitePreparedStatement r7 = r7.executeFast(r8)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r8 = 0
            r9 = r8
        L23:
            int r10 = r19.size()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r11 = 2
            r12 = 1
            if (r9 >= r10) goto L6d
            int r10 = r0.keyAt(r9)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.lang.Object r13 = r0.get(r10)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.util.ArrayList r13 = (java.util.ArrayList) r13     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r14 = r8
        L36:
            int r15 = r13.size()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            if (r14 >= r15) goto L6a
            java.lang.Object r15 = r13.get(r14)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.lang.Integer r15 = (java.lang.Integer) r15     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            int r15 = r15.intValue()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r7.requery()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r7.bindInteger(r12, r15)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r7.bindLong(r11, r2)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r5 = 3
            r7.bindInteger(r5, r10)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r5 = 4
            r7.bindInteger(r5, r12)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            int r4 = java.lang.Math.min(r4, r15)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r7.step()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.lang.Object r5 = r13.get(r14)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            r6.add(r5)     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            int r14 = r14 + 1
            goto L36
        L6a:
            int r9 = r9 + 1
            goto L23
        L6d:
            r7.dispose()     // Catch: java.lang.Throwable -> La2 java.lang.Exception -> La5
            org.telegram.SQLite.SQLiteDatabase r5 = r1.database     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r5.commitTransaction()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            org.telegram.SQLite.SQLiteDatabase r5 = r1.database     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.util.Locale r7 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.lang.String r9 = "UPDATE messages_v2 SET ttl = 0 WHERE uid = %d AND mid IN(%s)"
            java.lang.Object[] r10 = new java.lang.Object[r11]     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.lang.Long r11 = java.lang.Long.valueOf(r17)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r10[r8] = r11     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.lang.String r8 = ", "
            java.lang.String r6 = android.text.TextUtils.join(r8, r6)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r10[r12] = r6     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            java.lang.String r6 = java.lang.String.format(r7, r9, r10)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            org.telegram.SQLite.SQLitePreparedStatement r5 = r5.executeFast(r6)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            org.telegram.SQLite.SQLitePreparedStatement r5 = r5.stepThis()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r5.dispose()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            org.telegram.messenger.MessagesController r5 = r16.getMessagesController()     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            r5.didAddedNewTask(r4, r2, r0)     // Catch: java.lang.Throwable -> Lb0 java.lang.Exception -> Lb3
            goto La8
        La2:
            r0 = move-exception
            r5 = r7
            goto Lc6
        La5:
            r0 = move-exception
            r5 = r7
            goto Lb5
        La8:
            org.telegram.SQLite.SQLiteDatabase r0 = r1.database
            if (r0 == 0) goto Lc4
            r0.commitTransaction()
            goto Lc4
        Lb0:
            r0 = move-exception
            r5 = 0
            goto Lc6
        Lb3:
            r0 = move-exception
            r5 = 0
        Lb5:
            r1.checkSQLException(r0)     // Catch: java.lang.Throwable -> Lc5
            org.telegram.SQLite.SQLiteDatabase r0 = r1.database
            if (r0 == 0) goto Lbf
            r0.commitTransaction()
        Lbf:
            if (r5 == 0) goto Lc4
            r5.dispose()
        Lc4:
            return
        Lc5:
            r0 = move-exception
        Lc6:
            org.telegram.SQLite.SQLiteDatabase r2 = r1.database
            if (r2 == 0) goto Lcd
            r2.commitTransaction()
        Lcd:
            if (r5 == 0) goto Ld2
            r5.dispose()
        Ld2:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.createTaskForSecretMedia(long, android.util.SparseArray):void");
    }

    public void createTaskForSecretChat(final int i, final int i2, final int i3, final int i4, final ArrayList<Long> arrayList) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$createTaskForSecretChat$101(i, arrayList, i4, i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createTaskForSecretChat$101(int r18, java.util.ArrayList r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$createTaskForSecretChat$101(int, java.util.ArrayList, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTaskForSecretChat$100(long j, ArrayList arrayList) {
        markMessagesContentAsRead(j, arrayList, 0, 0);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagesReadContent, Long.valueOf(j), arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:207:0x0488, code lost:
        if (r14.indexOfKey(-r4.f1602id) >= 0) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x070e, code lost:
        if (r12.indexOfKey(r15.f1749id) >= 0) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x07fd, code lost:
        if (r3 == 0) goto L441;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x067b  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x08e7  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x091d  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x09d3  */
    /* JADX WARN: Removed duplicated region for block: B:663:0x0bb3  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x0bba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateFiltersReadCounter(org.telegram.messenger.support.LongSparseIntArray r26, org.telegram.messenger.support.LongSparseIntArray r27, boolean r28) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 3097
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.updateFiltersReadCounter(org.telegram.messenger.support.LongSparseIntArray, org.telegram.messenger.support.LongSparseIntArray, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateFiltersReadCounter$102() {
        ArrayList<MessagesController.DialogFilter> arrayList = getMessagesController().dialogFilters;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).unreadCount = arrayList.get(i).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList2 = getMessagesController().sortingDialogFilters;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            arrayList2.get(i2).unreadCount = arrayList2.get(i2).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList3 = getMessagesController().archiveSortingDialogFilters;
        int size3 = arrayList3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            arrayList3.get(i3).unreadCount = arrayList3.get(i3).pendingUnreadCount;
        }
        this.mainUnreadCount = this.pendingMainUnreadCount;
        this.archiveUnreadCount = this.pendingArchiveUnreadCount;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x03a0 A[Catch: Exception -> 0x03a8, TRY_LEAVE, TryCatch #0 {Exception -> 0x03a8, blocks: (B:3:0x0008, B:7:0x0024, B:8:0x003c, B:10:0x0042, B:13:0x0049, B:16:0x0050, B:18:0x005a, B:19:0x005e, B:20:0x0064, B:93:0x02b3, B:95:0x02b9, B:131:0x0390, B:133:0x03a0, B:99:0x02c3, B:101:0x02ce, B:102:0x02dc, B:104:0x02e2, B:106:0x02ec, B:116:0x0340, B:107:0x02f4, B:109:0x0318, B:111:0x031e, B:113:0x0323, B:115:0x032a, B:117:0x0342, B:119:0x034b, B:121:0x0351, B:122:0x035a, B:124:0x0360, B:126:0x036a, B:128:0x0384, B:127:0x0372, B:129:0x0386, B:130:0x0389, B:21:0x0069, B:24:0x0070, B:26:0x0076, B:31:0x008b, B:33:0x0092, B:55:0x015f, B:36:0x00af, B:37:0x00d1, B:40:0x00d9, B:43:0x00e0, B:45:0x0108, B:47:0x0113, B:51:0x0143, B:48:0x012b, B:50:0x012f, B:52:0x0147, B:54:0x014b, B:29:0x0083, B:56:0x019e, B:58:0x01a4, B:60:0x01ab, B:61:0x01d4, B:63:0x01da, B:65:0x01f2, B:67:0x01f8, B:69:0x01ff, B:71:0x0206, B:73:0x0228, B:75:0x022f, B:78:0x024c, B:76:0x023d, B:79:0x0256, B:83:0x0267, B:85:0x0271, B:86:0x0278, B:87:0x027e, B:90:0x0285, B:92:0x028b), top: B:138:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateDialogsWithReadMessagesInternal(java.util.ArrayList<java.lang.Integer> r22, org.telegram.messenger.support.LongSparseIntArray r23, org.telegram.messenger.support.LongSparseIntArray r24, androidx.collection.LongSparseArray<java.util.ArrayList<java.lang.Integer>> r25, org.telegram.messenger.support.LongSparseIntArray r26) {
        /*
            Method dump skipped, instructions count: 941
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.updateDialogsWithReadMessagesInternal(java.util.ArrayList, org.telegram.messenger.support.LongSparseIntArray, org.telegram.messenger.support.LongSparseIntArray, androidx.collection.LongSparseArray, org.telegram.messenger.support.LongSparseIntArray):void");
    }

    private static boolean isEmpty(SparseArray<?> sparseArray) {
        return sparseArray == null || sparseArray.size() == 0;
    }

    private static boolean isEmpty(LongSparseIntArray longSparseIntArray) {
        return longSparseIntArray == null || longSparseIntArray.size() == 0;
    }

    private static boolean isEmpty(List<?> list) {
        return list == null || list.isEmpty();
    }

    private static boolean isEmpty(SparseIntArray sparseIntArray) {
        return sparseIntArray == null || sparseIntArray.size() == 0;
    }

    private static boolean isEmpty(LongSparseArray<?> longSparseArray) {
        return longSparseArray == null || longSparseArray.size() == 0;
    }

    public void updateDialogsWithReadMessages(final LongSparseIntArray longSparseIntArray, final LongSparseIntArray longSparseIntArray2, final LongSparseArray<ArrayList<Integer>> longSparseArray, final LongSparseIntArray longSparseIntArray3, boolean z) {
        if (isEmpty(longSparseIntArray) && isEmpty(longSparseIntArray2) && isEmpty(longSparseArray) && isEmpty(longSparseIntArray3)) {
            return;
        }
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda176
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$updateDialogsWithReadMessages$103(longSparseIntArray, longSparseIntArray2, longSparseArray, longSparseIntArray3);
                }
            });
        } else {
            updateDialogsWithReadMessagesInternal(null, longSparseIntArray, longSparseIntArray2, longSparseArray, longSparseIntArray3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsWithReadMessages$103(LongSparseIntArray longSparseIntArray, LongSparseIntArray longSparseIntArray2, LongSparseArray longSparseArray, LongSparseIntArray longSparseIntArray3) {
        updateDialogsWithReadMessagesInternal(null, longSparseIntArray, longSparseIntArray2, longSparseArray, longSparseIntArray3);
    }

    public void updateChatParticipants(final TLRPC$ChatParticipants tLRPC$ChatParticipants) {
        if (tLRPC$ChatParticipants == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda182
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChatParticipants$105(tLRPC$ChatParticipants);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChatParticipants$105(TLRPC$ChatParticipants tLRPC$ChatParticipants) {
        SQLiteCursor queryFinalized;
        final TLRPC$ChatFull tLRPC$ChatFull;
        NativeByteBuffer byteBufferValue;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized("SELECT info, pinned, online, inviter FROM chat_settings_v2 WHERE uid = " + tLRPC$ChatParticipants.chat_id, new Object[0]);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            new ArrayList();
            if (!queryFinalized.next() || (byteBufferValue = queryFinalized.byteBufferValue(0)) == null) {
                tLRPC$ChatFull = null;
            } else {
                tLRPC$ChatFull = TLRPC$ChatFull.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
                tLRPC$ChatFull.pinned_msg_id = queryFinalized.intValue(1);
                tLRPC$ChatFull.online_count = queryFinalized.intValue(2);
                tLRPC$ChatFull.inviterId = queryFinalized.longValue(3);
            }
            queryFinalized.dispose();
            if (tLRPC$ChatFull instanceof TLRPC$TL_chatFull) {
                tLRPC$ChatFull.participants = tLRPC$ChatParticipants;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda179
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$updateChatParticipants$104(tLRPC$ChatFull);
                    }
                });
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO chat_settings_v2 VALUES(?, ?, ?, ?, ?, ?, ?)");
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$ChatFull.getObjectSize());
                tLRPC$ChatFull.serializeToStream(nativeByteBuffer);
                executeFast.bindLong(1, tLRPC$ChatFull.f1603id);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.bindInteger(3, tLRPC$ChatFull.pinned_msg_id);
                executeFast.bindInteger(4, tLRPC$ChatFull.online_count);
                executeFast.bindLong(5, tLRPC$ChatFull.inviterId);
                executeFast.bindInteger(6, tLRPC$ChatFull.invitesCount);
                executeFast.bindInteger(7, tLRPC$ChatFull.participants_count);
                executeFast.step();
                executeFast.dispose();
                nativeByteBuffer.reuse();
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChatParticipants$104(TLRPC$ChatFull tLRPC$ChatFull) {
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.chatInfoDidLoad;
        Boolean bool = Boolean.FALSE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, tLRPC$ChatFull, 0, bool, bool);
    }

    public void loadChannelAdmins(final long j) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadChannelAdmins$106(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChannelAdmins$106(long j) {
        SQLiteCursor queryFinalized;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabase = this.database;
                queryFinalized = sQLiteDatabase.queryFinalized("SELECT uid, data FROM channel_admins_v3 WHERE did = " + j, new Object[0]);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            LongSparseArray<TLRPC$ChannelParticipant> longSparseArray = new LongSparseArray<>();
            while (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(1);
                if (byteBufferValue != null) {
                    TLRPC$ChannelParticipant TLdeserialize = TLRPC$ChannelParticipant.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    byteBufferValue.reuse();
                    if (TLdeserialize != null) {
                        longSparseArray.put(queryFinalized.longValue(0), TLdeserialize);
                    }
                }
            }
            queryFinalized.dispose();
            getMessagesController().processLoadedChannelAdmins(longSparseArray, j, true);
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    public void putChannelAdmins(final long j, final LongSparseArray<TLRPC$ChannelParticipant> longSparseArray) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda104
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putChannelAdmins$107(j, longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putChannelAdmins$107(long j, LongSparseArray longSparseArray) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabase = this.database;
                sQLiteDatabase.executeFast("DELETE FROM channel_admins_v3 WHERE did = " + j).stepThis().dispose();
                this.database.beginTransaction();
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO channel_admins_v3 VALUES(?, ?, ?)");
                for (int i = 0; i < longSparseArray.size(); i++) {
                    try {
                        executeFast.requery();
                        executeFast.bindLong(1, j);
                        executeFast.bindLong(2, longSparseArray.keyAt(i));
                        TLRPC$ChannelParticipant tLRPC$ChannelParticipant = (TLRPC$ChannelParticipant) longSparseArray.valueAt(i);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$ChannelParticipant.getObjectSize());
                        tLRPC$ChannelParticipant.serializeToStream(nativeByteBuffer);
                        executeFast.bindByteBuffer(3, nativeByteBuffer);
                        executeFast.step();
                        nativeByteBuffer.reuse();
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        SQLiteDatabase sQLiteDatabase3 = this.database;
                        if (sQLiteDatabase3 != null) {
                            sQLiteDatabase3.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                executeFast.dispose();
                this.database.commitTransaction();
                SQLiteDatabase sQLiteDatabase4 = this.database;
                if (sQLiteDatabase4 != null) {
                    sQLiteDatabase4.commitTransaction();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateChannelUsers(final long j, final ArrayList<TLRPC$ChannelParticipant> arrayList) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChannelUsers$108(j, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChannelUsers$108(long j, ArrayList arrayList) {
        SQLitePreparedStatement executeFast;
        long j2 = -j;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.executeFast("DELETE FROM channel_users_v2 WHERE did = " + j2).stepThis().dispose();
                this.database.beginTransaction();
                executeFast = this.database.executeFast("REPLACE INTO channel_users_v2 VALUES(?, ?, ?, ?)");
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$ChannelParticipant tLRPC$ChannelParticipant = (TLRPC$ChannelParticipant) arrayList.get(i);
                executeFast.requery();
                executeFast.bindLong(1, j2);
                executeFast.bindLong(2, MessageObject.getPeerId(tLRPC$ChannelParticipant.peer));
                executeFast.bindInteger(3, currentTimeMillis);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$ChannelParticipant.getObjectSize());
                tLRPC$ChannelParticipant.serializeToStream(nativeByteBuffer);
                executeFast.bindByteBuffer(4, nativeByteBuffer);
                executeFast.step();
                nativeByteBuffer.reuse();
                currentTimeMillis--;
            }
            executeFast.dispose();
            this.database.commitTransaction();
            loadChatInfo(j, true, null, false, true);
            SQLiteDatabase sQLiteDatabase = this.database;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.commitTransaction();
            }
        } catch (Exception e2) {
            e = e2;
            sQLitePreparedStatement = executeFast;
            checkSQLException(e);
            SQLiteDatabase sQLiteDatabase2 = this.database;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLitePreparedStatement = executeFast;
            SQLiteDatabase sQLiteDatabase3 = this.database;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void saveBotCache(final String str, final TLObject tLObject) {
        if (tLObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda177
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveBotCache$109(tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveBotCache$109(TLObject tLObject, String str) {
        int currentTime;
        int i;
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                currentTime = getConnectionsManager().getCurrentTime();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (tLObject instanceof TLRPC$TL_messages_botCallbackAnswer) {
                i = ((TLRPC$TL_messages_botCallbackAnswer) tLObject).cache_time;
            } else {
                if (tLObject instanceof TLRPC$TL_messages_botResults) {
                    i = ((TLRPC$TL_messages_botResults) tLObject).cache_time;
                }
                executeFast = this.database.executeFast("REPLACE INTO botcache VALUES(?, ?, ?)");
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLObject.getObjectSize());
                tLObject.serializeToStream(nativeByteBuffer);
                executeFast.bindString(1, str);
                executeFast.bindInteger(2, currentTime);
                executeFast.bindByteBuffer(3, nativeByteBuffer);
                executeFast.step();
                executeFast.dispose();
                nativeByteBuffer.reuse();
                return;
            }
            NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(tLObject.getObjectSize());
            tLObject.serializeToStream(nativeByteBuffer2);
            executeFast.bindString(1, str);
            executeFast.bindInteger(2, currentTime);
            executeFast.bindByteBuffer(3, nativeByteBuffer2);
            executeFast.step();
            executeFast.dispose();
            nativeByteBuffer2.reuse();
            return;
        } catch (Exception e2) {
            e = e2;
            sQLitePreparedStatement = executeFast;
            checkSQLException(e);
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
                return;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
            sQLitePreparedStatement = executeFast;
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
        currentTime += i;
        executeFast = this.database.executeFast("REPLACE INTO botcache VALUES(?, ?, ?)");
    }

    public void getBotCache(final String str, final RequestDelegate requestDelegate) {
        if (str == null || requestDelegate == null) {
            return;
        }
        final int currentTime = getConnectionsManager().getCurrentTime();
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getBotCache$110(currentTime, str, requestDelegate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getBotCache$110(int r5, java.lang.String r6, org.telegram.tgnet.RequestDelegate r7) {
        /*
            r4 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r4.database     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r2.<init>()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            java.lang.String r3 = "DELETE FROM botcache WHERE date < "
            r2.append(r3)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r2.append(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            org.telegram.SQLite.SQLitePreparedStatement r5 = r1.executeFast(r5)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            org.telegram.SQLite.SQLitePreparedStatement r5 = r5.stepThis()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r5.dispose()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            org.telegram.SQLite.SQLiteDatabase r5 = r4.database     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            java.lang.String r1 = "SELECT data FROM botcache WHERE id = ?"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            r3 = 0
            r2[r3] = r6     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            org.telegram.SQLite.SQLiteCursor r5 = r5.queryFinalized(r1, r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6b
            boolean r6 = r5.next()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            if (r6 == 0) goto L57
            org.telegram.tgnet.NativeByteBuffer r6 = r5.byteBufferValue(r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            if (r6 == 0) goto L57
            int r1 = r6.readInt32(r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            r2 = 911761060(0x36585ea4, float:3.2241596E-6)
            if (r1 != r2) goto L47
            org.telegram.tgnet.TLRPC$TL_messages_botCallbackAnswer r1 = org.telegram.tgnet.TLRPC$TL_messages_botCallbackAnswer.TLdeserialize(r6, r1, r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
            goto L4b
        L47:
            org.telegram.tgnet.TLRPC$messages_BotResults r1 = org.telegram.tgnet.TLRPC$messages_BotResults.TLdeserialize(r6, r1, r3)     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L61
        L4b:
            r6.reuse()     // Catch: java.lang.Exception -> L4f java.lang.Throwable -> L7a
            goto L58
        L4f:
            r6 = move-exception
            goto L53
        L51:
            r6 = move-exception
            r1 = r0
        L53:
            r4.checkSQLException(r6)     // Catch: java.lang.Exception -> L5f java.lang.Throwable -> L7a
            goto L58
        L57:
            r1 = r0
        L58:
            r5.dispose()     // Catch: java.lang.Exception -> L5f java.lang.Throwable -> L7a
            r7.run(r1, r0)
            goto L79
        L5f:
            r6 = move-exception
            goto L6e
        L61:
            r6 = move-exception
            r1 = r0
            goto L7b
        L64:
            r6 = move-exception
            r1 = r0
            goto L6e
        L67:
            r6 = move-exception
            r5 = r0
            r1 = r5
            goto L7b
        L6b:
            r6 = move-exception
            r5 = r0
            r1 = r5
        L6e:
            r4.checkSQLException(r6)     // Catch: java.lang.Throwable -> L7a
            r7.run(r1, r0)
            if (r5 == 0) goto L79
            r5.dispose()
        L79:
            return
        L7a:
            r6 = move-exception
        L7b:
            r7.run(r1, r0)
            if (r5 == 0) goto L83
            r5.dispose()
        L83:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getBotCache$110(int, java.lang.String, org.telegram.tgnet.RequestDelegate):void");
    }

    public ArrayList<TLRPC$UserFull> loadUserInfos(HashSet<Long> hashSet) {
        ArrayList<TLRPC$UserFull> arrayList = new ArrayList<>();
        try {
            String join = TextUtils.join(",", hashSet);
            SQLiteDatabase sQLiteDatabase = this.database;
            SQLiteCursor queryFinalized = sQLiteDatabase.queryFinalized("SELECT info, pinned FROM user_settings WHERE uid IN(" + join + ")", new Object[0]);
            while (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$UserFull TLdeserialize = TLRPC$UserFull.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    TLdeserialize.pinned_msg_id = queryFinalized.intValue(1);
                    arrayList.add(TLdeserialize);
                    byteBufferValue.reuse();
                }
            }
            queryFinalized.dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return arrayList;
    }

    public void loadUserInfo(final TLRPC$User tLRPC$User, final boolean z, final int i, int i2) {
        if (tLRPC$User == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda198
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadUserInfo$111(tLRPC$User, z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadUserInfo$111(org.telegram.tgnet.TLRPC$User r20, boolean r21, int r22) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$loadUserInfo$111(org.telegram.tgnet.TLRPC$User, boolean, int):void");
    }

    public void updateUserInfo(final TLRPC$UserFull tLRPC$UserFull, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda199
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateUserInfo$112(tLRPC$UserFull, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateUserInfo$112(org.telegram.tgnet.TLRPC$UserFull r10, boolean r11) {
        /*
            r9 = this;
            org.telegram.tgnet.TLRPC$User r0 = r10.user
            if (r0 == 0) goto L7
            long r0 = r0.f1749id
            goto L9
        L7:
            long r0 = r10.f1750id
        L9:
            r2 = 0
            if (r11 == 0) goto L33
            org.telegram.SQLite.SQLiteDatabase r11 = r9.database     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r3.<init>()     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.String r4 = "SELECT uid FROM user_settings WHERE uid = "
            r3.append(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r3.append(r0)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            org.telegram.SQLite.SQLiteCursor r11 = r11.queryFinalized(r3, r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            boolean r3 = r11.next()     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> Lbd
            r11.dispose()     // Catch: java.lang.Exception -> L30 java.lang.Throwable -> Lbd
            if (r3 != 0) goto L33
            return
        L30:
            r10 = move-exception
            goto Laf
        L33:
            org.telegram.SQLite.SQLiteDatabase r11 = r9.database     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.String r3 = "REPLACE INTO user_settings VALUES(?, ?, ?)"
            org.telegram.SQLite.SQLitePreparedStatement r11 = r11.executeFast(r3)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            org.telegram.tgnet.NativeByteBuffer r3 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            int r4 = r10.getObjectSize()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r3.<init>(r4)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r10.serializeToStream(r3)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r4 = 1
            r11.bindLong(r4, r0)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r5 = 2
            r11.bindByteBuffer(r5, r3)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r6 = 3
            int r7 = r10.pinned_msg_id     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.bindInteger(r6, r7)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.step()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.dispose()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r3.reuse()     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            int r11 = r10.flags     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r11 = r11 & 2048(0x800, float:2.87E-42)
            if (r11 == 0) goto L83
            org.telegram.SQLite.SQLiteDatabase r11 = r9.database     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.String r3 = "UPDATE dialogs SET folder_id = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r11 = r11.executeFast(r3)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            int r3 = r10.folder_id     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.bindInteger(r4, r3)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.bindLong(r5, r0)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.step()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.dispose()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            androidx.collection.LongSparseArray<java.lang.Boolean> r11 = r9.unknownDialogsIds     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            org.telegram.tgnet.TLRPC$User r3 = r10.user     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            long r6 = r3.f1749id     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r11.remove(r6)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
        L83:
            int r11 = r10.flags     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            r11 = r11 & 16384(0x4000, float:2.2959E-41)
            if (r11 == 0) goto Lbc
            org.telegram.SQLite.SQLiteDatabase r11 = r9.database     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            java.lang.String r3 = "UPDATE dialogs SET ttl_period = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r11 = r11.executeFast(r3)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lad
            int r10 = r10.ttl_period     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.bindInteger(r4, r10)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.bindLong(r5, r0)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.step()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            r11.dispose()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> La5
            goto Lbc
        La0:
            r10 = move-exception
            r8 = r2
            r2 = r11
            r11 = r8
            goto Lbe
        La5:
            r10 = move-exception
            r8 = r2
            r2 = r11
            r11 = r8
            goto Laf
        Laa:
            r10 = move-exception
            r11 = r2
            goto Lbe
        Lad:
            r10 = move-exception
            r11 = r2
        Laf:
            r9.checkSQLException(r10)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb7
            r2.dispose()
        Lb7:
            if (r11 == 0) goto Lbc
            r11.dispose()
        Lbc:
            return
        Lbd:
            r10 = move-exception
        Lbe:
            if (r2 == 0) goto Lc3
            r2.dispose()
        Lc3:
            if (r11 == 0) goto Lc8
            r11.dispose()
        Lc8:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateUserInfo$112(org.telegram.tgnet.TLRPC$UserFull, boolean):void");
    }

    public void saveChatInviter(final long j, final long j2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveChatInviter$113(j2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveChatInviter$113(long j, long j2) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE chat_settings_v2 SET inviter = ? WHERE uid = ?");
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindLong(1, j);
                sQLitePreparedStatement.bindLong(2, j2);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void saveChatLinksCount(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$saveChatLinksCount$114(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveChatLinksCount$114(int i, long j) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE chat_settings_v2 SET links = ? WHERE uid = ?");
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindInteger(1, i);
                sQLitePreparedStatement.bindLong(2, j);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement != null) {
                    sQLitePreparedStatement.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateChatInfo(final TLRPC$ChatFull tLRPC$ChatFull, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda181
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChatInfo$115(tLRPC$ChatFull, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateChatInfo$115(org.telegram.tgnet.TLRPC$ChatFull r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateChatInfo$115(org.telegram.tgnet.TLRPC$ChatFull, boolean):void");
    }

    public void updateChatOnlineCount(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChatOnlineCount$116(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChatOnlineCount$116(int i, long j) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE chat_settings_v2 SET online = ? WHERE uid = ?");
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindInteger(1, i);
                sQLitePreparedStatement.bindLong(2, j);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement != null) {
                    sQLitePreparedStatement.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updatePinnedMessages(final long j, final ArrayList<Integer> arrayList, final boolean z, final int i, final int i2, final boolean z2, final HashMap<Integer, MessageObject> hashMap) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda213
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updatePinnedMessages$119(z, hashMap, i2, j, arrayList, i, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v29, types: [org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda109] */
    /* JADX WARN: Type inference failed for: r1v9, types: [org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda110] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updatePinnedMessages$119(boolean r19, final java.util.HashMap r20, final int r21, final long r22, final java.util.ArrayList r24, int r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 849
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updatePinnedMessages$119(boolean, java.util.HashMap, int, long, java.util.ArrayList, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePinnedMessages$117(long j, ArrayList arrayList, HashMap hashMap, int i, int i2, boolean z) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didLoadPinnedMessages, Long.valueOf(j), arrayList, Boolean.TRUE, 0, hashMap, Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePinnedMessages$118(long j, ArrayList arrayList, HashMap hashMap, int i, int i2, boolean z) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didLoadPinnedMessages, Long.valueOf(j), arrayList, Boolean.FALSE, 0, hashMap, Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z));
    }

    public void updateChatInfo(final long j, final long j2, final int i, final long j3, final int i2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChatInfo$121(j, i, j2, j3, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChatInfo$121(long j, int i, long j2, long j3, int i2) {
        int i3;
        SQLiteCursor queryFinalized;
        final TLRPC$ChatFull tLRPC$ChatFull;
        TLRPC$ChatParticipant tLRPC$TL_chatParticipant;
        NativeByteBuffer byteBufferValue;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                i3 = 0;
                queryFinalized = this.database.queryFinalized("SELECT info, pinned, online, inviter FROM chat_settings_v2 WHERE uid = " + j, new Object[0]);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            new ArrayList();
            if (!queryFinalized.next() || (byteBufferValue = queryFinalized.byteBufferValue(0)) == null) {
                tLRPC$ChatFull = null;
            } else {
                tLRPC$ChatFull = TLRPC$ChatFull.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
                tLRPC$ChatFull.pinned_msg_id = queryFinalized.intValue(1);
                tLRPC$ChatFull.online_count = queryFinalized.intValue(2);
                tLRPC$ChatFull.inviterId = queryFinalized.longValue(3);
            }
            queryFinalized.dispose();
            if (tLRPC$ChatFull instanceof TLRPC$TL_chatFull) {
                if (i == 1) {
                    while (true) {
                        if (i3 >= tLRPC$ChatFull.participants.participants.size()) {
                            break;
                        } else if (tLRPC$ChatFull.participants.participants.get(i3).user_id == j2) {
                            tLRPC$ChatFull.participants.participants.remove(i3);
                            break;
                        } else {
                            i3++;
                        }
                    }
                } else if (i == 0) {
                    Iterator<TLRPC$ChatParticipant> it = tLRPC$ChatFull.participants.participants.iterator();
                    while (it.hasNext()) {
                        if (it.next().user_id == j2) {
                            return;
                        }
                    }
                    TLRPC$TL_chatParticipant tLRPC$TL_chatParticipant2 = new TLRPC$TL_chatParticipant();
                    tLRPC$TL_chatParticipant2.user_id = j2;
                    tLRPC$TL_chatParticipant2.inviter_id = j3;
                    tLRPC$TL_chatParticipant2.date = getConnectionsManager().getCurrentTime();
                    tLRPC$ChatFull.participants.participants.add(tLRPC$TL_chatParticipant2);
                } else if (i == 2) {
                    while (true) {
                        if (i3 >= tLRPC$ChatFull.participants.participants.size()) {
                            break;
                        }
                        TLRPC$ChatParticipant tLRPC$ChatParticipant = tLRPC$ChatFull.participants.participants.get(i3);
                        if (tLRPC$ChatParticipant.user_id == j2) {
                            if (j3 == 1) {
                                tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipantAdmin();
                            } else {
                                tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipant();
                            }
                            tLRPC$TL_chatParticipant.user_id = tLRPC$ChatParticipant.user_id;
                            tLRPC$TL_chatParticipant.date = tLRPC$ChatParticipant.date;
                            tLRPC$TL_chatParticipant.inviter_id = tLRPC$ChatParticipant.inviter_id;
                            tLRPC$ChatFull.participants.participants.set(i3, tLRPC$TL_chatParticipant);
                        } else {
                            i3++;
                        }
                    }
                }
                tLRPC$ChatFull.participants.version = i2;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda180
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$updateChatInfo$120(tLRPC$ChatFull);
                    }
                });
                SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO chat_settings_v2 VALUES(?, ?, ?, ?, ?, ?, ?)");
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$ChatFull.getObjectSize());
                tLRPC$ChatFull.serializeToStream(nativeByteBuffer);
                executeFast.bindLong(1, j);
                executeFast.bindByteBuffer(2, nativeByteBuffer);
                executeFast.bindInteger(3, tLRPC$ChatFull.pinned_msg_id);
                executeFast.bindInteger(4, tLRPC$ChatFull.online_count);
                executeFast.bindLong(5, tLRPC$ChatFull.inviterId);
                executeFast.bindInteger(6, tLRPC$ChatFull.invitesCount);
                executeFast.bindInteger(7, tLRPC$ChatFull.participants_count);
                executeFast.step();
                executeFast.dispose();
                nativeByteBuffer.reuse();
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateChatInfo$120(TLRPC$ChatFull tLRPC$ChatFull) {
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.chatInfoDidLoad;
        Boolean bool = Boolean.FALSE;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i, tLRPC$ChatFull, 0, bool, bool);
    }

    public boolean isMigratedChat(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final boolean[] zArr = new boolean[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda129
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$isMigratedChat$122(j, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isMigratedChat$122(long j, boolean[] zArr, CountDownLatch countDownLatch) {
        SQLiteCursor queryFinalized;
        TLRPC$ChatFull tLRPC$ChatFull;
        NativeByteBuffer byteBufferValue;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized("SELECT info FROM chat_settings_v2 WHERE uid = " + j, new Object[0]);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            new ArrayList();
            if (!queryFinalized.next() || (byteBufferValue = queryFinalized.byteBufferValue(0)) == null) {
                tLRPC$ChatFull = null;
            } else {
                tLRPC$ChatFull = TLRPC$ChatFull.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
            }
            queryFinalized.dispose();
            zArr[0] = (tLRPC$ChatFull instanceof TLRPC$TL_channelFull) && tLRPC$ChatFull.migrated_from_chat_id != 0;
            countDownLatch.countDown();
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            countDownLatch.countDown();
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            countDownLatch.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }

    public TLRPC$Message getMessage(final long j, final long j2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda100
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getMessage$123(j, j2, atomicReference, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return (TLRPC$Message) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMessage$123(long j, long j2, AtomicReference atomicReference, CountDownLatch countDownLatch) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabase = this.database;
                sQLiteCursor = sQLiteDatabase.queryFinalized("SELECT data FROM messages_v2 WHERE uid = " + j + " AND mid = " + j2 + " LIMIT 1", new Object[0]);
                while (sQLiteCursor.next()) {
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                        atomicReference.set(TLdeserialize);
                    }
                }
                sQLiteCursor.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor != null) {
                    sQLiteCursor.dispose();
                }
            }
            countDownLatch.countDown();
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            countDownLatch.countDown();
            throw th;
        }
    }

    public boolean hasInviteMeMessage(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final boolean[] zArr = new boolean[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda130
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$hasInviteMeMessage$124(j, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasInviteMeMessage$124(long j, boolean[] zArr, CountDownLatch countDownLatch) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                long clientUserId = getUserConfig().getClientUserId();
                SQLiteDatabase sQLiteDatabase = this.database;
                sQLiteCursor = sQLiteDatabase.queryFinalized("SELECT data FROM messages_v2 WHERE uid = " + (-j) + " AND out = 0 ORDER BY mid DESC LIMIT 100", new Object[0]);
                while (true) {
                    if (!sQLiteCursor.next()) {
                        break;
                    }
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                        TLRPC$MessageAction tLRPC$MessageAction = TLdeserialize.action;
                        if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionChatAddUser) && tLRPC$MessageAction.users.contains(Long.valueOf(clientUserId))) {
                            zArr[0] = true;
                            break;
                        }
                    }
                }
                sQLiteCursor.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor != null) {
                    sQLiteCursor.dispose();
                }
            }
            countDownLatch.countDown();
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            countDownLatch.countDown();
            throw th;
        }
    }

    public HashMap<Long, Integer> getSmallGroupsParticipantsCount() {
        HashMap<Long, Integer> hashMap = new HashMap<>();
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                sQLiteCursor = this.database.queryFinalized("SELECT uid, info, participants_count FROM chat_settings_v2 WHERE participants_count > 1", new Object[0]);
                while (sQLiteCursor.next()) {
                    long longValue = sQLiteCursor.longValue(0);
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(1);
                    int intValue = sQLiteCursor.intValue(2);
                    if (byteBufferValue != null) {
                        TLRPC$ChatFull TLdeserialize = TLRPC$ChatFull.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                        if (TLdeserialize instanceof TLRPC$TL_channelFull) {
                            hashMap.put(Long.valueOf(longValue), Integer.valueOf(intValue));
                        }
                    }
                }
                sQLiteCursor.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor != null) {
                    sQLiteCursor.dispose();
                }
            }
            return hashMap;
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(14:(3:329|330|(43:332|333|334|335|9|10|12|13|14|(6:301|302|(4:305|(2:307|308)(1:310)|309|303)|311|312|(1:314))(2:16|(47:235|236|237|238|239|240|241|(9:244|245|(2:266|267)(1:247)|248|(1:250)(1:265)|(1:254)|(4:257|(1:259)|260|261)|262|242)|275|276|277|(4:280|(2:282|283)(1:285)|284|278)|286|287|(1:289)|19|(1:23)|(5:29|(4:32|(2:34|35)(1:37)|36|30)|38|39|(1:41))|67|68|69|70|71|72|73|74|(8:78|79|80|81|82|83|75|76)|95|96|97|98|99|100|101|102|103|104|105|(6:172|173|175|176|(1:178)|179)(1:107)|108|109|(3:138|139|(10:141|(3:153|154|(5:156|112|(6:114|(1:116)(1:135)|117|118|119|(3:121|(2:123|124)|126))(1:137)|127|128))(1:143)|144|145|146|147|112|(0)(0)|127|128))|111|112|(0)(0)|127|128))|18|19|(2:21|23)|(7:25|27|29|(1:30)|38|39|(0))|67|68|69|70|71|72|73|74|(2:75|76)|95|96|97|98|99|100|101|102|103|104|105|(0)(0)|108|109|(0)|111|112|(0)(0)|127|128))|102|103|104|105|(0)(0)|108|109|(0)|111|112|(0)(0)|127|128)|73|74|(2:75|76)|95|96|97|98|99|100|101) */
    /* JADX WARN: Can't wrap try/catch for region: R(12:(27:(3:329|330|(43:332|333|334|335|9|10|12|13|14|(6:301|302|(4:305|(2:307|308)(1:310)|309|303)|311|312|(1:314))(2:16|(47:235|236|237|238|239|240|241|(9:244|245|(2:266|267)(1:247)|248|(1:250)(1:265)|(1:254)|(4:257|(1:259)|260|261)|262|242)|275|276|277|(4:280|(2:282|283)(1:285)|284|278)|286|287|(1:289)|19|(1:23)|(5:29|(4:32|(2:34|35)(1:37)|36|30)|38|39|(1:41))|67|68|69|70|71|72|73|74|(8:78|79|80|81|82|83|75|76)|95|96|97|98|99|100|101|102|103|104|105|(6:172|173|175|176|(1:178)|179)(1:107)|108|109|(3:138|139|(10:141|(3:153|154|(5:156|112|(6:114|(1:116)(1:135)|117|118|119|(3:121|(2:123|124)|126))(1:137)|127|128))(1:143)|144|145|146|147|112|(0)(0)|127|128))|111|112|(0)(0)|127|128))|18|19|(2:21|23)|(7:25|27|29|(1:30)|38|39|(0))|67|68|69|70|71|72|73|74|(2:75|76)|95|96|97|98|99|100|101|102|103|104|105|(0)(0)|108|109|(0)|111|112|(0)(0)|127|128))|70|71|72|73|74|(2:75|76)|95|96|97|98|99|100|101|102|103|104|105|(0)(0)|108|109|(0)|111|112|(0)(0)|127|128)|12|13|14|(0)(0)|18|19|(0)|(0)|67|68|69) */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x03d8, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x03da, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x03dc, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x03dd, code lost:
        r19 = r15;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x03e1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x03e2, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x03ec, code lost:
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x03f4, code lost:
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0405, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x040f, code lost:
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01f0 A[Catch: all -> 0x020d, Exception -> 0x0213, TryCatch #39 {Exception -> 0x0213, all -> 0x020d, blocks: (B:104:0x01f0, B:106:0x01f6, B:112:0x021b, B:114:0x021f, B:116:0x0225, B:117:0x022b, B:119:0x0238, B:121:0x024c, B:122:0x0251, B:123:0x0257, B:125:0x025d, B:46:0x00e7, B:77:0x018f, B:78:0x0195, B:80:0x019d, B:82:0x01ab, B:83:0x01ae, B:84:0x01b6, B:86:0x01bc), top: B:341:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x021b A[Catch: all -> 0x020d, Exception -> 0x0213, TryCatch #39 {Exception -> 0x0213, all -> 0x020d, blocks: (B:104:0x01f0, B:106:0x01f6, B:112:0x021b, B:114:0x021f, B:116:0x0225, B:117:0x022b, B:119:0x0238, B:121:0x024c, B:122:0x0251, B:123:0x0257, B:125:0x025d, B:46:0x00e7, B:77:0x018f, B:78:0x0195, B:80:0x019d, B:82:0x01ab, B:83:0x01ae, B:84:0x01b6, B:86:0x01bc), top: B:341:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0238 A[Catch: all -> 0x020d, Exception -> 0x0213, TryCatch #39 {Exception -> 0x0213, all -> 0x020d, blocks: (B:104:0x01f0, B:106:0x01f6, B:112:0x021b, B:114:0x021f, B:116:0x0225, B:117:0x022b, B:119:0x0238, B:121:0x024c, B:122:0x0251, B:123:0x0257, B:125:0x025d, B:46:0x00e7, B:77:0x018f, B:78:0x0195, B:80:0x019d, B:82:0x01ab, B:83:0x01ae, B:84:0x01b6, B:86:0x01bc), top: B:341:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x025d A[Catch: all -> 0x020d, Exception -> 0x0213, TRY_LEAVE, TryCatch #39 {Exception -> 0x0213, all -> 0x020d, blocks: (B:104:0x01f0, B:106:0x01f6, B:112:0x021b, B:114:0x021f, B:116:0x0225, B:117:0x022b, B:119:0x0238, B:121:0x024c, B:122:0x0251, B:123:0x0257, B:125:0x025d, B:46:0x00e7, B:77:0x018f, B:78:0x0195, B:80:0x019d, B:82:0x01ab, B:83:0x01ae, B:84:0x01b6, B:86:0x01bc), top: B:341:0x00e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x035c A[Catch: all -> 0x03b0, Exception -> 0x03bb, TRY_LEAVE, TryCatch #50 {Exception -> 0x03bb, all -> 0x03b0, blocks: (B:170:0x02fe, B:199:0x0356, B:201:0x035c), top: B:319:0x02fe }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x02db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x028c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0303 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4 A[Catch: all -> 0x041a, Exception -> 0x0422, TRY_ENTER, TRY_LEAVE, TryCatch #32 {Exception -> 0x0422, all -> 0x041a, blocks: (B:22:0x0085, B:42:0x00d4), top: B:355:0x0085 }] */
    /* JADX WARN: Type inference failed for: r5v57, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v58 */
    /* JADX WARN: Type inference failed for: r5v62 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.telegram.tgnet.TLRPC$ChatFull loadChatInfoInternal(long r23, boolean r25, boolean r26, boolean r27, int r28) {
        /*
            Method dump skipped, instructions count: 1154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.loadChatInfoInternal(long, boolean, boolean, boolean, int):org.telegram.tgnet.TLRPC$ChatFull");
    }

    public TLRPC$ChatFull loadChatInfo(long j, boolean z, CountDownLatch countDownLatch, boolean z2, boolean z3) {
        return loadChatInfo(j, z, countDownLatch, z2, z3, 0);
    }

    public TLRPC$ChatFull loadChatInfo(final long j, final boolean z, final CountDownLatch countDownLatch, final boolean z2, final boolean z3, final int i) {
        final TLRPC$ChatFull[] tLRPC$ChatFullArr = new TLRPC$ChatFull[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda215
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$loadChatInfo$125(tLRPC$ChatFullArr, j, z, z2, z3, i, countDownLatch);
            }
        });
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (Throwable unused) {
            }
        }
        return tLRPC$ChatFullArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChatInfo$125(TLRPC$ChatFull[] tLRPC$ChatFullArr, long j, boolean z, boolean z2, boolean z3, int i, CountDownLatch countDownLatch) {
        tLRPC$ChatFullArr[0] = loadChatInfoInternal(j, z, z2, z3, i);
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public TLRPC$ChatFull loadChatInfoInQueue(long j, boolean z, boolean z2, boolean z3, int i) {
        return loadChatInfoInternal(j, z, z2, z3, i);
    }

    public void processPendingRead(final long j, final int i, final int i2, final int i3) {
        final int i4 = this.lastSavedDate;
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$processPendingRead$126(j, i, i3, i4, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:151:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processPendingRead$126(long r18, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$processPendingRead$126(long, int, int, int, int):void");
    }

    public void putContacts(ArrayList<TLRPC$TL_contact> arrayList, final boolean z) {
        if (!arrayList.isEmpty() || z) {
            final ArrayList arrayList2 = new ArrayList(arrayList);
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda212
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$putContacts$127(z, arrayList2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putContacts$127(boolean r8, java.util.ArrayList r9) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L12
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            java.lang.String r1 = "DELETE FROM contacts WHERE 1"
            org.telegram.SQLite.SQLitePreparedStatement r8 = r8.executeFast(r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            org.telegram.SQLite.SQLitePreparedStatement r8 = r8.stepThis()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            r8.dispose()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
        L12:
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            r8.beginTransaction()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            java.lang.String r1 = "REPLACE INTO contacts VALUES(?, ?)"
            org.telegram.SQLite.SQLitePreparedStatement r8 = r8.executeFast(r1)     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            r1 = 0
            r2 = r1
        L21:
            int r3 = r9.size()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            if (r2 >= r3) goto L46
            java.lang.Object r3 = r9.get(r2)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            org.telegram.tgnet.TLRPC$TL_contact r3 = (org.telegram.tgnet.TLRPC$TL_contact) r3     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            r8.requery()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            long r4 = r3.user_id     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            r6 = 1
            r8.bindLong(r6, r4)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            r4 = 2
            boolean r3 = r3.mutual     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            if (r3 == 0) goto L3c
            goto L3d
        L3c:
            r6 = r1
        L3d:
            r8.bindInteger(r4, r6)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            r8.step()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            int r2 = r2 + 1
            goto L21
        L46:
            r8.dispose()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L57
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            r8.commitTransaction()     // Catch: java.lang.Throwable -> L5b java.lang.Exception -> L5d
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database
            if (r8 == 0) goto L6d
            goto L6a
        L53:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto L6e
        L57:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto L5e
        L5b:
            r8 = move-exception
            goto L6e
        L5d:
            r8 = move-exception
        L5e:
            r7.checkSQLException(r8)     // Catch: java.lang.Throwable -> L5b
            if (r0 == 0) goto L66
            r0.dispose()
        L66:
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database
            if (r8 == 0) goto L6d
        L6a:
            r8.commitTransaction()
        L6d:
            return
        L6e:
            if (r0 == 0) goto L73
            r0.dispose()
        L73:
            org.telegram.SQLite.SQLiteDatabase r9 = r7.database
            if (r9 == 0) goto L7a
            r9.commitTransaction()
        L7a:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putContacts$127(boolean, java.util.ArrayList):void");
    }

    public void deleteContacts(final ArrayList<Long> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda153
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$deleteContacts$128(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteContacts$128(ArrayList arrayList) {
        try {
            String join = TextUtils.join(",", arrayList);
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM contacts WHERE uid IN(" + join + ")").stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void applyPhoneBookUpdates(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda139
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$applyPhoneBookUpdates$129(str, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyPhoneBookUpdates$129(String str, String str2) {
        try {
            if (str.length() != 0) {
                this.database.executeFast(String.format(Locale.US, "UPDATE user_phones_v7 SET deleted = 0 WHERE sphone IN(%s)", str)).stepThis().dispose();
            }
            if (str2.length() != 0) {
                this.database.executeFast(String.format(Locale.US, "UPDATE user_phones_v7 SET deleted = 1 WHERE sphone IN(%s)", str2)).stepThis().dispose();
            }
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void putCachedPhoneBook(final HashMap<String, ContactsController.Contact> hashMap, final boolean z, boolean z2) {
        if (hashMap != null) {
            if (!hashMap.isEmpty() || z || z2) {
                this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda167
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$putCachedPhoneBook$130(hashMap, z);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putCachedPhoneBook$130(java.util.HashMap r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putCachedPhoneBook$130(java.util.HashMap, boolean):void");
    }

    public void getCachedPhoneBook(final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda206
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getCachedPhoneBook$131(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013b, code lost:
        if (r10 != null) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f9 A[Catch: all -> 0x0133, TRY_LEAVE, TryCatch #1 {all -> 0x0133, blocks: (B:51:0x00e9, B:53:0x00f9), top: B:128:0x00e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0145 A[Catch: all -> 0x01ef, Exception -> 0x01f1, TRY_ENTER, TryCatch #7 {Exception -> 0x01f1, blocks: (B:76:0x0145, B:79:0x016a, B:81:0x0170, B:83:0x017c, B:85:0x019e, B:86:0x01a0, B:88:0x01a4, B:89:0x01a6, B:90:0x01a9, B:93:0x01b1, B:96:0x01bd, B:98:0x01c3, B:100:0x01c9, B:101:0x01cd, B:103:0x01eb, B:77:0x015f), top: B:140:0x0143, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015f A[Catch: all -> 0x01ef, Exception -> 0x01f1, TryCatch #7 {Exception -> 0x01f1, blocks: (B:76:0x0145, B:79:0x016a, B:81:0x0170, B:83:0x017c, B:85:0x019e, B:86:0x01a0, B:88:0x01a4, B:89:0x01a6, B:90:0x01a9, B:93:0x01b1, B:96:0x01bd, B:98:0x01c3, B:100:0x01c9, B:101:0x01cd, B:103:0x01eb, B:77:0x015f), top: B:140:0x0143, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0170 A[Catch: all -> 0x01ef, Exception -> 0x01f1, TryCatch #7 {Exception -> 0x01f1, blocks: (B:76:0x0145, B:79:0x016a, B:81:0x0170, B:83:0x017c, B:85:0x019e, B:86:0x01a0, B:88:0x01a4, B:89:0x01a6, B:90:0x01a9, B:93:0x01b1, B:96:0x01bd, B:98:0x01c3, B:100:0x01c9, B:101:0x01cd, B:103:0x01eb, B:77:0x015f), top: B:140:0x0143, outer: #8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getCachedPhoneBook$131(boolean r25) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getCachedPhoneBook$131(boolean):void");
    }

    public void getContacts() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getContacts$132();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getContacts$132() {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            r3 = 1
            org.telegram.SQLite.SQLiteDatabase r4 = r11.database     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r5 = "SELECT * FROM contacts WHERE 1"
            r6 = 0
            java.lang.Object[] r7 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            org.telegram.SQLite.SQLiteCursor r4 = r4.queryFinalized(r5, r7)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            r5.<init>()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
        L1c:
            boolean r7 = r4.next()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            if (r7 == 0) goto L4d
            int r7 = r4.intValue(r6)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            long r7 = (long) r7     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            org.telegram.tgnet.TLRPC$TL_contact r9 = new org.telegram.tgnet.TLRPC$TL_contact     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            r9.<init>()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            r9.user_id = r7     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            int r7 = r4.intValue(r3)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            if (r7 != r3) goto L36
            r7 = r3
            goto L37
        L36:
            r7 = r6
        L37:
            r9.mutual = r7     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            int r7 = r5.length()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            if (r7 == 0) goto L44
            java.lang.String r7 = ","
            r5.append(r7)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
        L44:
            r0.add(r9)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            long r7 = r9.user_id     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            r5.append(r7)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            goto L1c
        L4d:
            r4.dispose()     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L7c
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            if (r4 == 0) goto L74
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r11.getUsersInternal(r4, r1)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            goto L74
        L5e:
            r2 = move-exception
            goto L66
        L60:
            r0 = move-exception
            goto L7e
        L62:
            r4 = move-exception
            r10 = r4
            r4 = r2
            r2 = r10
        L66:
            r0.clear()     // Catch: java.lang.Throwable -> L7c
            r1.clear()     // Catch: java.lang.Throwable -> L7c
            r11.checkSQLException(r2)     // Catch: java.lang.Throwable -> L7c
            if (r4 == 0) goto L74
            r4.dispose()
        L74:
            org.telegram.messenger.ContactsController r2 = r11.getContactsController()
            r2.processLoadedContacts(r0, r1, r3)
            return
        L7c:
            r0 = move-exception
            r2 = r4
        L7e:
            if (r2 == 0) goto L83
            r2.dispose()
        L83:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getContacts$132():void");
    }

    public void getUnsentMessages(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getUnsentMessages$133(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02be  */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getUnsentMessages$133(int r20) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getUnsentMessages$133(int):void");
    }

    public boolean checkMessageByRandomId(final long j) {
        final boolean[] zArr = new boolean[1];
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda131
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$checkMessageByRandomId$134(j, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$checkMessageByRandomId$134(long r7, boolean[] r9, java.util.concurrent.CountDownLatch r10) {
        /*
            r6 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r6.database     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            java.lang.String r3 = "SELECT random_id FROM randoms_v2 WHERE random_id = %d"
            r4 = 1
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            r8 = 0
            r5[r8] = r7     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            java.lang.String r7 = java.lang.String.format(r2, r3, r5)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            java.lang.Object[] r2 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            org.telegram.SQLite.SQLiteCursor r0 = r1.queryFinalized(r7, r2)     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            boolean r7 = r0.next()     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            if (r7 == 0) goto L2c
            r9[r8] = r4     // Catch: java.lang.Throwable -> L24 java.lang.Exception -> L26
            goto L2c
        L24:
            r7 = move-exception
            goto L33
        L26:
            r7 = move-exception
            r6.checkSQLException(r7)     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L2f
        L2c:
            r0.dispose()
        L2f:
            r10.countDown()
            return
        L33:
            if (r0 == 0) goto L38
            r0.dispose()
        L38:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$checkMessageByRandomId$134(long, boolean[], java.util.concurrent.CountDownLatch):void");
    }

    public boolean checkMessageId(final long j, final int i) {
        final boolean[] zArr = new boolean[1];
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda92
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$checkMessageId$135(j, i, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$checkMessageId$135(long r6, int r8, boolean[] r9, java.util.concurrent.CountDownLatch r10) {
        /*
            r5 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r5.database     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.String r3 = "SELECT mid FROM messages_v2 WHERE uid = %d AND mid = %d"
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r7 = 0
            r4[r7] = r6     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.Integer r6 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r8 = 1
            r4[r8] = r6     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.String r6 = java.lang.String.format(r2, r3, r4)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.Object[] r2 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            org.telegram.SQLite.SQLiteCursor r0 = r1.queryFinalized(r6, r2)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            boolean r6 = r0.next()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            if (r6 == 0) goto L33
            r9[r7] = r8     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            goto L33
        L2b:
            r6 = move-exception
            goto L3a
        L2d:
            r6 = move-exception
            r5.checkSQLException(r6)     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L36
        L33:
            r0.dispose()
        L36:
            r10.countDown()
            return
        L3a:
            if (r0 == 0) goto L3f
            r0.dispose()
        L3f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$checkMessageId$135(long, int, boolean[], java.util.concurrent.CountDownLatch):void");
    }

    public void getUnreadMention(final long j, final int i, final IntCallback intCallback) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getUnreadMention$137(i, j, intCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getUnreadMention$137(int i, long j, final IntCallback intCallback) {
        SQLiteCursor queryFinalized;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                if (i != 0) {
                    queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT MIN(mid) FROM messages_topics WHERE uid = %d AND topic_id = %d AND mention = 1 AND read_state IN(0, 1)", Long.valueOf(j), Integer.valueOf(i)), new Object[0]);
                } else {
                    queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT MIN(mid) FROM messages_v2 WHERE uid = %d AND mention = 1 AND read_state IN(0, 1)", Long.valueOf(j)), new Object[0]);
                }
                sQLiteCursor = queryFinalized;
                final int intValue = sQLiteCursor.next() ? sQLiteCursor.intValue(0) : 0;
                sQLiteCursor.dispose();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.IntCallback.this.run(intValue);
                    }
                });
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor == null) {
                    return;
                }
            }
            sQLiteCursor.dispose();
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    public void getMessagesCount(final long j, final IntCallback intCallback) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getMessagesCount$139(j, intCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMessagesCount$139(long j, final IntCallback intCallback) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                sQLiteCursor = this.database.queryFinalized(String.format(Locale.US, "SELECT COUNT(mid) FROM messages_v2 WHERE uid = %d", Long.valueOf(j)), new Object[0]);
                final int intValue = sQLiteCursor.next() ? sQLiteCursor.intValue(0) : 0;
                sQLiteCursor.dispose();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.IntCallback.this.run(intValue);
                    }
                });
            } catch (Exception e) {
                checkSQLException(e);
            }
        } finally {
            sQLiteCursor.dispose();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:209:0x04e7
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public java.lang.Runnable getMessagesInternal(long r53, long r55, int r57, int r58, int r59, int r60, int r61, int r62, boolean r63, int r64, int r65, boolean r66, boolean r67, org.telegram.messenger.MessageLoaderLogger r68) {
        /*
            Method dump skipped, instructions count: 8883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.getMessagesInternal(long, long, int, int, int, int, int, int, boolean, int, int, boolean, boolean, org.telegram.messenger.MessageLoaderLogger):java.lang.Runnable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getMessagesInternal$140(TLRPC$Message tLRPC$Message, TLRPC$Message tLRPC$Message2) {
        int i;
        int i2;
        int i3 = tLRPC$Message.f1626id;
        if (i3 > 0 && (i2 = tLRPC$Message2.f1626id) > 0) {
            if (i3 > i2) {
                return -1;
            }
            return i3 < i2 ? 1 : 0;
        } else if (i3 < 0 && (i = tLRPC$Message2.f1626id) < 0) {
            if (i3 < i) {
                return -1;
            }
            return i3 > i ? 1 : 0;
        } else {
            int i4 = tLRPC$Message.date;
            int i5 = tLRPC$Message2.date;
            if (i4 > i5) {
                return -1;
            }
            return i4 < i5 ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMessagesInternal$141(TLRPC$TL_messages_messages tLRPC$TL_messages_messages, int i, long j, long j2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z, boolean z2, int i11, int i12, boolean z3, int i13, boolean z4, boolean z5, MessageLoaderLogger messageLoaderLogger) {
        getMessagesController().processLoadedMessages(tLRPC$TL_messages_messages, i, j, j2, i2, i3, i4, true, i5, i6, i7, i8, i9, i10, z, z2 ? 1 : 0, i11, i12, z3, i13, z4, z5, messageLoaderLogger);
    }

    private void getAnimatedEmoji(String str, ArrayList<TLRPC$Document> arrayList) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                sQLiteCursor = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM animated_emoji WHERE document_id IN (%s)", str), new Object[0]);
                while (sQLiteCursor.next()) {
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    try {
                        TLRPC$Document TLdeserialize = TLRPC$Document.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(true), true);
                        if (TLdeserialize != null && TLdeserialize.f1610id != 0) {
                            arrayList.add(TLdeserialize);
                        }
                    } catch (Exception e) {
                        checkSQLException(e);
                    }
                    if (byteBufferValue != null) {
                        byteBufferValue.reuse();
                    }
                }
            } catch (Throwable th) {
                if (sQLiteCursor != null) {
                    sQLiteCursor.dispose();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e2.printStackTrace();
            if (sQLiteCursor == null) {
                return;
            }
        }
        sQLiteCursor.dispose();
    }

    public void getMessages(final long j, final long j2, boolean z, final int i, final int i2, final int i3, final int i4, final int i5, final int i6, final boolean z2, final int i7, final int i8, final boolean z3, final boolean z4, final MessageLoaderLogger messageLoaderLogger) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda169
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getMessages$143(messageLoaderLogger, j, j2, i, i2, i3, i4, i5, i6, z2, i7, i8, z3, z4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMessages$143(final MessageLoaderLogger messageLoaderLogger, long j, long j2, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, int i8, boolean z2, boolean z3) {
        if (messageLoaderLogger != null) {
            messageLoaderLogger.logStorageQueuePost();
        }
        final Runnable messagesInternal = getMessagesInternal(j, j2, i, i2, i3, i4, i5, i6, z, i7, i8, z2, z3, messageLoaderLogger);
        if (messageLoaderLogger != null) {
            messageLoaderLogger.logStorageProccessing();
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.lambda$getMessages$142(MessageLoaderLogger.this, messagesInternal);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getMessages$142(MessageLoaderLogger messageLoaderLogger, Runnable runnable) {
        if (messageLoaderLogger != null) {
            messageLoaderLogger.logStageQueuePost();
        }
        runnable.run();
    }

    public void clearSentMedia() {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearSentMedia$144();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearSentMedia$144() {
        try {
            this.database.executeFast("DELETE FROM sent_files_v2 WHERE 1").stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public Object[] getSentFile(final String str, final int i) {
        if (str == null || str.toLowerCase().endsWith("attheme")) {
            return null;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Object[] objArr = new Object[2];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda138
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getSentFile$145(str, i, objArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        if (objArr[0] != null) {
            return objArr;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSentFile$145(String str, int i, Object[] objArr, CountDownLatch countDownLatch) {
        NativeByteBuffer byteBufferValue;
        try {
            try {
                String MD5 = Utilities.MD5(str);
                if (MD5 != null) {
                    SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data, parent FROM sent_files_v2 WHERE uid = '%s' AND type = %d", MD5, Integer.valueOf(i)), new Object[0]);
                    if (queryFinalized.next() && (byteBufferValue = queryFinalized.byteBufferValue(0)) != null) {
                        TLRPC$MessageMedia TLdeserialize = TLRPC$MessageMedia.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                        byteBufferValue.reuse();
                        if (TLdeserialize instanceof TLRPC$TL_messageMediaDocument) {
                            objArr[0] = ((TLRPC$TL_messageMediaDocument) TLdeserialize).document;
                        } else if (TLdeserialize instanceof TLRPC$TL_messageMediaPhoto) {
                            objArr[0] = ((TLRPC$TL_messageMediaPhoto) TLdeserialize).photo;
                        }
                        if (objArr[0] != null) {
                            objArr[1] = queryFinalized.stringValue(1);
                        }
                    }
                    queryFinalized.dispose();
                }
            } catch (Exception e) {
                checkSQLException(e);
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    private void updateWidgets(long j) {
        ArrayList<Long> arrayList = new ArrayList<>();
        arrayList.add(Long.valueOf(j));
        updateWidgets(arrayList);
    }

    private void updateWidgets(ArrayList<Long> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        AppWidgetManager appWidgetManager = null;
        try {
            TextUtils.join(",", arrayList);
            SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT DISTINCT id FROM shortcut_widget WHERE did IN(%s,-1)", TextUtils.join(",", arrayList)), new Object[0]);
            while (queryFinalized.next()) {
                if (appWidgetManager == null) {
                    appWidgetManager = AppWidgetManager.getInstance(ApplicationLoader.applicationContext);
                }
                appWidgetManager.notifyAppWidgetViewDataChanged(queryFinalized.intValue(0), C3632R.C3635id.list_view);
            }
            queryFinalized.dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void putWidgetDialogs(final int i, final ArrayList<TopicKey> arrayList) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putWidgetDialogs$146(i, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putWidgetDialogs$146(int i, ArrayList arrayList) {
        try {
            this.database.beginTransaction();
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM shortcut_widget WHERE id = " + i).stepThis().dispose();
            SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO shortcut_widget VALUES(?, ?, ?)");
            if (arrayList.isEmpty()) {
                executeFast.requery();
                executeFast.bindInteger(1, i);
                executeFast.bindLong(2, -1L);
                executeFast.bindInteger(3, 0);
                executeFast.step();
            } else {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    long j = ((TopicKey) arrayList.get(i2)).dialogId;
                    executeFast.requery();
                    executeFast.bindInteger(1, i);
                    executeFast.bindLong(2, j);
                    executeFast.bindInteger(3, i2);
                    executeFast.step();
                }
            }
            executeFast.dispose();
            this.database.commitTransaction();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void clearWidgetDialogs(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearWidgetDialogs$147(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearWidgetDialogs$147(int i) {
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            sQLiteDatabase.executeFast("DELETE FROM shortcut_widget WHERE id = " + i).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void getWidgetDialogIds(final int i, final int i2, final ArrayList<Long> arrayList, final ArrayList<TLRPC$User> arrayList2, final ArrayList<TLRPC$Chat> arrayList3, final boolean z) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda67
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getWidgetDialogIds$148(i, arrayList, arrayList2, arrayList3, z, i2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getWidgetDialogIds$148(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, boolean z, int i2, CountDownLatch countDownLatch) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT did FROM shortcut_widget WHERE id = %d ORDER BY ord ASC", Integer.valueOf(i)), new Object[0]);
                while (queryFinalized.next()) {
                    try {
                        long longValue = queryFinalized.longValue(0);
                        if (longValue != -1) {
                            arrayList.add(Long.valueOf(longValue));
                            if (arrayList2 != null && arrayList3 != null) {
                                if (DialogObject.isUserDialog(longValue)) {
                                    arrayList4.add(Long.valueOf(longValue));
                                } else {
                                    arrayList5.add(Long.valueOf(-longValue));
                                }
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        countDownLatch.countDown();
                        throw th;
                    }
                }
                queryFinalized.dispose();
                if (!z && arrayList.isEmpty()) {
                    if (i2 == 0) {
                        SQLiteCursor queryFinalized2 = this.database.queryFinalized("SELECT did FROM dialogs WHERE folder_id = 0 ORDER BY pinned DESC, date DESC LIMIT 0,10", new Object[0]);
                        while (queryFinalized2.next()) {
                            long longValue2 = queryFinalized2.longValue(0);
                            if (!DialogObject.isFolderDialogId(longValue2)) {
                                arrayList.add(Long.valueOf(longValue2));
                                if (arrayList2 != null && arrayList3 != null) {
                                    if (DialogObject.isUserDialog(longValue2)) {
                                        arrayList4.add(Long.valueOf(longValue2));
                                    } else {
                                        arrayList5.add(Long.valueOf(-longValue2));
                                    }
                                }
                            }
                        }
                        queryFinalized2.dispose();
                    } else {
                        SQLiteCursor queryFinalized3 = getMessagesStorage().getDatabase().queryFinalized("SELECT did FROM chat_hints WHERE type = 0 ORDER BY rating DESC LIMIT 4", new Object[0]);
                        while (queryFinalized3.next()) {
                            long longValue3 = queryFinalized3.longValue(0);
                            arrayList.add(Long.valueOf(longValue3));
                            if (arrayList2 != null && arrayList3 != null) {
                                if (DialogObject.isUserDialog(longValue3)) {
                                    arrayList4.add(Long.valueOf(longValue3));
                                } else {
                                    arrayList5.add(Long.valueOf(-longValue3));
                                }
                            }
                        }
                        queryFinalized3.dispose();
                    }
                }
                if (arrayList2 != null && arrayList3 != null) {
                    if (!arrayList5.isEmpty()) {
                        getChatsInternal(TextUtils.join(",", arrayList5), arrayList3);
                    }
                    if (!arrayList4.isEmpty()) {
                        getUsersInternal(TextUtils.join(",", arrayList4), arrayList2);
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
            countDownLatch.countDown();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void getWidgetDialogs(final int i, final int i2, final ArrayList<Long> arrayList, final LongSparseArray<TLRPC$Dialog> longSparseArray, final LongSparseArray<TLRPC$Message> longSparseArray2, final ArrayList<TLRPC$User> arrayList2, final ArrayList<TLRPC$Chat> arrayList3) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getWidgetDialogs$149(i, arrayList, i2, longSparseArray, longSparseArray2, arrayList3, arrayList2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getWidgetDialogs$149(int i, ArrayList arrayList, int i2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, ArrayList arrayList2, ArrayList arrayList3, CountDownLatch countDownLatch) {
        SQLiteCursor queryFinalized;
        boolean z;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                SQLiteCursor queryFinalized2 = this.database.queryFinalized(String.format(Locale.US, "SELECT did FROM shortcut_widget WHERE id = %d ORDER BY ord ASC", Integer.valueOf(i)), new Object[0]);
                while (queryFinalized2.next()) {
                    try {
                        long longValue = queryFinalized2.longValue(0);
                        if (longValue != -1) {
                            arrayList.add(Long.valueOf(longValue));
                            if (DialogObject.isUserDialog(longValue)) {
                                arrayList4.add(Long.valueOf(longValue));
                            } else {
                                arrayList5.add(Long.valueOf(-longValue));
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        countDownLatch.countDown();
                        throw th;
                    }
                }
                queryFinalized2.dispose();
                if (arrayList.isEmpty() && i2 == 1) {
                    SQLiteCursor queryFinalized3 = getMessagesStorage().getDatabase().queryFinalized("SELECT did FROM chat_hints WHERE type = 0 ORDER BY rating DESC LIMIT 4", new Object[0]);
                    while (queryFinalized3.next()) {
                        long longValue2 = queryFinalized3.longValue(0);
                        arrayList.add(Long.valueOf(longValue2));
                        if (DialogObject.isUserDialog(longValue2)) {
                            arrayList4.add(Long.valueOf(longValue2));
                        } else {
                            arrayList5.add(Long.valueOf(-longValue2));
                        }
                    }
                    queryFinalized3.dispose();
                }
                if (arrayList.isEmpty()) {
                    queryFinalized = this.database.queryFinalized("SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date FROM dialogs as d LEFT JOIN messages_v2 as m ON d.last_mid = m.mid AND d.did = m.uid WHERE d.folder_id = 0 ORDER BY d.pinned DESC, d.date DESC LIMIT 0,10", new Object[0]);
                    z = true;
                } else {
                    queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT d.did, d.last_mid, d.unread_count, d.date, m.data, m.read_state, m.mid, m.send_state, m.date FROM dialogs as d LEFT JOIN messages_v2 as m ON d.last_mid = m.mid AND d.did = m.uid WHERE d.did IN(%s)", TextUtils.join(",", arrayList)), new Object[0]);
                    z = false;
                }
                while (queryFinalized.next()) {
                    long longValue3 = queryFinalized.longValue(0);
                    if (!DialogObject.isFolderDialogId(longValue3)) {
                        if (z) {
                            arrayList.add(Long.valueOf(longValue3));
                        }
                        TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
                        tLRPC$TL_dialog.f1608id = longValue3;
                        tLRPC$TL_dialog.top_message = queryFinalized.intValue(1);
                        tLRPC$TL_dialog.unread_count = queryFinalized.intValue(2);
                        tLRPC$TL_dialog.last_message_date = queryFinalized.intValue(3);
                        longSparseArray.put(tLRPC$TL_dialog.f1608id, tLRPC$TL_dialog);
                        NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(4);
                        if (byteBufferValue != null) {
                            TLRPC$Message TLdeserialize = TLRPC$Message.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            TLdeserialize.readAttachPath(byteBufferValue, getUserConfig().clientUserId);
                            byteBufferValue.reuse();
                            MessageObject.setUnreadFlags(TLdeserialize, queryFinalized.intValue(5));
                            TLdeserialize.f1626id = queryFinalized.intValue(6);
                            TLdeserialize.send_state = queryFinalized.intValue(7);
                            int intValue = queryFinalized.intValue(8);
                            if (intValue != 0) {
                                tLRPC$TL_dialog.last_message_date = intValue;
                            }
                            long j = tLRPC$TL_dialog.f1608id;
                            TLdeserialize.dialog_id = j;
                            longSparseArray2.put(j, TLdeserialize);
                            addUsersAndChatsFromMessage(TLdeserialize, arrayList4, arrayList5, null);
                        }
                    }
                }
                queryFinalized.dispose();
                if (!z && arrayList.size() > longSparseArray.size()) {
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        long longValue4 = ((Long) arrayList.get(i3)).longValue();
                        if (longSparseArray.get(((Long) arrayList.get(i3)).longValue()) == null) {
                            TLRPC$TL_dialog tLRPC$TL_dialog2 = new TLRPC$TL_dialog();
                            tLRPC$TL_dialog2.f1608id = longValue4;
                            longSparseArray.put(longValue4, tLRPC$TL_dialog2);
                            if (DialogObject.isChatDialog(longValue4)) {
                                long j2 = -longValue4;
                                if (arrayList5.contains(Long.valueOf(j2))) {
                                    arrayList5.add(Long.valueOf(j2));
                                }
                            } else if (arrayList4.contains(Long.valueOf(longValue4))) {
                                arrayList4.add(Long.valueOf(longValue4));
                            }
                        }
                    }
                }
                if (!arrayList5.isEmpty()) {
                    getChatsInternal(TextUtils.join(",", arrayList5), arrayList2);
                }
                if (!arrayList4.isEmpty()) {
                    getUsersInternal(TextUtils.join(",", arrayList4), arrayList3);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        countDownLatch.countDown();
    }

    public void putSentFile(final String str, final TLObject tLObject, final int i, final String str2) {
        if (str == null || tLObject == null || str2 == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda140
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putSentFile$150(str, tLObject, i, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putSentFile$150(String str, TLObject tLObject, int i, String str2) {
        TLRPC$MessageMedia tLRPC$MessageMedia;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                String MD5 = Utilities.MD5(str);
                if (MD5 != null) {
                    if (tLObject instanceof TLRPC$Photo) {
                        tLRPC$MessageMedia = new TLRPC$TL_messageMediaPhoto();
                        tLRPC$MessageMedia.photo = (TLRPC$Photo) tLObject;
                        tLRPC$MessageMedia.flags |= 1;
                    } else if (tLObject instanceof TLRPC$Document) {
                        tLRPC$MessageMedia = new TLRPC$TL_messageMediaDocument();
                        tLRPC$MessageMedia.document = (TLRPC$Document) tLObject;
                        tLRPC$MessageMedia.flags |= 1;
                    } else {
                        tLRPC$MessageMedia = null;
                    }
                    if (tLRPC$MessageMedia == null) {
                        return;
                    }
                    sQLitePreparedStatement = this.database.executeFast("REPLACE INTO sent_files_v2 VALUES(?, ?, ?, ?)");
                    sQLitePreparedStatement.requery();
                    NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$MessageMedia.getObjectSize());
                    tLRPC$MessageMedia.serializeToStream(nativeByteBuffer);
                    sQLitePreparedStatement.bindString(1, MD5);
                    sQLitePreparedStatement.bindInteger(2, i);
                    sQLitePreparedStatement.bindByteBuffer(3, nativeByteBuffer);
                    sQLitePreparedStatement.bindString(4, str2);
                    sQLitePreparedStatement.step();
                    nativeByteBuffer.reuse();
                }
                if (sQLitePreparedStatement == null) {
                    return;
                }
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateEncryptedChatSeq(final TLRPC$EncryptedChat tLRPC$EncryptedChat, final boolean z) {
        if (tLRPC$EncryptedChat == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda190
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateEncryptedChatSeq$151(tLRPC$EncryptedChat, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEncryptedChatSeq$151(TLRPC$EncryptedChat tLRPC$EncryptedChat, boolean z) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE enc_chats SET seq_in = ?, seq_out = ?, use_count = ?, in_seq_no = ?, mtproto_seq = ? WHERE uid = ?");
                sQLitePreparedStatement.bindInteger(1, tLRPC$EncryptedChat.seq_in);
                sQLitePreparedStatement.bindInteger(2, tLRPC$EncryptedChat.seq_out);
                sQLitePreparedStatement.bindInteger(3, (tLRPC$EncryptedChat.key_use_count_in << 16) | tLRPC$EncryptedChat.key_use_count_out);
                sQLitePreparedStatement.bindInteger(4, tLRPC$EncryptedChat.in_seq_no);
                sQLitePreparedStatement.bindInteger(5, tLRPC$EncryptedChat.mtproto_seq);
                sQLitePreparedStatement.bindInteger(6, tLRPC$EncryptedChat.f1614id);
                sQLitePreparedStatement.step();
                if (z && tLRPC$EncryptedChat.in_seq_no != 0) {
                    long encryptedChatId = DialogObject.getEncryptedChatId(tLRPC$EncryptedChat.f1614id);
                    this.database.executeFast(String.format(Locale.US, "DELETE FROM messages_v2 WHERE mid IN (SELECT m.mid FROM messages_v2 as m LEFT JOIN messages_seq as s ON m.mid = s.mid WHERE m.uid = %d AND m.date = 0 AND m.mid < 0 AND s.seq_out <= %d) AND uid = %d", Long.valueOf(encryptedChatId), Integer.valueOf(tLRPC$EncryptedChat.in_seq_no), Long.valueOf(encryptedChatId))).stepThis().dispose();
                }
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateEncryptedChatTTL(final TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        if (tLRPC$EncryptedChat == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda187
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateEncryptedChatTTL$152(tLRPC$EncryptedChat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEncryptedChatTTL$152(TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE enc_chats SET ttl = ? WHERE uid = ?");
                sQLitePreparedStatement.bindInteger(1, tLRPC$EncryptedChat.ttl);
                sQLitePreparedStatement.bindInteger(2, tLRPC$EncryptedChat.f1614id);
                sQLitePreparedStatement.step();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateEncryptedChatLayer(final TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        if (tLRPC$EncryptedChat == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda188
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateEncryptedChatLayer$153(tLRPC$EncryptedChat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEncryptedChatLayer$153(TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE enc_chats SET layer = ? WHERE uid = ?");
                sQLitePreparedStatement.bindInteger(1, tLRPC$EncryptedChat.layer);
                sQLitePreparedStatement.bindInteger(2, tLRPC$EncryptedChat.f1614id);
                sQLitePreparedStatement.step();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void updateEncryptedChat(final TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        if (tLRPC$EncryptedChat == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda186
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateEncryptedChat$154(tLRPC$EncryptedChat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEncryptedChat$154(TLRPC$EncryptedChat tLRPC$EncryptedChat) {
        byte[] bArr;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                byte[] bArr2 = tLRPC$EncryptedChat.key_hash;
                if ((bArr2 == null || bArr2.length < 16) && (bArr = tLRPC$EncryptedChat.auth_key) != null) {
                    tLRPC$EncryptedChat.key_hash = AndroidUtilities.calcAuthKeyHash(bArr);
                }
                sQLitePreparedStatement = this.database.executeFast("UPDATE enc_chats SET data = ?, g = ?, authkey = ?, ttl = ?, layer = ?, seq_in = ?, seq_out = ?, use_count = ?, exchange_id = ?, key_date = ?, fprint = ?, fauthkey = ?, khash = ?, in_seq_no = ?, admin_id = ?, mtproto_seq = ? WHERE uid = ?");
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$EncryptedChat.getObjectSize());
                byte[] bArr3 = tLRPC$EncryptedChat.a_or_b;
                NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(bArr3 != null ? bArr3.length : 1);
                byte[] bArr4 = tLRPC$EncryptedChat.auth_key;
                NativeByteBuffer nativeByteBuffer3 = new NativeByteBuffer(bArr4 != null ? bArr4.length : 1);
                byte[] bArr5 = tLRPC$EncryptedChat.future_auth_key;
                NativeByteBuffer nativeByteBuffer4 = new NativeByteBuffer(bArr5 != null ? bArr5.length : 1);
                byte[] bArr6 = tLRPC$EncryptedChat.key_hash;
                NativeByteBuffer nativeByteBuffer5 = new NativeByteBuffer(bArr6 != null ? bArr6.length : 1);
                tLRPC$EncryptedChat.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatement.bindByteBuffer(1, nativeByteBuffer);
                byte[] bArr7 = tLRPC$EncryptedChat.a_or_b;
                if (bArr7 != null) {
                    nativeByteBuffer2.writeBytes(bArr7);
                }
                byte[] bArr8 = tLRPC$EncryptedChat.auth_key;
                if (bArr8 != null) {
                    nativeByteBuffer3.writeBytes(bArr8);
                }
                byte[] bArr9 = tLRPC$EncryptedChat.future_auth_key;
                if (bArr9 != null) {
                    nativeByteBuffer4.writeBytes(bArr9);
                }
                byte[] bArr10 = tLRPC$EncryptedChat.key_hash;
                if (bArr10 != null) {
                    nativeByteBuffer5.writeBytes(bArr10);
                }
                sQLitePreparedStatement.bindByteBuffer(2, nativeByteBuffer2);
                sQLitePreparedStatement.bindByteBuffer(3, nativeByteBuffer3);
                sQLitePreparedStatement.bindInteger(4, tLRPC$EncryptedChat.ttl);
                sQLitePreparedStatement.bindInteger(5, tLRPC$EncryptedChat.layer);
                sQLitePreparedStatement.bindInteger(6, tLRPC$EncryptedChat.seq_in);
                sQLitePreparedStatement.bindInteger(7, tLRPC$EncryptedChat.seq_out);
                sQLitePreparedStatement.bindInteger(8, (tLRPC$EncryptedChat.key_use_count_in << 16) | tLRPC$EncryptedChat.key_use_count_out);
                sQLitePreparedStatement.bindLong(9, tLRPC$EncryptedChat.exchange_id);
                sQLitePreparedStatement.bindInteger(10, tLRPC$EncryptedChat.key_create_date);
                sQLitePreparedStatement.bindLong(11, tLRPC$EncryptedChat.future_key_fingerprint);
                sQLitePreparedStatement.bindByteBuffer(12, nativeByteBuffer4);
                sQLitePreparedStatement.bindByteBuffer(13, nativeByteBuffer5);
                sQLitePreparedStatement.bindInteger(14, tLRPC$EncryptedChat.in_seq_no);
                sQLitePreparedStatement.bindLong(15, tLRPC$EncryptedChat.admin_id);
                sQLitePreparedStatement.bindInteger(16, tLRPC$EncryptedChat.mtproto_seq);
                sQLitePreparedStatement.bindInteger(17, tLRPC$EncryptedChat.f1614id);
                sQLitePreparedStatement.step();
                nativeByteBuffer.reuse();
                nativeByteBuffer2.reuse();
                nativeByteBuffer3.reuse();
                nativeByteBuffer4.reuse();
                nativeByteBuffer5.reuse();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void isDialogHasTopMessage(final long j, final Runnable runnable) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda105
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$isDialogHasTopMessage$155(j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$isDialogHasTopMessage$155(long r8, java.lang.Runnable r10) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            org.telegram.SQLite.SQLiteDatabase r2 = r7.database     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.String r4 = "SELECT last_mid FROM dialogs WHERE did = %d"
            r5 = 1
            java.lang.Object[] r6 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            r6[r0] = r8     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.String r8 = java.lang.String.format(r3, r4, r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.Object[] r9 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            org.telegram.SQLite.SQLiteCursor r1 = r2.queryFinalized(r8, r9)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            boolean r8 = r1.next()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r8 == 0) goto L28
            int r8 = r1.intValue(r0)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r8 == 0) goto L28
            r0 = r5
        L28:
            r1.dispose()
            goto L35
        L2c:
            r8 = move-exception
            goto L3b
        L2e:
            r8 = move-exception
            r7.checkSQLException(r8)     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L35
            goto L28
        L35:
            if (r0 != 0) goto L3a
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r10)
        L3a:
            return
        L3b:
            if (r1 == 0) goto L40
            r1.dispose()
        L40:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$isDialogHasTopMessage$155(long, java.lang.Runnable):void");
    }

    public boolean hasAuthMessage(final int i) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final boolean[] zArr = new boolean[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$hasAuthMessage$156(i, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 == null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$hasAuthMessage$156(int r7, boolean[] r8, java.util.concurrent.CountDownLatch r9) {
        /*
            r6 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r6.database     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            java.lang.String r3 = "SELECT mid FROM messages_v2 WHERE uid = 777000 AND date = %d AND mid < 0 LIMIT 1"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            r5 = 0
            r4[r5] = r7     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            java.lang.String r7 = java.lang.String.format(r2, r3, r4)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            java.lang.Object[] r2 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            org.telegram.SQLite.SQLiteCursor r0 = r1.queryFinalized(r7, r2)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            boolean r7 = r0.next()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            r8[r5] = r7     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L24
            goto L2a
        L22:
            r7 = move-exception
            goto L31
        L24:
            r7 = move-exception
            r6.checkSQLException(r7)     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L2d
        L2a:
            r0.dispose()
        L2d:
            r9.countDown()
            return
        L31:
            if (r0 == 0) goto L36
            r0.dispose()
        L36:
            r9.countDown()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$hasAuthMessage$156(int, boolean[], java.util.concurrent.CountDownLatch):void");
    }

    public void getEncryptedChat(final long j, final CountDownLatch countDownLatch, final ArrayList<TLObject> arrayList) {
        if (countDownLatch == null || arrayList == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getEncryptedChat$157(j, arrayList, countDownLatch);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getEncryptedChat$157(long j, ArrayList arrayList, CountDownLatch countDownLatch) {
        try {
            try {
                ArrayList<Long> arrayList2 = new ArrayList<>();
                ArrayList<TLRPC$EncryptedChat> arrayList3 = new ArrayList<>();
                getEncryptedChatsInternal("" + j, arrayList3, arrayList2);
                if (!arrayList3.isEmpty() && !arrayList2.isEmpty()) {
                    ArrayList<TLRPC$User> arrayList4 = new ArrayList<>();
                    getUsersInternal(TextUtils.join(",", arrayList2), arrayList4);
                    if (!arrayList4.isEmpty()) {
                        arrayList.add(arrayList3.get(0));
                        arrayList.add(arrayList4.get(0));
                    }
                }
            } catch (Exception e) {
                checkSQLException(e);
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    public void putEncryptedChat(final TLRPC$EncryptedChat tLRPC$EncryptedChat, final TLRPC$User tLRPC$User, final TLRPC$Dialog tLRPC$Dialog) {
        if (tLRPC$EncryptedChat == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda189
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putEncryptedChat$158(tLRPC$EncryptedChat, tLRPC$User, tLRPC$Dialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putEncryptedChat$158(org.telegram.tgnet.TLRPC$EncryptedChat r17, org.telegram.tgnet.TLRPC$User r18, org.telegram.tgnet.TLRPC$Dialog r19) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putEncryptedChat$158(org.telegram.tgnet.TLRPC$EncryptedChat, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$Dialog):void");
    }

    private String formatUserSearchName(TLRPC$User tLRPC$User) {
        StringBuilder sb = new StringBuilder();
        String str = tLRPC$User.first_name;
        if (str != null && str.length() > 0) {
            sb.append(tLRPC$User.first_name);
        }
        String str2 = tLRPC$User.last_name;
        if (str2 != null && str2.length() > 0) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(tLRPC$User.last_name);
        }
        sb.append(";;;");
        String str3 = tLRPC$User.username;
        if (str3 != null && str3.length() > 0) {
            sb.append(tLRPC$User.username);
        } else {
            ArrayList<TLRPC$TL_username> arrayList = tLRPC$User.usernames;
            if (arrayList != null && arrayList.size() > 0) {
                for (int i = 0; i < tLRPC$User.usernames.size(); i++) {
                    TLRPC$TL_username tLRPC$TL_username = tLRPC$User.usernames.get(i);
                    if (tLRPC$TL_username != null && tLRPC$TL_username.active) {
                        sb.append(tLRPC$TL_username.username);
                        sb.append(";;");
                    }
                }
            }
        }
        return sb.toString().toLowerCase();
    }

    public boolean containsLocalDialog(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Boolean[] boolArr = {Boolean.FALSE};
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda127
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$containsLocalDialog$159(j, boolArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return boolArr[0].booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (r0 == null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$containsLocalDialog$159(long r5, java.lang.Boolean[] r7, java.util.concurrent.CountDownLatch r8) {
        /*
            r4 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r4.database     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r2.<init>()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            java.lang.String r3 = "SELECT date FROM dialogs WHERE did = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r2.append(r5)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r6 = 0
            java.lang.Object[] r2 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            org.telegram.SQLite.SQLiteCursor r0 = r1.queryFinalized(r5, r2)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            boolean r5 = r0.next()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r7[r6] = r5     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            goto L2e
        L26:
            r5 = move-exception
            goto L35
        L28:
            r5 = move-exception
            r4.checkSQLException(r5)     // Catch: java.lang.Throwable -> L26
            if (r0 == 0) goto L31
        L2e:
            r0.dispose()
        L31:
            r8.countDown()
            return
        L35:
            if (r0 == 0) goto L3a
            r0.dispose()
        L3a:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$containsLocalDialog$159(long, java.lang.Boolean[], java.util.concurrent.CountDownLatch):void");
    }

    private void putUsersInternal(List<TLRPC$User> list) throws Exception {
        if (list == null || list.isEmpty()) {
            return;
        }
        SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO users VALUES(?, ?, ?, ?)");
        for (int i = 0; i < list.size(); i++) {
            TLRPC$User tLRPC$User = list.get(i);
            if (tLRPC$User != null && tLRPC$User.min) {
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM users WHERE uid = %d", Long.valueOf(tLRPC$User.f1749id)), new Object[0]);
                if (queryFinalized.next()) {
                    try {
                        NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                        if (byteBufferValue != null) {
                            TLRPC$User TLdeserialize = TLRPC$User.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            byteBufferValue.reuse();
                            if (TLdeserialize != null) {
                                String str = tLRPC$User.username;
                                if (str != null) {
                                    TLdeserialize.username = str;
                                    TLdeserialize.flags |= 8;
                                } else {
                                    TLdeserialize.username = null;
                                    TLdeserialize.flags &= -9;
                                }
                                if (tLRPC$User.apply_min_photo) {
                                    TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = tLRPC$User.photo;
                                    if (tLRPC$UserProfilePhoto != null) {
                                        TLdeserialize.photo = tLRPC$UserProfilePhoto;
                                        TLdeserialize.flags |= 32;
                                    } else {
                                        TLdeserialize.photo = null;
                                        TLdeserialize.flags &= -33;
                                    }
                                }
                                tLRPC$User = TLdeserialize;
                            }
                        }
                    } catch (Exception e) {
                        checkSQLException(e);
                    }
                }
                queryFinalized.dispose();
            }
            executeFast.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$User.getObjectSize());
            tLRPC$User.serializeToStream(nativeByteBuffer);
            executeFast.bindLong(1, tLRPC$User.f1749id);
            executeFast.bindString(2, formatUserSearchName(tLRPC$User));
            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
            if (tLRPC$UserStatus != null) {
                if (tLRPC$UserStatus instanceof TLRPC$TL_userStatusRecently) {
                    tLRPC$UserStatus.expires = -100;
                } else if (tLRPC$UserStatus instanceof TLRPC$TL_userStatusLastWeek) {
                    tLRPC$UserStatus.expires = -101;
                } else if (tLRPC$UserStatus instanceof TLRPC$TL_userStatusLastMonth) {
                    tLRPC$UserStatus.expires = -102;
                }
                executeFast.bindInteger(3, tLRPC$UserStatus.expires);
            } else {
                executeFast.bindInteger(3, 0);
            }
            executeFast.bindByteBuffer(4, nativeByteBuffer);
            executeFast.step();
            nativeByteBuffer.reuse();
        }
        executeFast.dispose();
    }

    public void updateChatDefaultBannedRights(final long j, final TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, final int i) {
        if (tLRPC$TL_chatBannedRights == null || j == 0) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateChatDefaultBannedRights$160(j, i, tLRPC$TL_chatBannedRights);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v15, types: [org.telegram.SQLite.SQLitePreparedStatement] */
    /* JADX WARN: Type inference failed for: r8v5, types: [org.telegram.SQLite.SQLitePreparedStatement] */
    public /* synthetic */ void lambda$updateChatDefaultBannedRights$160(long j, int i, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights) {
        SQLiteCursor queryFinalized;
        TLRPC$Chat tLRPC$Chat;
        NativeByteBuffer byteBufferValue;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM chats WHERE uid = %d", Long.valueOf(j)), new Object[0]);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
            j = 0;
        } catch (Throwable th2) {
            th = th2;
            j = 0;
        }
        try {
            if (!queryFinalized.next() || (byteBufferValue = queryFinalized.byteBufferValue(0)) == null) {
                tLRPC$Chat = null;
            } else {
                tLRPC$Chat = TLRPC$Chat.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                byteBufferValue.reuse();
            }
            queryFinalized.dispose();
            if (tLRPC$Chat != null) {
                if (tLRPC$Chat.default_banned_rights == null || i >= tLRPC$Chat.version) {
                    tLRPC$Chat.default_banned_rights = tLRPC$TL_chatBannedRights;
                    tLRPC$Chat.flags |= 262144;
                    tLRPC$Chat.version = i;
                    j = this.database.executeFast("UPDATE chats SET data = ? WHERE uid = ?");
                    try {
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Chat.getObjectSize());
                        tLRPC$Chat.serializeToStream(nativeByteBuffer);
                        j.bindByteBuffer(1, nativeByteBuffer);
                        j.bindLong(2, tLRPC$Chat.f1602id);
                        j.step();
                        nativeByteBuffer.reuse();
                        j.dispose();
                    } catch (Exception e2) {
                        e = e2;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        if (j != 0) {
                            j.dispose();
                        }
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            sQLiteCursor = queryFinalized;
            j = 0;
        } catch (Throwable th3) {
            th = th3;
            sQLiteCursor = queryFinalized;
            j = 0;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            if (j != 0) {
                j.dispose();
            }
            throw th;
        }
    }

    private void putChatsInternal(List<TLRPC$Chat> list) throws Exception {
        if (list == null || list.isEmpty()) {
            return;
        }
        SQLitePreparedStatement executeFast = this.database.executeFast("REPLACE INTO chats VALUES(?, ?, ?)");
        for (int i = 0; i < list.size(); i++) {
            TLRPC$Chat tLRPC$Chat = list.get(i);
            if (tLRPC$Chat.min) {
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM chats WHERE uid = %d", Long.valueOf(tLRPC$Chat.f1602id)), new Object[0]);
                if (queryFinalized.next()) {
                    try {
                        NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                        if (byteBufferValue != null) {
                            TLRPC$Chat TLdeserialize = TLRPC$Chat.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            byteBufferValue.reuse();
                            if (TLdeserialize != null) {
                                TLdeserialize.title = tLRPC$Chat.title;
                                TLdeserialize.photo = tLRPC$Chat.photo;
                                TLdeserialize.broadcast = tLRPC$Chat.broadcast;
                                TLdeserialize.verified = tLRPC$Chat.verified;
                                TLdeserialize.megagroup = tLRPC$Chat.megagroup;
                                TLdeserialize.call_not_empty = tLRPC$Chat.call_not_empty;
                                TLdeserialize.call_active = tLRPC$Chat.call_active;
                                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = tLRPC$Chat.default_banned_rights;
                                if (tLRPC$TL_chatBannedRights != null) {
                                    TLdeserialize.default_banned_rights = tLRPC$TL_chatBannedRights;
                                    TLdeserialize.flags |= 262144;
                                }
                                TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = tLRPC$Chat.admin_rights;
                                if (tLRPC$TL_chatAdminRights != null) {
                                    TLdeserialize.admin_rights = tLRPC$TL_chatAdminRights;
                                    TLdeserialize.flags |= 16384;
                                }
                                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2 = tLRPC$Chat.banned_rights;
                                if (tLRPC$TL_chatBannedRights2 != null) {
                                    TLdeserialize.banned_rights = tLRPC$TL_chatBannedRights2;
                                    TLdeserialize.flags |= LiteMode.FLAG_CHAT_SCALE;
                                }
                                String str = tLRPC$Chat.username;
                                if (str != null) {
                                    TLdeserialize.username = str;
                                    TLdeserialize.flags |= 64;
                                } else {
                                    TLdeserialize.username = null;
                                    TLdeserialize.flags &= -65;
                                }
                                int i2 = tLRPC$Chat.participants_count;
                                if (i2 > 0) {
                                    TLdeserialize.participants_count = i2;
                                }
                                tLRPC$Chat = TLdeserialize;
                            }
                        }
                    } catch (Exception e) {
                        FileLog.m99e(e);
                    }
                }
                queryFinalized.dispose();
            }
            executeFast.requery();
            tLRPC$Chat.flags |= 131072;
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$Chat.getObjectSize());
            tLRPC$Chat.serializeToStream(nativeByteBuffer);
            executeFast.bindLong(1, tLRPC$Chat.f1602id);
            String str2 = tLRPC$Chat.title;
            if (str2 != null) {
                executeFast.bindString(2, str2.toLowerCase());
            } else {
                executeFast.bindString(2, "");
            }
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            executeFast.step();
            nativeByteBuffer.reuse();
            this.dialogIsForum.put(-tLRPC$Chat.f1602id, tLRPC$Chat.forum ? 1 : 0);
        }
        executeFast.dispose();
    }

    public void getUsersInternal(String str, ArrayList<TLRPC$User> arrayList) throws Exception {
        if (str == null || str.length() == 0 || arrayList == null) {
            return;
        }
        SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data, status FROM users WHERE uid IN(%s)", str), new Object[0]);
        while (queryFinalized.next()) {
            try {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$User TLdeserialize = TLRPC$User.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    byteBufferValue.reuse();
                    if (TLdeserialize != null) {
                        TLRPC$UserStatus tLRPC$UserStatus = TLdeserialize.status;
                        if (tLRPC$UserStatus != null) {
                            tLRPC$UserStatus.expires = queryFinalized.intValue(1);
                        }
                        arrayList.add(TLdeserialize);
                    }
                }
            } catch (Exception e) {
                checkSQLException(e);
            }
        }
        queryFinalized.dispose();
    }

    public void getChatsInternal(String str, ArrayList<TLRPC$Chat> arrayList) throws Exception {
        getChatsInternal(str, arrayList, true);
    }

    public void getChatsInternal(String str, ArrayList<TLRPC$Chat> arrayList, boolean z) throws Exception {
        if (str == null || str.length() == 0 || arrayList == null) {
            return;
        }
        SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data FROM chats WHERE uid IN(%s)", str), new Object[0]);
        while (queryFinalized.next()) {
            try {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$Chat TLdeserialize = TLRPC$Chat.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false, z);
                    byteBufferValue.reuse();
                    if (TLdeserialize != null) {
                        arrayList.add(TLdeserialize);
                    }
                }
            } catch (Exception e) {
                checkSQLException(e);
            }
        }
        queryFinalized.dispose();
    }

    public void getEncryptedChatsInternal(String str, ArrayList<TLRPC$EncryptedChat> arrayList, ArrayList<Long> arrayList2) throws Exception {
        if (str == null || str.length() == 0 || arrayList == null) {
            return;
        }
        SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT data, user, g, authkey, ttl, layer, seq_in, seq_out, use_count, exchange_id, key_date, fprint, fauthkey, khash, in_seq_no, admin_id, mtproto_seq FROM enc_chats WHERE uid IN(%s)", str), new Object[0]);
        while (queryFinalized.next()) {
            try {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                if (byteBufferValue != null) {
                    TLRPC$EncryptedChat TLdeserialize = TLRPC$EncryptedChat.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                    byteBufferValue.reuse();
                    if (TLdeserialize != null) {
                        long longValue = queryFinalized.longValue(1);
                        TLdeserialize.user_id = longValue;
                        if (arrayList2 != null && !arrayList2.contains(Long.valueOf(longValue))) {
                            arrayList2.add(Long.valueOf(TLdeserialize.user_id));
                        }
                        TLdeserialize.a_or_b = queryFinalized.byteArrayValue(2);
                        TLdeserialize.auth_key = queryFinalized.byteArrayValue(3);
                        TLdeserialize.ttl = queryFinalized.intValue(4);
                        TLdeserialize.layer = queryFinalized.intValue(5);
                        TLdeserialize.seq_in = queryFinalized.intValue(6);
                        TLdeserialize.seq_out = queryFinalized.intValue(7);
                        int intValue = queryFinalized.intValue(8);
                        TLdeserialize.key_use_count_in = (short) (intValue >> 16);
                        TLdeserialize.key_use_count_out = (short) intValue;
                        TLdeserialize.exchange_id = queryFinalized.longValue(9);
                        TLdeserialize.key_create_date = queryFinalized.intValue(10);
                        TLdeserialize.future_key_fingerprint = queryFinalized.longValue(11);
                        TLdeserialize.future_auth_key = queryFinalized.byteArrayValue(12);
                        TLdeserialize.key_hash = queryFinalized.byteArrayValue(13);
                        TLdeserialize.in_seq_no = queryFinalized.intValue(14);
                        long longValue2 = queryFinalized.longValue(15);
                        if (longValue2 != 0) {
                            TLdeserialize.admin_id = longValue2;
                        }
                        TLdeserialize.mtproto_seq = queryFinalized.intValue(16);
                        arrayList.add(TLdeserialize);
                    }
                }
            } catch (Exception e) {
                checkSQLException(e);
            }
        }
        queryFinalized.dispose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: putUsersAndChatsInternal */
    public void lambda$putUsersAndChats$161(List<TLRPC$User> list, List<TLRPC$Chat> list2, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        try {
            if (z) {
                try {
                    this.database.beginTransaction();
                } catch (Exception e) {
                    checkSQLException(e);
                    sQLiteDatabase = this.database;
                    if (sQLiteDatabase == null) {
                        return;
                    }
                }
            }
            putUsersInternal(list);
            putChatsInternal(list2);
            sQLiteDatabase = this.database;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.commitTransaction();
        } catch (Throwable th) {
            SQLiteDatabase sQLiteDatabase2 = this.database;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.commitTransaction();
            }
            throw th;
        }
    }

    public void putUsersAndChats(final List<TLRPC$User> list, final List<TLRPC$Chat> list2, final boolean z, boolean z2) {
        if (list == null || !list.isEmpty() || list2 == null || !list2.isEmpty()) {
            if (z2) {
                this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda168
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$putUsersAndChats$161(list, list2, z);
                    }
                });
            } else {
                lambda$putUsersAndChats$161(list, list2, z);
            }
        }
    }

    public void removeFromDownloadQueue(final long j, final int i, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda207
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$removeFromDownloadQueue$162(z, i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeFromDownloadQueue$162(boolean z, int i, long j) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                if (z) {
                    SQLiteDatabase sQLiteDatabase = this.database;
                    Locale locale = Locale.US;
                    SQLiteCursor queryFinalized = sQLiteDatabase.queryFinalized(String.format(locale, "SELECT min(date) FROM download_queue WHERE type = %d", Integer.valueOf(i)), new Object[0]);
                    try {
                        int intValue = queryFinalized.next() ? queryFinalized.intValue(0) : -1;
                        queryFinalized.dispose();
                        if (intValue != -1) {
                            this.database.executeFast(String.format(locale, "UPDATE download_queue SET date = %d WHERE uid = %d AND type = %d", Integer.valueOf(intValue - 1), Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        throw th;
                    }
                } else {
                    this.database.executeFast(String.format(Locale.US, "DELETE FROM download_queue WHERE uid = %d AND type = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void deleteFromDownloadQueue(final java.util.ArrayList<android.util.Pair<java.lang.Long, java.lang.Integer>> r9, boolean r10) {
        /*
            r8 = this;
            if (r9 == 0) goto L8b
            boolean r0 = r9.isEmpty()
            if (r0 == 0) goto La
            goto L8b
        La:
            r0 = 0
            if (r10 == 0) goto L12
            org.telegram.SQLite.SQLiteDatabase r1 = r8.database     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
        L12:
            org.telegram.SQLite.SQLiteDatabase r1 = r8.database     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            java.lang.String r2 = "DELETE FROM download_queue WHERE uid = ? AND type = ?"
            org.telegram.SQLite.SQLitePreparedStatement r1 = r1.executeFast(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r2 = 0
            int r3 = r9.size()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
        L1f:
            if (r2 >= r3) goto L48
            java.lang.Object r4 = r9.get(r2)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            android.util.Pair r4 = (android.util.Pair) r4     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r1.requery()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            java.lang.Object r5 = r4.first     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            java.lang.Long r5 = (java.lang.Long) r5     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            long r5 = r5.longValue()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r7 = 1
            r1.bindLong(r7, r5)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r5 = 2
            java.lang.Object r4 = r4.second     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r1.bindInteger(r5, r4)     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            r1.step()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            int r2 = r2 + 1
            goto L1f
        L48:
            r1.dispose()     // Catch: java.lang.Throwable -> L61 java.lang.Exception -> L64
            if (r10 == 0) goto L52
            org.telegram.SQLite.SQLiteDatabase r1 = r8.database     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r1.commitTransaction()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
        L52:
            org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda147 r1 = new org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda147     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r1.<init>()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r1)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            if (r10 == 0) goto L7b
            org.telegram.SQLite.SQLiteDatabase r9 = r8.database
            if (r9 == 0) goto L7b
            goto L78
        L61:
            r9 = move-exception
            r0 = r1
            goto L7c
        L64:
            r9 = move-exception
            r0 = r1
            goto L6a
        L67:
            r9 = move-exception
            goto L7c
        L69:
            r9 = move-exception
        L6a:
            r8.checkSQLException(r9)     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L72
            r0.dispose()
        L72:
            if (r10 == 0) goto L7b
            org.telegram.SQLite.SQLiteDatabase r9 = r8.database
            if (r9 == 0) goto L7b
        L78:
            r9.commitTransaction()
        L7b:
            return
        L7c:
            if (r0 == 0) goto L81
            r0.dispose()
        L81:
            if (r10 == 0) goto L8a
            org.telegram.SQLite.SQLiteDatabase r10 = r8.database
            if (r10 == 0) goto L8a
            r10.commitTransaction()
        L8a:
            throw r9
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.deleteFromDownloadQueue(java.util.ArrayList, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteFromDownloadQueue$163(ArrayList arrayList) {
        getDownloadController().cancelDownloading(arrayList);
    }

    public void clearDownloadQueue(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$clearDownloadQueue$164(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearDownloadQueue$164(int i) {
        try {
            if (i == 0) {
                this.database.executeFast("DELETE FROM download_queue WHERE 1").stepThis().dispose();
            } else {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM download_queue WHERE type = %d", Integer.valueOf(i))).stepThis().dispose();
            }
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void getDownloadQueue(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getDownloadQueue$166(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadQueue$166(final int i) {
        int i2;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                final ArrayList arrayList = new ArrayList();
                SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT uid, type, data, parent FROM download_queue WHERE type = %d ORDER BY date DESC LIMIT 3", Integer.valueOf(i)), new Object[0]);
                while (queryFinalized.next()) {
                    try {
                        DownloadObject downloadObject = new DownloadObject();
                        downloadObject.type = queryFinalized.intValue(1);
                        downloadObject.f1524id = queryFinalized.longValue(0);
                        downloadObject.parent = queryFinalized.stringValue(3);
                        NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(2);
                        if (byteBufferValue != null) {
                            TLRPC$MessageMedia TLdeserialize = TLRPC$MessageMedia.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(false), false);
                            byteBufferValue.reuse();
                            TLRPC$Document tLRPC$Document = TLdeserialize.document;
                            if (tLRPC$Document != null) {
                                downloadObject.object = tLRPC$Document;
                                downloadObject.secret = MessageObject.isVideoDocument(tLRPC$Document) && (((i2 = TLdeserialize.ttl_seconds) > 0 && i2 <= 60) || i2 == Integer.MAX_VALUE);
                            } else {
                                TLRPC$Photo tLRPC$Photo = TLdeserialize.photo;
                                if (tLRPC$Photo != null) {
                                    downloadObject.object = tLRPC$Photo;
                                    int i3 = TLdeserialize.ttl_seconds;
                                    downloadObject.secret = (i3 > 0 && i3 <= 60) || i3 == Integer.MAX_VALUE;
                                }
                            }
                            downloadObject.forceCache = (TLdeserialize.flags & Integer.MIN_VALUE) != 0;
                        }
                        arrayList.add(downloadObject);
                    } catch (Exception e) {
                        e = e;
                        sQLiteCursor = queryFinalized;
                        checkSQLException(e);
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLiteCursor = queryFinalized;
                        if (sQLiteCursor != null) {
                            sQLiteCursor.dispose();
                        }
                        throw th;
                    }
                }
                queryFinalized.dispose();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$getDownloadQueue$165(i, arrayList);
                    }
                });
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadQueue$165(int i, ArrayList arrayList) {
        getDownloadController().processDownloadObjects(i, arrayList);
    }

    private int getMessageMediaType(TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message instanceof TLRPC$TL_message_secret) {
            if ((tLRPC$Message.media instanceof TLRPC$TL_messageMediaPhoto) || MessageObject.isGifMessage(tLRPC$Message) || MessageObject.isVoiceMessage(tLRPC$Message) || MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message)) {
                int i = tLRPC$Message.ttl;
                return (i <= 0 || i > 60) ? 0 : 1;
            }
            return -1;
        }
        if (tLRPC$Message instanceof TLRPC$TL_message) {
            TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
            if (((tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPhoto) || (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument)) && tLRPC$MessageMedia.ttl_seconds != 0) {
                return 1;
            }
        }
        return ((tLRPC$Message.media instanceof TLRPC$TL_messageMediaPhoto) || MessageObject.isVideoMessage(tLRPC$Message)) ? 0 : -1;
    }

    public void putWebPages(final LongSparseArray<TLRPC$WebPage> longSparseArray) {
        if (isEmpty(longSparseArray)) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda132
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putWebPages$168(longSparseArray);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:129:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putWebPages$168(androidx.collection.LongSparseArray r18) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putWebPages$168(androidx.collection.LongSparseArray):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putWebPages$167(ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReceivedWebpages, arrayList);
    }

    public void overwriteChannel(final long j, final TLRPC$TL_updates_channelDifferenceTooLong tLRPC$TL_updates_channelDifferenceTooLong, final int i, final Runnable runnable) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$overwriteChannel$170(j, i, tLRPC$TL_updates_channelDifferenceTooLong, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$overwriteChannel$170(long r20, int r22, final org.telegram.tgnet.TLRPC$TL_updates_channelDifferenceTooLong r23, java.lang.Runnable r24) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$overwriteChannel$170(long, int, org.telegram.tgnet.TLRPC$TL_updates_channelDifferenceTooLong, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$overwriteChannel$169(long j, TLRPC$TL_updates_channelDifferenceTooLong tLRPC$TL_updates_channelDifferenceTooLong) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.removeAllMessagesFromDialog, Long.valueOf(j), Boolean.TRUE, tLRPC$TL_updates_channelDifferenceTooLong);
    }

    public void putChannelViews(final LongSparseArray<SparseIntArray> longSparseArray, final LongSparseArray<SparseIntArray> longSparseArray2, final LongSparseArray<SparseArray<TLRPC$MessageReplies>> longSparseArray3, final boolean z) {
        if (isEmpty(longSparseArray) && isEmpty(longSparseArray2) && isEmpty(longSparseArray3)) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda135
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putChannelViews$171(longSparseArray, longSparseArray2, longSparseArray3, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:141:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:191:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0134 A[Catch: all -> 0x0228, Exception -> 0x022c, TRY_LEAVE, TryCatch #18 {Exception -> 0x022c, all -> 0x0228, blocks: (B:43:0x00d0, B:45:0x00d6, B:47:0x00e7, B:58:0x0129, B:61:0x0134), top: B:166:0x00d0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putChannelViews$171(androidx.collection.LongSparseArray r23, androidx.collection.LongSparseArray r24, androidx.collection.LongSparseArray r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putChannelViews$171(androidx.collection.LongSparseArray, androidx.collection.LongSparseArray, androidx.collection.LongSparseArray, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x028d  */
    /* renamed from: updateRepliesMaxReadIdInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$updateRepliesMaxReadId$173(final long r21, final int r23, final int r24, int r25) {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateRepliesMaxReadId$173(long, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateRepliesMaxReadIdInternal$172(long j, int i, int i2, int i3, int i4) {
        getMessagesController().getTopicsController().updateMaxReadId(j, i, i2, i3, i4);
    }

    private void resetForumBadgeIfNeed(long j) {
        LongSparseIntArray longSparseIntArray;
        SQLiteCursor sQLiteCursor = null;
        try {
            SQLiteDatabase sQLiteDatabase = this.database;
            Locale locale = Locale.ENGLISH;
            SQLiteCursor queryFinalized = sQLiteDatabase.queryFinalized(String.format(locale, "SELECT topic_id FROM topics WHERE did = %d AND unread_count > 0", Long.valueOf(j)), new Object[0]);
            try {
                if (queryFinalized.next()) {
                    longSparseIntArray = null;
                } else {
                    longSparseIntArray = new LongSparseIntArray();
                    longSparseIntArray.put(j, 0);
                }
                queryFinalized.dispose();
                if (longSparseIntArray != null) {
                    this.database.executeFast(String.format(locale, "UPDATE dialogs SET unread_count = 0, unread_count_i = 0 WHERE did = %d", Long.valueOf(j))).stepThis().dispose();
                }
                updateFiltersReadCounter(longSparseIntArray, null, true);
                getMessagesController().processDialogsUpdateRead(longSparseIntArray, null);
            } catch (Throwable th) {
                th = th;
                sQLiteCursor = queryFinalized;
                try {
                    checkSQLException(th);
                } finally {
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateRepliesMaxReadId(final long j, final int i, final int i2, final int i3, boolean z) {
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda80
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$updateRepliesMaxReadId$173(j, i, i2, i3);
                }
            });
        } else {
            lambda$updateRepliesMaxReadId$173(j, i, i2, i3);
        }
    }

    public void updateRepliesCount(final long j, final int i, final ArrayList<TLRPC$Peer> arrayList, final int i2, final int i3) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateRepliesCount$174(i, j, i3, arrayList, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateRepliesCount$174(int r16, long r17, int r19, java.util.ArrayList r20, int r21) {
        /*
            r15 = this;
            r1 = r15
            r0 = r20
            r2 = r21
            r3 = 0
            org.telegram.SQLite.SQLiteDatabase r4 = r1.database     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9b
            java.lang.String r5 = "UPDATE messages_v2 SET replies_data = ? WHERE mid = ? AND uid = ?"
            org.telegram.SQLite.SQLitePreparedStatement r4 = r4.executeFast(r5)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9b
            org.telegram.SQLite.SQLiteDatabase r5 = r1.database     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            java.util.Locale r6 = java.util.Locale.ENGLISH     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            java.lang.String r7 = "SELECT replies_data FROM messages_v2 WHERE mid = %d AND uid = %d"
            r8 = 2
            java.lang.Object[] r9 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            java.lang.Integer r10 = java.lang.Integer.valueOf(r16)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r11 = 0
            r9[r11] = r10     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r12 = r17
            long r12 = -r12
            java.lang.Long r10 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r14 = 1
            r9[r14] = r10     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            java.lang.String r6 = java.lang.String.format(r6, r7, r9)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            java.lang.Object[] r7 = new java.lang.Object[r11]     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            org.telegram.SQLite.SQLiteCursor r5 = r5.queryFinalized(r6, r7)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            boolean r6 = r5.next()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 == 0) goto L4a
            org.telegram.tgnet.NativeByteBuffer r6 = r5.byteBufferValue(r11)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 == 0) goto L4a
            int r7 = r6.readInt32(r11)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            org.telegram.tgnet.TLRPC$MessageReplies r7 = org.telegram.tgnet.TLRPC$MessageReplies.TLdeserialize(r6, r7, r11)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r6.reuse()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            goto L4b
        L4a:
            r7 = r3
        L4b:
            r5.dispose()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r7 == 0) goto L88
            int r5 = r7.replies     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            int r5 = r5 + r19
            r7.replies = r5     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            if (r5 >= 0) goto L5a
            r7.replies = r11     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
        L5a:
            if (r0 == 0) goto L63
            r7.recent_repliers = r0     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            int r0 = r7.flags     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r0 = r0 | r8
            r7.flags = r0     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
        L63:
            if (r2 == 0) goto L67
            r7.max_id = r2     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
        L67:
            r4.requery()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            org.telegram.tgnet.NativeByteBuffer r0 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            int r2 = r7.getObjectSize()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r7.serializeToStream(r0)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r4.bindByteBuffer(r14, r0)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r2 = r16
            r4.bindInteger(r8, r2)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r2 = 3
            r4.bindLong(r2, r12)     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r4.step()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            r0.reuse()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
        L88:
            r4.dispose()     // Catch: java.lang.Throwable -> L90 java.lang.Exception -> L94
            goto Laa
        L8c:
            r0 = move-exception
            goto L92
        L8e:
            r0 = move-exception
            goto L96
        L90:
            r0 = move-exception
            r5 = r3
        L92:
            r3 = r4
            goto Lac
        L94:
            r0 = move-exception
            r5 = r3
        L96:
            r3 = r4
            goto L9d
        L98:
            r0 = move-exception
            r5 = r3
            goto Lac
        L9b:
            r0 = move-exception
            r5 = r3
        L9d:
            r15.checkSQLException(r0)     // Catch: java.lang.Throwable -> Lab
            if (r3 == 0) goto La5
            r3.dispose()
        La5:
            if (r5 == 0) goto Laa
            r5.dispose()
        Laa:
            return
        Lab:
            r0 = move-exception
        Lac:
            if (r3 == 0) goto Lb1
            r3.dispose()
        Lb1:
            if (r5 == 0) goto Lb6
            r5.dispose()
        Lb6:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateRepliesCount$174(int, long, int, java.util.ArrayList, int):void");
    }

    private boolean isValidKeyboardToSave(TLRPC$Message tLRPC$Message) {
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup = tLRPC$Message.reply_markup;
        return (tLRPC$ReplyMarkup == null || (tLRPC$ReplyMarkup instanceof TLRPC$TL_replyInlineMarkup) || (tLRPC$ReplyMarkup.selective && !tLRPC$Message.mentioned)) ? false : true;
    }

    public void updateMessageVerifyFlags(final ArrayList<TLRPC$Message> arrayList) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda149
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateMessageVerifyFlags$175(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageVerifyFlags$175(ArrayList arrayList) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        boolean z = false;
        try {
            try {
                this.database.beginTransaction();
                try {
                    SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE messages_v2 SET imp = ? WHERE mid = ? AND uid = ?");
                    try {
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            TLRPC$Message tLRPC$Message = (TLRPC$Message) arrayList.get(i);
                            executeFast.requery();
                            int i2 = tLRPC$Message.stickerVerified;
                            executeFast.bindInteger(1, i2 == 0 ? 1 : i2 == 2 ? 2 : 0);
                            executeFast.bindInteger(2, tLRPC$Message.f1626id);
                            executeFast.bindLong(3, MessageObject.getDialogId(tLRPC$Message));
                            executeFast.step();
                        }
                        executeFast.dispose();
                        this.database.commitTransaction();
                    } catch (Exception e) {
                        e = e;
                        z = true;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        if (z && (sQLiteDatabase2 = this.database) != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        sQLitePreparedStatement = executeFast;
                        if (z && (sQLiteDatabase = this.database) != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    z = true;
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(18:506|(1:508)(1:897)|509|(15:(3:888|889|(27:893|513|(2:(1:518)|519)|520|(2:(1:523)|524)|(4:526|(2:528|(4:530|(1:532)|(1:537)|(3:539|(2:541|(3:543|(1:545)|(1:550)))(1:883)|882)(1:884)))(1:886)|885|(0)(0))(1:887)|551|(5:554|(1:556)(1:682)|(32:(1:565)(1:681)|566|567|(3:569|570|571)(1:671)|572|573|(3:575|576|(25:578|579|580|(2:582|583)(2:667|668)|584|(1:586)(2:665|666)|587|(1:589)(2:661|(1:663)(1:664))|590|(1:592)(1:660)|593|(1:595)(2:658|659)|596|(4:598|599|(1:601)(1:655)|602)(2:656|657)|603|604|605|(3:607|608|609)(2:648|649)|(3:611|612|(3:614|615|616)(1:641))(1:642)|617|(1:619)(1:629)|620|(1:622)|(1:624)|(2:626|627)(1:628)))(1:670)|669|579|580|(0)(0)|584|(0)(0)|587|(0)(0)|590|(0)(0)|593|(0)(0)|596|(0)(0)|603|604|605|(0)(0)|(0)(0)|617|(0)(0)|620|(0)|(0)|(0)(0))(2:559|560)|561|552)|683|684|685|686|687|(5:862|863|864|865|866)(1:689)|690|691|(4:693|694|695|(3:(1:698)(1:701)|699|700))(1:854)|702|(1:846)(3:(2:707|708)(1:845)|709|710)|712|713|(4:(2:716|717)(1:814)|718|719|720)(3:815|(5:819|820|821|822|823)(1:817)|818)|721|722|(5:724|725|(2:794|795)|727|(2:731|(3:737|(2:739|740)(5:766|(4:771|(1:(1:779)(1:(1:789)(4:783|(1:785)(1:788)|786|787)))|790|791)|792|793|787)|(10:742|(1:744)|745|746|747|748|(1:750)(1:754)|751|752|753))))|802|803))(1:511)|690|691|(0)(0)|702|(1:704)|846|712|713|(0)(0)|721|722|(0)|802|803)|512|513|(3:515|(0)|519)|520|(0)|(0)(0)|551|(1:552)|683|684|685|686|687|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0b26, code lost:
        if (r5.f1626id <= r8) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0b58, code lost:
        if (r5.f1626id <= r2) goto L547;
     */
    /* JADX WARN: Code restructure failed: missing block: B:659:0x0ee3, code lost:
        if (r5.post != false) goto L727;
     */
    /* JADX WARN: Code restructure failed: missing block: B:741:0x10c1, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:745:0x10ce, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:1052:0x1899  */
    /* JADX WARN: Removed duplicated region for block: B:1054:0x189e  */
    /* JADX WARN: Removed duplicated region for block: B:1056:0x18a3  */
    /* JADX WARN: Removed duplicated region for block: B:1179:0x1b0c  */
    /* JADX WARN: Removed duplicated region for block: B:1183:0x1b15  */
    /* JADX WARN: Removed duplicated region for block: B:1185:0x1b1a  */
    /* JADX WARN: Removed duplicated region for block: B:1187:0x1b1f  */
    /* JADX WARN: Removed duplicated region for block: B:1189:0x1b24  */
    /* JADX WARN: Removed duplicated region for block: B:1191:0x1b29  */
    /* JADX WARN: Removed duplicated region for block: B:1193:0x1b2e  */
    /* JADX WARN: Removed duplicated region for block: B:1195:0x1b33  */
    /* JADX WARN: Removed duplicated region for block: B:1197:0x1b38  */
    /* JADX WARN: Removed duplicated region for block: B:1199:0x1b3d  */
    /* JADX WARN: Removed duplicated region for block: B:1201:0x1b42  */
    /* JADX WARN: Removed duplicated region for block: B:1206:0x1b4a  */
    /* JADX WARN: Removed duplicated region for block: B:1210:0x1b53  */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x1b58  */
    /* JADX WARN: Removed duplicated region for block: B:1214:0x1b5d  */
    /* JADX WARN: Removed duplicated region for block: B:1216:0x1b62  */
    /* JADX WARN: Removed duplicated region for block: B:1218:0x1b67  */
    /* JADX WARN: Removed duplicated region for block: B:1220:0x1b6c  */
    /* JADX WARN: Removed duplicated region for block: B:1222:0x1b71  */
    /* JADX WARN: Removed duplicated region for block: B:1224:0x1b76  */
    /* JADX WARN: Removed duplicated region for block: B:1226:0x1b7b  */
    /* JADX WARN: Removed duplicated region for block: B:1228:0x1b80  */
    /* JADX WARN: Removed duplicated region for block: B:1308:0x0d4b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1400:0x0d06 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1420:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1422:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03b2 A[Catch: all -> 0x057b, Exception -> 0x0589, TryCatch #83 {Exception -> 0x0589, all -> 0x057b, blocks: (B:94:0x0261, B:96:0x027e, B:98:0x0282, B:100:0x028f, B:102:0x02a0, B:104:0x02a9, B:106:0x02d3, B:107:0x02db, B:109:0x02e9, B:111:0x02ef, B:113:0x02f5, B:116:0x02fb, B:118:0x02ff, B:120:0x0305, B:123:0x030f, B:125:0x0318, B:127:0x033a, B:129:0x0340, B:130:0x0348, B:146:0x03b2, B:152:0x03c9, B:154:0x03f5, B:156:0x03fb, B:158:0x040b, B:160:0x040f, B:162:0x0413, B:164:0x0417, B:166:0x0421, B:167:0x0426, B:169:0x0436, B:171:0x043a, B:173:0x0444, B:174:0x0449, B:178:0x046a, B:181:0x0472, B:183:0x048e, B:185:0x0498, B:187:0x04a9, B:189:0x04af, B:190:0x04b2, B:192:0x04bf, B:194:0x04cc, B:196:0x04dd, B:197:0x04e7, B:199:0x04f0, B:201:0x0500, B:202:0x0508, B:204:0x050e, B:205:0x0511, B:207:0x051e, B:208:0x0526, B:212:0x0542, B:214:0x0548, B:216:0x0559, B:218:0x055f, B:149:0x03c2, B:135:0x0372, B:137:0x037c, B:138:0x0386, B:140:0x038e, B:141:0x0391, B:143:0x039f, B:144:0x03a9, B:231:0x05a9, B:232:0x05b1, B:234:0x05b7, B:236:0x05cd, B:238:0x05d6, B:239:0x0631, B:241:0x0637, B:243:0x0646, B:246:0x0652, B:248:0x065a, B:250:0x0662, B:252:0x066d, B:254:0x0672, B:256:0x0677, B:257:0x067c, B:259:0x0683, B:261:0x069b, B:265:0x06b6, B:267:0x06bd, B:269:0x06c4, B:271:0x06cc, B:276:0x06e4, B:272:0x06d8, B:262:0x06a9, B:284:0x073c, B:285:0x077e, B:287:0x0784, B:289:0x079e, B:292:0x07ab, B:293:0x07b0, B:295:0x07bb, B:298:0x07c8, B:300:0x07cf, B:302:0x07e0, B:304:0x07fc, B:310:0x0816, B:312:0x0821, B:314:0x0828, B:316:0x0830, B:324:0x084f, B:317:0x083a, B:321:0x0847, B:305:0x0805, B:309:0x0811, B:330:0x0870, B:332:0x0877, B:333:0x08bd, B:335:0x08c3, B:337:0x08cd, B:339:0x08d2, B:341:0x08d7, B:344:0x08e4, B:346:0x08ee, B:349:0x08f8, B:356:0x091b, B:357:0x0923, B:359:0x0929, B:360:0x096e, B:362:0x0974, B:363:0x0981, B:367:0x09d1, B:369:0x09d7, B:370:0x09e7, B:372:0x09ed, B:374:0x09f7, B:375:0x09fc, B:376:0x0a02), top: B:1315:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0830 A[Catch: all -> 0x057b, Exception -> 0x0589, TryCatch #83 {Exception -> 0x0589, all -> 0x057b, blocks: (B:94:0x0261, B:96:0x027e, B:98:0x0282, B:100:0x028f, B:102:0x02a0, B:104:0x02a9, B:106:0x02d3, B:107:0x02db, B:109:0x02e9, B:111:0x02ef, B:113:0x02f5, B:116:0x02fb, B:118:0x02ff, B:120:0x0305, B:123:0x030f, B:125:0x0318, B:127:0x033a, B:129:0x0340, B:130:0x0348, B:146:0x03b2, B:152:0x03c9, B:154:0x03f5, B:156:0x03fb, B:158:0x040b, B:160:0x040f, B:162:0x0413, B:164:0x0417, B:166:0x0421, B:167:0x0426, B:169:0x0436, B:171:0x043a, B:173:0x0444, B:174:0x0449, B:178:0x046a, B:181:0x0472, B:183:0x048e, B:185:0x0498, B:187:0x04a9, B:189:0x04af, B:190:0x04b2, B:192:0x04bf, B:194:0x04cc, B:196:0x04dd, B:197:0x04e7, B:199:0x04f0, B:201:0x0500, B:202:0x0508, B:204:0x050e, B:205:0x0511, B:207:0x051e, B:208:0x0526, B:212:0x0542, B:214:0x0548, B:216:0x0559, B:218:0x055f, B:149:0x03c2, B:135:0x0372, B:137:0x037c, B:138:0x0386, B:140:0x038e, B:141:0x0391, B:143:0x039f, B:144:0x03a9, B:231:0x05a9, B:232:0x05b1, B:234:0x05b7, B:236:0x05cd, B:238:0x05d6, B:239:0x0631, B:241:0x0637, B:243:0x0646, B:246:0x0652, B:248:0x065a, B:250:0x0662, B:252:0x066d, B:254:0x0672, B:256:0x0677, B:257:0x067c, B:259:0x0683, B:261:0x069b, B:265:0x06b6, B:267:0x06bd, B:269:0x06c4, B:271:0x06cc, B:276:0x06e4, B:272:0x06d8, B:262:0x06a9, B:284:0x073c, B:285:0x077e, B:287:0x0784, B:289:0x079e, B:292:0x07ab, B:293:0x07b0, B:295:0x07bb, B:298:0x07c8, B:300:0x07cf, B:302:0x07e0, B:304:0x07fc, B:310:0x0816, B:312:0x0821, B:314:0x0828, B:316:0x0830, B:324:0x084f, B:317:0x083a, B:321:0x0847, B:305:0x0805, B:309:0x0811, B:330:0x0870, B:332:0x0877, B:333:0x08bd, B:335:0x08c3, B:337:0x08cd, B:339:0x08d2, B:341:0x08d7, B:344:0x08e4, B:346:0x08ee, B:349:0x08f8, B:356:0x091b, B:357:0x0923, B:359:0x0929, B:360:0x096e, B:362:0x0974, B:363:0x0981, B:367:0x09d1, B:369:0x09d7, B:370:0x09e7, B:372:0x09ed, B:374:0x09f7, B:375:0x09fc, B:376:0x0a02), top: B:1315:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x083a A[Catch: all -> 0x057b, Exception -> 0x0589, TryCatch #83 {Exception -> 0x0589, all -> 0x057b, blocks: (B:94:0x0261, B:96:0x027e, B:98:0x0282, B:100:0x028f, B:102:0x02a0, B:104:0x02a9, B:106:0x02d3, B:107:0x02db, B:109:0x02e9, B:111:0x02ef, B:113:0x02f5, B:116:0x02fb, B:118:0x02ff, B:120:0x0305, B:123:0x030f, B:125:0x0318, B:127:0x033a, B:129:0x0340, B:130:0x0348, B:146:0x03b2, B:152:0x03c9, B:154:0x03f5, B:156:0x03fb, B:158:0x040b, B:160:0x040f, B:162:0x0413, B:164:0x0417, B:166:0x0421, B:167:0x0426, B:169:0x0436, B:171:0x043a, B:173:0x0444, B:174:0x0449, B:178:0x046a, B:181:0x0472, B:183:0x048e, B:185:0x0498, B:187:0x04a9, B:189:0x04af, B:190:0x04b2, B:192:0x04bf, B:194:0x04cc, B:196:0x04dd, B:197:0x04e7, B:199:0x04f0, B:201:0x0500, B:202:0x0508, B:204:0x050e, B:205:0x0511, B:207:0x051e, B:208:0x0526, B:212:0x0542, B:214:0x0548, B:216:0x0559, B:218:0x055f, B:149:0x03c2, B:135:0x0372, B:137:0x037c, B:138:0x0386, B:140:0x038e, B:141:0x0391, B:143:0x039f, B:144:0x03a9, B:231:0x05a9, B:232:0x05b1, B:234:0x05b7, B:236:0x05cd, B:238:0x05d6, B:239:0x0631, B:241:0x0637, B:243:0x0646, B:246:0x0652, B:248:0x065a, B:250:0x0662, B:252:0x066d, B:254:0x0672, B:256:0x0677, B:257:0x067c, B:259:0x0683, B:261:0x069b, B:265:0x06b6, B:267:0x06bd, B:269:0x06c4, B:271:0x06cc, B:276:0x06e4, B:272:0x06d8, B:262:0x06a9, B:284:0x073c, B:285:0x077e, B:287:0x0784, B:289:0x079e, B:292:0x07ab, B:293:0x07b0, B:295:0x07bb, B:298:0x07c8, B:300:0x07cf, B:302:0x07e0, B:304:0x07fc, B:310:0x0816, B:312:0x0821, B:314:0x0828, B:316:0x0830, B:324:0x084f, B:317:0x083a, B:321:0x0847, B:305:0x0805, B:309:0x0811, B:330:0x0870, B:332:0x0877, B:333:0x08bd, B:335:0x08c3, B:337:0x08cd, B:339:0x08d2, B:341:0x08d7, B:344:0x08e4, B:346:0x08ee, B:349:0x08f8, B:356:0x091b, B:357:0x0923, B:359:0x0929, B:360:0x096e, B:362:0x0974, B:363:0x0981, B:367:0x09d1, B:369:0x09d7, B:370:0x09e7, B:372:0x09ed, B:374:0x09f7, B:375:0x09fc, B:376:0x0a02), top: B:1315:0x0261 }] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x084e  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0af0 A[Catch: all -> 0x0acf, Exception -> 0x0ad8, TryCatch #76 {Exception -> 0x0ad8, all -> 0x0acf, blocks: (B:392:0x0ac1, B:394:0x0ac9, B:409:0x0ae8, B:412:0x0af0, B:413:0x0af6, B:417:0x0b01, B:418:0x0b06, B:420:0x0b0b, B:422:0x0b18, B:424:0x0b20, B:426:0x0b24, B:429:0x0b2a, B:435:0x0b38, B:437:0x0b48, B:439:0x0b52, B:441:0x0b56, B:444:0x0b5c, B:471:0x0bc8, B:478:0x0bf6, B:488:0x0c12, B:494:0x0c25, B:511:0x0c6d, B:518:0x0c91, B:522:0x0c98, B:521:0x0c96, B:448:0x0b65, B:433:0x0b31), top: B:1329:0x0ac1 }] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0aff  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0b0b A[Catch: all -> 0x0acf, Exception -> 0x0ad8, TryCatch #76 {Exception -> 0x0ad8, all -> 0x0acf, blocks: (B:392:0x0ac1, B:394:0x0ac9, B:409:0x0ae8, B:412:0x0af0, B:413:0x0af6, B:417:0x0b01, B:418:0x0b06, B:420:0x0b0b, B:422:0x0b18, B:424:0x0b20, B:426:0x0b24, B:429:0x0b2a, B:435:0x0b38, B:437:0x0b48, B:439:0x0b52, B:441:0x0b56, B:444:0x0b5c, B:471:0x0bc8, B:478:0x0bf6, B:488:0x0c12, B:494:0x0c25, B:511:0x0c6d, B:518:0x0c91, B:522:0x0c98, B:521:0x0c96, B:448:0x0b65, B:433:0x0b31), top: B:1329:0x0ac1 }] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0b38 A[Catch: all -> 0x0acf, Exception -> 0x0ad8, TryCatch #76 {Exception -> 0x0ad8, all -> 0x0acf, blocks: (B:392:0x0ac1, B:394:0x0ac9, B:409:0x0ae8, B:412:0x0af0, B:413:0x0af6, B:417:0x0b01, B:418:0x0b06, B:420:0x0b0b, B:422:0x0b18, B:424:0x0b20, B:426:0x0b24, B:429:0x0b2a, B:435:0x0b38, B:437:0x0b48, B:439:0x0b52, B:441:0x0b56, B:444:0x0b5c, B:471:0x0bc8, B:478:0x0bf6, B:488:0x0c12, B:494:0x0c25, B:511:0x0c6d, B:518:0x0c91, B:522:0x0c98, B:521:0x0c96, B:448:0x0b65, B:433:0x0b31), top: B:1329:0x0ac1 }] */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0b69  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0b70  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b7c  */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0c10  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0c18  */
    /* JADX WARN: Removed duplicated region for block: B:494:0x0c25 A[Catch: all -> 0x0acf, Exception -> 0x0ad8, TRY_ENTER, TRY_LEAVE, TryCatch #76 {Exception -> 0x0ad8, all -> 0x0acf, blocks: (B:392:0x0ac1, B:394:0x0ac9, B:409:0x0ae8, B:412:0x0af0, B:413:0x0af6, B:417:0x0b01, B:418:0x0b06, B:420:0x0b0b, B:422:0x0b18, B:424:0x0b20, B:426:0x0b24, B:429:0x0b2a, B:435:0x0b38, B:437:0x0b48, B:439:0x0b52, B:441:0x0b56, B:444:0x0b5c, B:471:0x0bc8, B:478:0x0bf6, B:488:0x0c12, B:494:0x0c25, B:511:0x0c6d, B:518:0x0c91, B:522:0x0c98, B:521:0x0c96, B:448:0x0b65, B:433:0x0b31), top: B:1329:0x0ac1 }] */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0c3b  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0c45  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0c49  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0c5c  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0c5e  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0c6d A[Catch: all -> 0x0acf, Exception -> 0x0ad8, TRY_ENTER, TRY_LEAVE, TryCatch #76 {Exception -> 0x0ad8, all -> 0x0acf, blocks: (B:392:0x0ac1, B:394:0x0ac9, B:409:0x0ae8, B:412:0x0af0, B:413:0x0af6, B:417:0x0b01, B:418:0x0b06, B:420:0x0b0b, B:422:0x0b18, B:424:0x0b20, B:426:0x0b24, B:429:0x0b2a, B:435:0x0b38, B:437:0x0b48, B:439:0x0b52, B:441:0x0b56, B:444:0x0b5c, B:471:0x0bc8, B:478:0x0bf6, B:488:0x0c12, B:494:0x0c25, B:511:0x0c6d, B:518:0x0c91, B:522:0x0c98, B:521:0x0c96, B:448:0x0b65, B:433:0x0b31), top: B:1329:0x0ac1 }] */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0c83  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0c8d  */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0c9c  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0cb7  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0cc3  */
    /* JADX WARN: Removed duplicated region for block: B:539:0x0cca A[Catch: all -> 0x0d1f, Exception -> 0x0d23, TRY_LEAVE, TryCatch #64 {Exception -> 0x0d23, all -> 0x0d1f, blocks: (B:527:0x0caa, B:539:0x0cca, B:537:0x0cc5), top: B:1353:0x0caa }] */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0ce5  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0cea A[Catch: all -> 0x0d19, Exception -> 0x0d1c, TryCatch #68 {Exception -> 0x0d1c, all -> 0x0d19, blocks: (B:543:0x0cd5, B:546:0x0ce6, B:548:0x0cea, B:550:0x0cf4, B:552:0x0cf9, B:554:0x0cfe, B:556:0x0d03, B:549:0x0cf0, B:544:0x0cdd), top: B:1345:0x0cd5 }] */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0cf0 A[Catch: all -> 0x0d19, Exception -> 0x0d1c, TryCatch #68 {Exception -> 0x0d1c, all -> 0x0d19, blocks: (B:543:0x0cd5, B:546:0x0ce6, B:548:0x0cea, B:550:0x0cf4, B:552:0x0cf9, B:554:0x0cfe, B:556:0x0d03, B:549:0x0cf0, B:544:0x0cdd), top: B:1345:0x0cd5 }] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0cf9 A[Catch: all -> 0x0d19, Exception -> 0x0d1c, TryCatch #68 {Exception -> 0x0d1c, all -> 0x0d19, blocks: (B:543:0x0cd5, B:546:0x0ce6, B:548:0x0cea, B:550:0x0cf4, B:552:0x0cf9, B:554:0x0cfe, B:556:0x0d03, B:549:0x0cf0, B:544:0x0cdd), top: B:1345:0x0cd5 }] */
    /* JADX WARN: Removed duplicated region for block: B:554:0x0cfe A[Catch: all -> 0x0d19, Exception -> 0x0d1c, TryCatch #68 {Exception -> 0x0d1c, all -> 0x0d19, blocks: (B:543:0x0cd5, B:546:0x0ce6, B:548:0x0cea, B:550:0x0cf4, B:552:0x0cf9, B:554:0x0cfe, B:556:0x0d03, B:549:0x0cf0, B:544:0x0cdd), top: B:1345:0x0cd5 }] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0d03 A[Catch: all -> 0x0d19, Exception -> 0x0d1c, TRY_LEAVE, TryCatch #68 {Exception -> 0x0d1c, all -> 0x0d19, blocks: (B:543:0x0cd5, B:546:0x0ce6, B:548:0x0cea, B:550:0x0cf4, B:552:0x0cf9, B:554:0x0cfe, B:556:0x0d03, B:549:0x0cf0, B:544:0x0cdd), top: B:1345:0x0cd5 }] */
    /* JADX WARN: Removed duplicated region for block: B:594:0x0d84  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0d8c A[Catch: all -> 0x0d64, Exception -> 0x0d69, TRY_ENTER, TRY_LEAVE, TryCatch #90 {Exception -> 0x0d69, all -> 0x0d64, blocks: (B:578:0x0d53, B:597:0x0d8c, B:601:0x0dbb, B:603:0x0dc6, B:612:0x0e14, B:615:0x0e1a), top: B:1302:0x0d53 }] */
    /* JADX WARN: Removed duplicated region for block: B:609:0x0e0f  */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0e60  */
    /* JADX WARN: Removed duplicated region for block: B:637:0x0e99 A[Catch: all -> 0x10a1, Exception -> 0x10a9, TRY_ENTER, TRY_LEAVE, TryCatch #88 {Exception -> 0x10a9, all -> 0x10a1, blocks: (B:625:0x0e5a, B:637:0x0e99), top: B:1306:0x0e5a }] */
    /* JADX WARN: Removed duplicated region for block: B:655:0x0ed7 A[Catch: all -> 0x108f, Exception -> 0x1098, TRY_LEAVE, TryCatch #73 {Exception -> 0x1098, all -> 0x108f, blocks: (B:653:0x0ed2, B:655:0x0ed7, B:665:0x0eec, B:667:0x0efa, B:669:0x0f05, B:675:0x0f13, B:708:0x0fc9, B:711:0x0fd7, B:679:0x0f36, B:705:0x0fb7), top: B:1335:0x0ed2 }] */
    /* JADX WARN: Removed duplicated region for block: B:856:0x1301 A[Catch: all -> 0x13e3, Exception -> 0x13e5, TryCatch #109 {Exception -> 0x13e5, all -> 0x13e3, blocks: (B:828:0x12a0, B:836:0x12c2, B:838:0x12c8, B:842:0x12cf, B:846:0x12d9, B:850:0x12e5, B:854:0x12f6, B:856:0x1301, B:860:0x130a, B:862:0x130f, B:864:0x131e, B:866:0x1324, B:868:0x1333, B:867:0x132d, B:869:0x1344, B:873:0x1353, B:875:0x135c, B:879:0x1388, B:881:0x13ae, B:883:0x13b4, B:885:0x13bd, B:884:0x13ba, B:834:0x12bb, B:831:0x12b2), top: B:1264:0x12a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:869:0x1344 A[Catch: all -> 0x13e3, Exception -> 0x13e5, TryCatch #109 {Exception -> 0x13e5, all -> 0x13e3, blocks: (B:828:0x12a0, B:836:0x12c2, B:838:0x12c8, B:842:0x12cf, B:846:0x12d9, B:850:0x12e5, B:854:0x12f6, B:856:0x1301, B:860:0x130a, B:862:0x130f, B:864:0x131e, B:866:0x1324, B:868:0x1333, B:867:0x132d, B:869:0x1344, B:873:0x1353, B:875:0x135c, B:879:0x1388, B:881:0x13ae, B:883:0x13b4, B:885:0x13bd, B:884:0x13ba, B:834:0x12bb, B:831:0x12b2), top: B:1264:0x12a0 }] */
    /* renamed from: putMessagesInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$putMessages$179(java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r52, boolean r53, boolean r54, int r55, boolean r56, boolean r57, int r58) {
        /*
            Method dump skipped, instructions count: 7044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putMessages$179(java.util.ArrayList, boolean, boolean, int, boolean, boolean, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMessagesInternal$176(int i) {
        getDownloadController().newDownloadObjectsAvailable(i);
    }

    private void createOrEditTopic(final long j, TLRPC$Message tLRPC$Message) {
        final TLRPC$TL_forumTopic tLRPC$TL_forumTopic = new TLRPC$TL_forumTopic();
        tLRPC$TL_forumTopic.topicStartMessage = tLRPC$Message;
        tLRPC$TL_forumTopic.top_message = tLRPC$Message.f1626id;
        tLRPC$TL_forumTopic.topMessage = tLRPC$Message;
        tLRPC$TL_forumTopic.from_id = getMessagesController().getPeer(getUserConfig().clientUserId);
        tLRPC$TL_forumTopic.notify_settings = new TLRPC$TL_peerNotifySettings();
        tLRPC$TL_forumTopic.unread_count = 0;
        TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
        if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionTopicCreate) {
            TLRPC$TL_messageActionTopicCreate tLRPC$TL_messageActionTopicCreate = (TLRPC$TL_messageActionTopicCreate) tLRPC$MessageAction;
            tLRPC$TL_forumTopic.f1658id = tLRPC$Message.f1626id;
            long j2 = tLRPC$TL_messageActionTopicCreate.icon_emoji_id;
            tLRPC$TL_forumTopic.icon_emoji_id = j2;
            tLRPC$TL_forumTopic.title = tLRPC$TL_messageActionTopicCreate.title;
            tLRPC$TL_forumTopic.icon_color = tLRPC$TL_messageActionTopicCreate.icon_color;
            if (j2 != 0) {
                tLRPC$TL_forumTopic.flags |= 1;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(tLRPC$TL_forumTopic);
            saveTopics(j, arrayList, false, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda121
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$createOrEditTopic$177(j, tLRPC$TL_forumTopic);
                }
            });
        } else if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionTopicEdit) {
            TLRPC$TL_messageActionTopicEdit tLRPC$TL_messageActionTopicEdit = (TLRPC$TL_messageActionTopicEdit) tLRPC$MessageAction;
            tLRPC$TL_forumTopic.f1658id = MessageObject.getTopicId(tLRPC$Message, true);
            tLRPC$TL_forumTopic.icon_emoji_id = tLRPC$TL_messageActionTopicEdit.icon_emoji_id;
            tLRPC$TL_forumTopic.title = tLRPC$TL_messageActionTopicEdit.title;
            tLRPC$TL_forumTopic.closed = tLRPC$TL_messageActionTopicEdit.closed;
            tLRPC$TL_forumTopic.hidden = tLRPC$TL_messageActionTopicEdit.hidden;
            int i = tLRPC$TL_messageActionTopicEdit.flags;
            int i2 = (i & 1) != 0 ? 1 : 0;
            if ((i & 2) != 0) {
                i2 += 2;
            }
            if ((i & 4) != 0) {
                i2 += 8;
            }
            if ((i & 8) != 0) {
                i2 += 32;
            }
            final int i3 = i2;
            updateTopicData(j, tLRPC$TL_forumTopic, i3);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda122
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$createOrEditTopic$178(j, tLRPC$TL_forumTopic, i3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOrEditTopic$177(long j, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
        getMessagesController().getTopicsController().onTopicCreated(j, tLRPC$TL_forumTopic, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOrEditTopic$178(long j, TLRPC$TL_forumTopic tLRPC$TL_forumTopic, int i) {
        getMessagesController().getTopicsController().updateTopicInUi(j, tLRPC$TL_forumTopic, i);
    }

    public void putMessages(ArrayList<TLRPC$Message> arrayList, boolean z, boolean z2, boolean z3, int i, boolean z4, int i2) {
        putMessages(arrayList, z, z2, z3, i, false, z4, i2);
    }

    public void putMessages(final ArrayList<TLRPC$Message> arrayList, final boolean z, boolean z2, final boolean z3, final int i, final boolean z4, final boolean z5, final int i2) {
        if (arrayList.size() == 0) {
            return;
        }
        if (z2) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda165
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$putMessages$179(arrayList, z, z3, i, z4, z5, i2);
                }
            });
        } else {
            lambda$putMessages$179(arrayList, z, z3, i, z4, z5, i2);
        }
    }

    public void markMessageAsSendError(final TLRPC$Message tLRPC$Message, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda194
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$markMessageAsSendError$180(tLRPC$Message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessageAsSendError$180(TLRPC$Message tLRPC$Message, boolean z) {
        try {
            long j = tLRPC$Message.f1626id;
            if (z) {
                this.database.executeFast(String.format(Locale.US, "UPDATE scheduled_messages_v2 SET send_state = 2 WHERE mid = %d AND uid = %d", Long.valueOf(j), Long.valueOf(MessageObject.getDialogId(tLRPC$Message)))).stepThis().dispose();
            } else {
                SQLiteDatabase sQLiteDatabase = this.database;
                Locale locale = Locale.US;
                sQLiteDatabase.executeFast(String.format(locale, "UPDATE messages_v2 SET send_state = 2 WHERE mid = %d AND uid = %d", Long.valueOf(j), Long.valueOf(MessageObject.getDialogId(tLRPC$Message)))).stepThis().dispose();
                this.database.executeFast(String.format(locale, "UPDATE messages_topics SET send_state = 2 WHERE mid = %d AND uid = %d", Long.valueOf(j), Long.valueOf(MessageObject.getDialogId(tLRPC$Message)))).stepThis().dispose();
            }
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void setMessageSeq(final int i, final int i2, final int i3) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setMessageSeq$181(i, i2, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageSeq$181(int i, int i2, int i3) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("REPLACE INTO messages_seq VALUES(?, ?, ?)");
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindInteger(1, i);
                sQLitePreparedStatement.bindInteger(2, i2);
                sQLitePreparedStatement.bindInteger(3, i3);
                sQLitePreparedStatement.step();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(21:241|242|(1:244)|245|(0)|4|(0)|6|(0)|20|(0)|178|179|(4:180|181|(0)(0)|185)|(0)(0)|162|163|(0)|168|28|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(7:229|230|231|232|(3:234|235|236)(1:248)|237|(1:239))(1:3)|4|(2:202|(18:204|205|206|207|208|209|210|211|20|(13:178|179|180|181|(2:183|184)(1:187)|185|(1:26)(1:177)|162|163|(2:165|166)|168|28|(1:30)(1:(4:70|(18:83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100)(3:72|73|74)|75|76)(10:33|(1:35)(1:65)|36|37|38|(1:40)|42|(1:44)|45|46)))(1:23)|24|(0)(0)|162|163|(0)|168|28|(0)(0)))|6|(6:8|(1:10)(1:19)|11|12|13|14)|20|(0)|178|179|180|181|(0)(0)|185|(0)(0)|162|163|(0)|168|28|(0)(0)|(10:(0)|(1:172)|(1:80)|(1:105)|(1:128)|(0)|(0)|(0)|(0)|(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(2:133|134)|92|93|94|(7:95|96|97|(2:98|99)|100|75|76)) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x019a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x019b, code lost:
        checkSQLException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x019e, code lost:
        if (r8 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0320, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0321, code lost:
        checkSQLException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0324, code lost:
        if (r3 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x038f, code lost:
        if (r5 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x03f6, code lost:
        if (r5 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009c, code lost:
        if (r10 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0158, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0159, code lost:
        r8 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x015d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x015e, code lost:
        r8 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x016c, code lost:
        if (r4 == 1) goto L162;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01a9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0122 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0149 A[Catch: Exception -> 0x0156, all -> 0x0415, TRY_LEAVE, TryCatch #24 {Exception -> 0x0156, blocks: (B:75:0x0143, B:77:0x0149), top: B:253:0x0143 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x018f A[Catch: all -> 0x0197, Exception -> 0x019a, TRY_LEAVE, TryCatch #10 {Exception -> 0x019a, blocks: (B:95:0x0170, B:97:0x018f), top: B:234:0x0170, outer: #32 }] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [org.telegram.SQLite.SQLitePreparedStatement] */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v6, types: [long] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* renamed from: updateMessageStateAndIdInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long[] lambda$updateMessageStateAndId$183(long r20, long r22, java.lang.Integer r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateMessageStateAndId$183(long, long, java.lang.Integer, int, int, int):long[]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMessageStateAndIdInternal$182(TLRPC$TL_updates tLRPC$TL_updates) {
        getMessagesController().processUpdates(tLRPC$TL_updates, false);
    }

    public long[] updateMessageStateAndId(final long j, final long j2, final Integer num, final int i, final int i2, boolean z, final int i3) {
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$updateMessageStateAndId$183(j, j2, num, i, i2, i3);
                }
            });
            return null;
        }
        return lambda$updateMessageStateAndId$183(j, j2, num, i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateUsersInternal */
    public void lambda$updateUsers$184(ArrayList<TLRPC$User> arrayList, boolean z, boolean z2) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                if (z) {
                    if (z2) {
                        this.database.beginTransaction();
                    }
                    SQLitePreparedStatement executeFast = this.database.executeFast("UPDATE users SET status = ? WHERE uid = ?");
                    try {
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            TLRPC$User tLRPC$User = arrayList.get(i);
                            executeFast.requery();
                            TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
                            if (tLRPC$UserStatus != null) {
                                executeFast.bindInteger(1, tLRPC$UserStatus.expires);
                            } else {
                                executeFast.bindInteger(1, 0);
                            }
                            executeFast.bindLong(2, tLRPC$User.f1749id);
                            executeFast.step();
                        }
                        executeFast.dispose();
                        if (z2) {
                            this.database.commitTransaction();
                        }
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = executeFast;
                        checkSQLException(e);
                        SQLiteDatabase sQLiteDatabase = this.database;
                        if (sQLiteDatabase != null) {
                            sQLiteDatabase.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        sQLitePreparedStatement = executeFast;
                        SQLiteDatabase sQLiteDatabase2 = this.database;
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.commitTransaction();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    LongSparseArray longSparseArray = new LongSparseArray();
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        TLRPC$User tLRPC$User2 = arrayList.get(i2);
                        if (sb.length() != 0) {
                            sb.append(",");
                        }
                        sb.append(tLRPC$User2.f1749id);
                        longSparseArray.put(tLRPC$User2.f1749id, tLRPC$User2);
                    }
                    ArrayList<TLRPC$User> arrayList2 = new ArrayList<>();
                    getUsersInternal(sb.toString(), arrayList2);
                    int size3 = arrayList2.size();
                    for (int i3 = 0; i3 < size3; i3++) {
                        TLRPC$User tLRPC$User3 = arrayList2.get(i3);
                        TLRPC$User tLRPC$User4 = (TLRPC$User) longSparseArray.get(tLRPC$User3.f1749id);
                        if (tLRPC$User4 != null) {
                            if (tLRPC$User4.first_name != null && tLRPC$User4.last_name != null) {
                                if (!UserObject.isContact(tLRPC$User3)) {
                                    tLRPC$User3.first_name = tLRPC$User4.first_name;
                                    tLRPC$User3.last_name = tLRPC$User4.last_name;
                                }
                                tLRPC$User3.username = tLRPC$User4.username;
                            } else {
                                TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = tLRPC$User4.photo;
                                if (tLRPC$UserProfilePhoto != null) {
                                    tLRPC$User3.photo = tLRPC$UserProfilePhoto;
                                } else {
                                    String str = tLRPC$User4.phone;
                                    if (str != null) {
                                        tLRPC$User3.phone = str;
                                    }
                                }
                            }
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        if (z2) {
                            this.database.beginTransaction();
                        }
                        putUsersInternal(arrayList2);
                        if (z2) {
                            this.database.commitTransaction();
                        }
                    }
                }
                SQLiteDatabase sQLiteDatabase3 = this.database;
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.commitTransaction();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateUsers(final ArrayList<TLRPC$User> arrayList, final boolean z, final boolean z2, boolean z3) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z3) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda164
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$updateUsers$184(arrayList, z, z2);
                }
            });
        } else {
            lambda$updateUsers$184(arrayList, z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* renamed from: markMessagesAsReadInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$markMessagesAsRead$186(org.telegram.messenger.support.LongSparseIntArray r18, org.telegram.messenger.support.LongSparseIntArray r19, android.util.SparseIntArray r20) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$markMessagesAsRead$186(org.telegram.messenger.support.LongSparseIntArray, org.telegram.messenger.support.LongSparseIntArray, android.util.SparseIntArray):void");
    }

    private void markMessagesContentAsReadInternal(long j, ArrayList<Integer> arrayList, int i) {
        SQLiteCursor sQLiteCursor = null;
        ArrayList<Integer> arrayList2 = null;
        sQLiteCursor = null;
        try {
            try {
                String join = TextUtils.join(",", arrayList);
                SQLiteDatabase sQLiteDatabase = this.database;
                Locale locale = Locale.US;
                sQLiteDatabase.executeFast(String.format(locale, "UPDATE messages_v2 SET read_state = read_state | 2 WHERE mid IN (%s) AND uid = %d", join, Long.valueOf(j))).stepThis().dispose();
                if (i != 0) {
                    SQLiteCursor queryFinalized = this.database.queryFinalized(String.format(locale, "SELECT mid, ttl FROM messages_v2 WHERE mid IN (%s) AND uid = %d AND ttl > 0", join, Long.valueOf(j)), new Object[0]);
                    while (queryFinalized.next()) {
                        try {
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList<>();
                            }
                            arrayList2.add(Integer.valueOf(queryFinalized.intValue(0)));
                        } catch (Exception e) {
                            e = e;
                            sQLiteCursor = queryFinalized;
                            checkSQLException(e);
                            if (sQLiteCursor != null) {
                                sQLiteCursor.dispose();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteCursor = queryFinalized;
                            if (sQLiteCursor != null) {
                                sQLiteCursor.dispose();
                            }
                            throw th;
                        }
                    }
                    if (arrayList2 != null) {
                        emptyMessagesMedia(j, arrayList2);
                    }
                    queryFinalized.dispose();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void markMessagesContentAsRead(final long j, final ArrayList<Integer> arrayList, final int i, final int i2) {
        if (isEmpty(arrayList)) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$markMessagesContentAsRead$185(j, arrayList, i2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$markMessagesContentAsRead$185(long r9, java.util.ArrayList r11, int r12, int r13) {
        /*
            r8 = this;
            r0 = 0
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 != 0) goto Ld6
            r9 = 0
            androidx.collection.LongSparseArray r10 = new androidx.collection.LongSparseArray     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r10.<init>()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r0.<init>()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            org.telegram.SQLite.SQLiteDatabase r1 = r8.database     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.String r3 = "SELECT uid, mid, ttl FROM messages_v2 WHERE mid IN (%s) AND is_channel = 0"
            r4 = 1
            java.lang.Object[] r5 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.String r6 = ","
            java.lang.String r11 = android.text.TextUtils.join(r6, r11)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r6 = 0
            r5[r6] = r11     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.String r11 = java.lang.String.format(r2, r3, r5)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.Object[] r2 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            org.telegram.SQLite.SQLiteCursor r11 = r1.queryFinalized(r11, r2)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
        L2d:
            boolean r1 = r11.next()     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            if (r1 == 0) goto L8d
            long r1 = r11.longValue(r6)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            int r3 = r11.intValue(r4)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r5 = 2
            int r5 = r11.intValue(r5)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            if (r5 <= 0) goto L75
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r5 == r7) goto L75
            if (r12 == 0) goto L75
            int r5 = r5 + r12
            if (r5 >= r13) goto L4d
            goto L75
        L4d:
            java.lang.Object r7 = r0.get(r1)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            android.util.SparseArray r7 = (android.util.SparseArray) r7     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            if (r7 != 0) goto L5d
            android.util.SparseArray r7 = new android.util.SparseArray     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r7.<init>()     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r0.put(r1, r7)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
        L5d:
            java.lang.Object r1 = r7.get(r5)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            java.util.ArrayList r1 = (java.util.ArrayList) r1     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            if (r1 != 0) goto L6d
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r1.<init>()     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r7.put(r5, r1)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
        L6d:
            java.lang.Integer r2 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r1.add(r2)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            goto L2d
        L75:
            java.lang.Object r5 = r10.get(r1)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            java.util.ArrayList r5 = (java.util.ArrayList) r5     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            if (r5 != 0) goto L85
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r5.<init>()     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r10.put(r1, r5)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
        L85:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            r5.add(r1)     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            goto L2d
        L8d:
            r11.dispose()     // Catch: java.lang.Exception -> Lbd java.lang.Throwable -> Lcf
            int r11 = r10.size()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r12 = r6
        L95:
            if (r12 >= r11) goto La7
            long r1 = r10.keyAt(r12)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.Object r3 = r10.valueAt(r12)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.util.ArrayList r3 = (java.util.ArrayList) r3     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r8.markMessagesContentAsReadInternal(r1, r3, r13)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            int r12 = r12 + 1
            goto L95
        La7:
            int r10 = r0.size()     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
        Lab:
            if (r6 >= r10) goto Ld9
            long r11 = r0.keyAt(r6)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            java.lang.Object r13 = r0.valueAt(r6)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            android.util.SparseArray r13 = (android.util.SparseArray) r13     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            r8.createTaskForSecretMedia(r11, r13)     // Catch: java.lang.Throwable -> Lbf java.lang.Exception -> Lc3
            int r6 = r6 + 1
            goto Lab
        Lbd:
            r9 = move-exception
            goto Lc6
        Lbf:
            r10 = move-exception
            r11 = r9
            r9 = r10
            goto Ld0
        Lc3:
            r10 = move-exception
            r11 = r9
            r9 = r10
        Lc6:
            r8.checkSQLException(r9)     // Catch: java.lang.Throwable -> Lcf
            if (r11 == 0) goto Ld9
            r11.dispose()
            goto Ld9
        Lcf:
            r9 = move-exception
        Ld0:
            if (r11 == 0) goto Ld5
            r11.dispose()
        Ld5:
            throw r9
        Ld6:
            r8.markMessagesContentAsReadInternal(r9, r11, r13)
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$markMessagesContentAsRead$185(long, java.util.ArrayList, int, int):void");
    }

    public void markMessagesAsRead(final LongSparseIntArray longSparseIntArray, final LongSparseIntArray longSparseIntArray2, final SparseIntArray sparseIntArray, boolean z) {
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda175
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$markMessagesAsRead$186(longSparseIntArray, longSparseIntArray2, sparseIntArray);
                }
            });
        } else {
            lambda$markMessagesAsRead$186(longSparseIntArray, longSparseIntArray2, sparseIntArray);
        }
    }

    public void markMessagesAsDeletedByRandoms(final ArrayList<Long> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda146
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$markMessagesAsDeletedByRandoms$188(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessagesAsDeletedByRandoms$188(ArrayList arrayList) {
        SQLiteCursor queryFinalized;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT mid, uid FROM randoms_v2 WHERE random_id IN(%s)", TextUtils.join(",", arrayList)), new Object[0]);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            LongSparseArray longSparseArray = new LongSparseArray();
            while (queryFinalized.next()) {
                long longValue = queryFinalized.longValue(1);
                ArrayList arrayList2 = (ArrayList) longSparseArray.get(longValue);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    longSparseArray.put(longValue, arrayList2);
                }
                arrayList2.add(Integer.valueOf(queryFinalized.intValue(0)));
            }
            queryFinalized.dispose();
            if (longSparseArray.isEmpty()) {
                return;
            }
            int size = longSparseArray.size();
            for (int i = 0; i < size; i++) {
                long keyAt = longSparseArray.keyAt(i);
                final ArrayList<Integer> arrayList3 = (ArrayList) longSparseArray.valueAt(i);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda143
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$markMessagesAsDeletedByRandoms$187(arrayList3);
                    }
                });
                updateDialogsWithReadMessagesInternal(arrayList3, null, null, null, null);
                lambda$markMessagesAsDeleted$192(keyAt, arrayList3, true, false, arrayList);
                lambda$updateDialogsWithDeletedMessages$191(keyAt, 0L, arrayList3, null);
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessagesAsDeletedByRandoms$187(ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagesDeleted, arrayList, 0L, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void deletePushMessages(long j, ArrayList<Integer> arrayList) {
        try {
            this.database.executeFast(String.format(Locale.US, "DELETE FROM unread_push_messages WHERE uid = %d AND mid IN(%s)", Long.valueOf(j), TextUtils.join(",", arrayList))).stepThis().dispose();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    private void broadcastScheduledMessagesChange(final Long l) {
        SQLiteCursor queryFinalized;
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                queryFinalized = this.database.queryFinalized(String.format(Locale.US, "SELECT COUNT(mid) FROM scheduled_messages_v2 WHERE uid = %d", l), new Object[0]);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            final int intValue = queryFinalized.next() ? queryFinalized.intValue(0) : 0;
            queryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda137
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$broadcastScheduledMessagesChange$189(l, intValue);
                }
            });
        } catch (Exception e2) {
            e = e2;
            sQLiteCursor = queryFinalized;
            checkSQLException(e);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLiteCursor = queryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcastScheduledMessagesChange$189(Long l, int i) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.scheduledMessagesUpdated, l, Integer.valueOf(i), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(11:(8:71|72|73|75|76|(2:571|572)|78|79)|74|(3:81|82|(15:84|(8:86|87|88|89|90|91|92|93)(1:569)|94|(2:96|97)|(2:561|562)|101|102|(4:108|109|110|(13:112|113|114|115|116|117|118|107|66|67|68|69|(29:584|124|(6:126|127|(9:131|132|133|134|(11:136|137|138|139|140|141|142|143|144|(2:(1:147)|148)|149)(1:538)|(8:154|155|156|157|158|(3:160|161|162)(1:522)|163|(1:173)(2:(1:166)|(2:171|172)(1:170)))(2:151|152)|153|128|129)|542|543|178)(1:547)|179|(8:(1:(1:183)(1:199))(2:200|(1:(1:203)(1:204))(1:(3:206|207|191)(1:208)))|184|185|(1:187)|188|189|190|191)|209|210|(10:213|214|215|(1:217)(1:228)|218|219|220|221|222|211)|233|234|235|(5:237|(14:240|241|(1:243)(1:267)|244|245|(1:248)|249|250|251|(2:(1:254)|255)|256|(2:258|259)(1:261)|260|238)|269|270|(3:272|(2:275|273)|276))(1:520)|277|278|(20:280|281|282|(2:284|(4:286|287|288|289)(1:475))(1:476)|290|291|292|(1:294)(1:465)|295|(5:446|447|448|(3:450|451|452)(1:459)|453)(1:297)|298|299|(6:301|302|(7:305|(1:307)|308|(1:310)(1:316)|(2:312|313)(1:315)|314|303)|317|318|(15:320|321|322|323|(6:325|326|327|(9:329|330|331|332|333|(1:335)(1:343)|336|(2:338|339)(2:341|342)|340)|356|357)|363|364|365|366|367|368|(5:370|(7:373|(1:375)|376|(1:378)(1:384)|(2:380|381)(1:383)|382|371)|385|386|(8:388|389|390|391|(5:393|394|(6:397|(1:399)(1:407)|400|(2:402|403)(2:405|406)|404|395)|408|409)|415|416|417)(1:431))(1:432)|418|419|420))|440|367|368|(0)(0)|418|419|420)|482|483|484|(1:(1:487)(1:488))|489|(1:(1:492)(1:493))|494|(1:496)|497|(4:499|(2:502|500)|503|504)|(1:506)|507|(6:509|(2:512|510)|513|514|(1:516)|517)|519)(0))(1:554))(1:105)|106|107|66|67|68|69|(0)(0)))|570|101|102|(0)|108|109|110|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:298|299|(4:(6:301|302|(7:305|(1:307)|308|(1:310)(1:316)|(2:312|313)(1:315)|314|303)|317|318|(15:320|321|322|323|(6:325|326|327|(9:329|330|331|332|333|(1:335)(1:343)|336|(2:338|339)(2:341|342)|340)|356|357)|363|364|365|366|367|368|(5:370|(7:373|(1:375)|376|(1:378)(1:384)|(2:380|381)(1:383)|382|371)|385|386|(8:388|389|390|391|(5:393|394|(6:397|(1:399)(1:407)|400|(2:402|403)(2:405|406)|404|395)|408|409)|415|416|417)(1:431))(1:432)|418|419|420))|418|419|420)|440|367|368|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x0bb2, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0265, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0266, code lost:
        r26 = r42;
        r42 = r2;
        r18 = r5;
        r17 = r25;
        r28 = r22;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0272, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0273, code lost:
        r26 = r42;
        r42 = r2;
        r18 = r5;
        r17 = r25;
        r28 = r22;
        r14 = 1;
     */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0d62: MOVE  (r16 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:490:0x0d61 */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0d64: MOVE  (r12 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:490:0x0d61 */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02c5 A[Catch: all -> 0x0d40, Exception -> 0x0d46, TRY_ENTER, TRY_LEAVE, TryCatch #51 {Exception -> 0x0d46, all -> 0x0d40, blocks: (B:3:0x0008, B:6:0x0014, B:19:0x0060, B:21:0x0085, B:25:0x009b, B:27:0x00d5, B:114:0x02c5, B:179:0x03fc, B:183:0x0408, B:197:0x0485, B:198:0x048d, B:184:0x0417, B:188:0x042b, B:189:0x043a, B:192:0x044e, B:205:0x04a0, B:206:0x04bd, B:208:0x04c3, B:214:0x04fe, B:226:0x055f, B:228:0x0565, B:229:0x056f, B:231:0x0575, B:237:0x05bf, B:240:0x05e3, B:241:0x060b, B:245:0x063a, B:246:0x063f, B:247:0x0648, B:249:0x065e, B:250:0x0664, B:257:0x067e, B:258:0x0682, B:260:0x0688, B:262:0x069b, B:29:0x00fe), top: B:518:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04c3 A[Catch: all -> 0x0d40, Exception -> 0x0d46, TRY_LEAVE, TryCatch #51 {Exception -> 0x0d46, all -> 0x0d40, blocks: (B:3:0x0008, B:6:0x0014, B:19:0x0060, B:21:0x0085, B:25:0x009b, B:27:0x00d5, B:114:0x02c5, B:179:0x03fc, B:183:0x0408, B:197:0x0485, B:198:0x048d, B:184:0x0417, B:188:0x042b, B:189:0x043a, B:192:0x044e, B:205:0x04a0, B:206:0x04bd, B:208:0x04c3, B:214:0x04fe, B:226:0x055f, B:228:0x0565, B:229:0x056f, B:231:0x0575, B:237:0x05bf, B:240:0x05e3, B:241:0x060b, B:245:0x063a, B:246:0x063f, B:247:0x0648, B:249:0x065e, B:250:0x0664, B:257:0x067e, B:258:0x0682, B:260:0x0688, B:262:0x069b, B:29:0x00fe), top: B:518:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0565 A[Catch: all -> 0x0d40, Exception -> 0x0d46, TryCatch #51 {Exception -> 0x0d46, all -> 0x0d40, blocks: (B:3:0x0008, B:6:0x0014, B:19:0x0060, B:21:0x0085, B:25:0x009b, B:27:0x00d5, B:114:0x02c5, B:179:0x03fc, B:183:0x0408, B:197:0x0485, B:198:0x048d, B:184:0x0417, B:188:0x042b, B:189:0x043a, B:192:0x044e, B:205:0x04a0, B:206:0x04bd, B:208:0x04c3, B:214:0x04fe, B:226:0x055f, B:228:0x0565, B:229:0x056f, B:231:0x0575, B:237:0x05bf, B:240:0x05e3, B:241:0x060b, B:245:0x063a, B:246:0x063f, B:247:0x0648, B:249:0x065e, B:250:0x0664, B:257:0x067e, B:258:0x0682, B:260:0x0688, B:262:0x069b, B:29:0x00fe), top: B:518:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x06a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x09ed A[Catch: Exception -> 0x0bb2, all -> 0x0d60, TryCatch #27 {all -> 0x0d60, blocks: (B:479:0x0d4a, B:357:0x09e7, B:359:0x09ed, B:360:0x0a0b, B:362:0x0a11, B:364:0x0a25, B:365:0x0a2a, B:367:0x0a32, B:370:0x0a49, B:371:0x0a4e, B:368:0x0a40, B:372:0x0a5d), top: B:518:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0b4e  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0c04  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0c39  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0c78 A[Catch: all -> 0x0d2e, Exception -> 0x0d35, TryCatch #58 {Exception -> 0x0d35, all -> 0x0d2e, blocks: (B:272:0x06cf, B:275:0x0724, B:273:0x06ef, B:426:0x0be3, B:429:0x0c06, B:430:0x0c16, B:431:0x0c33, B:434:0x0c3b, B:435:0x0c4b, B:436:0x0c68, B:438:0x0c78, B:439:0x0c7c, B:442:0x0c84, B:444:0x0c8a, B:445:0x0cc1, B:447:0x0cd0, B:448:0x0cdd, B:450:0x0cea, B:451:0x0cf3, B:453:0x0cf9, B:456:0x0d10, B:457:0x0d13), top: B:550:0x06cf }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0c83  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0cd0 A[Catch: all -> 0x0d2e, Exception -> 0x0d35, TryCatch #58 {Exception -> 0x0d35, all -> 0x0d2e, blocks: (B:272:0x06cf, B:275:0x0724, B:273:0x06ef, B:426:0x0be3, B:429:0x0c06, B:430:0x0c16, B:431:0x0c33, B:434:0x0c3b, B:435:0x0c4b, B:436:0x0c68, B:438:0x0c78, B:439:0x0c7c, B:442:0x0c84, B:444:0x0c8a, B:445:0x0cc1, B:447:0x0cd0, B:448:0x0cdd, B:450:0x0cea, B:451:0x0cf3, B:453:0x0cf9, B:456:0x0d10, B:457:0x0d13), top: B:550:0x06cf }] */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0cea A[Catch: all -> 0x0d2e, Exception -> 0x0d35, TryCatch #58 {Exception -> 0x0d35, all -> 0x0d2e, blocks: (B:272:0x06cf, B:275:0x0724, B:273:0x06ef, B:426:0x0be3, B:429:0x0c06, B:430:0x0c16, B:431:0x0c33, B:434:0x0c3b, B:435:0x0c4b, B:436:0x0c68, B:438:0x0c78, B:439:0x0c7c, B:442:0x0c84, B:444:0x0c8a, B:445:0x0cc1, B:447:0x0cd0, B:448:0x0cdd, B:450:0x0cea, B:451:0x0cf3, B:453:0x0cf9, B:456:0x0d10, B:457:0x0d13), top: B:550:0x06cf }] */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0d20  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0d25  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0d2a  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0d51  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0d56  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0d5b  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0d69  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0d6e  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0d73  */
    /* JADX WARN: Removed duplicated region for block: B:614:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0202 A[Catch: Exception -> 0x0265, all -> 0x02a8, TRY_LEAVE, TryCatch #1 {all -> 0x02a8, blocks: (B:32:0x011e, B:35:0x0126, B:37:0x0134, B:39:0x013f, B:43:0x015a, B:47:0x0166, B:49:0x0171, B:52:0x017c, B:54:0x018a, B:55:0x018c, B:63:0x01ab, B:74:0x01e2, B:80:0x01fc, B:82:0x0202, B:84:0x0211, B:86:0x0236, B:111:0x02bd, B:112:0x02c0, B:116:0x02e2, B:118:0x02e8, B:120:0x02f7, B:123:0x0301, B:125:0x030f, B:127:0x0329, B:130:0x0334, B:131:0x033a, B:132:0x0343, B:143:0x0370, B:145:0x037b, B:148:0x0384, B:150:0x038b, B:153:0x039a, B:157:0x03a4, B:175:0x03e9, B:176:0x03ec, B:71:0x01cf), top: B:499:0x011e }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x024a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0256 -> B:28:0x00fc). Please submit an issue!!! */
    /* renamed from: markMessagesAsDeletedInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.Long> lambda$markMessagesAsDeleted$192(long r38, java.util.ArrayList<java.lang.Integer> r40, boolean r41, boolean r42, java.util.List<java.lang.Long> r43) {
        /*
            Method dump skipped, instructions count: 3447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$markMessagesAsDeleted$192(long, java.util.ArrayList, boolean, boolean, java.util.List):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessagesAsDeletedInternal$190(ArrayList arrayList) {
        getFileLoader().cancelLoadFiles(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:258:? A[RETURN, SYNTHETIC] */
    /* renamed from: updateDialogsWithDeletedMessagesInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$updateDialogsWithDeletedMessages$191(long r24, long r26, java.util.ArrayList<java.lang.Integer> r28, java.util.ArrayList<java.lang.Long> r29) {
        /*
            Method dump skipped, instructions count: 1079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateDialogsWithDeletedMessages$191(long, long, java.util.ArrayList, java.util.ArrayList):void");
    }

    public void updateDialogsWithDeletedMessages(final long j, final long j2, final ArrayList<Integer> arrayList, final ArrayList<Long> arrayList2, boolean z) {
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$updateDialogsWithDeletedMessages$191(j, j2, arrayList, arrayList2);
                }
            });
        } else {
            lambda$updateDialogsWithDeletedMessages$191(j, j2, arrayList, arrayList2);
        }
    }

    public ArrayList<Long> markMessagesAsDeleted(final long j, final ArrayList<Integer> arrayList, boolean z, final boolean z2, final boolean z3, final ArrayList<Long> arrayList2) {
        if (arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda112
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$markMessagesAsDeleted$192(j, arrayList, z2, z3, arrayList2);
                }
            });
            return null;
        }
        return lambda$markMessagesAsDeleted$192(j, arrayList, z2, z3, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x034c: MOVE  (r8 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:134:0x034c */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x034d: MOVE  (r16 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:134:0x034c */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00db A[Catch: all -> 0x0119, Exception -> 0x0124, TRY_LEAVE, TryCatch #18 {all -> 0x0119, blocks: (B:5:0x004b, B:7:0x0051, B:37:0x00c6, B:43:0x00d5, B:45:0x00db, B:46:0x00e8), top: B:149:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014a A[Catch: all -> 0x0326, Exception -> 0x0328, TRY_LEAVE, TryCatch #18 {Exception -> 0x0328, all -> 0x0326, blocks: (B:67:0x0130, B:68:0x0144, B:70:0x014a, B:76:0x0182, B:88:0x01d8, B:95:0x023a, B:104:0x027f), top: B:159:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x022f A[Catch: all -> 0x0321, Exception -> 0x0324, TryCatch #21 {Exception -> 0x0324, all -> 0x0321, blocks: (B:89:0x0229, B:91:0x022f, B:93:0x0235, B:96:0x0251, B:98:0x0257, B:103:0x027c), top: B:153:0x0229 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023a A[Catch: all -> 0x0326, Exception -> 0x0328, TRY_ENTER, TRY_LEAVE, TryCatch #18 {Exception -> 0x0328, all -> 0x0326, blocks: (B:67:0x0130, B:68:0x0144, B:70:0x014a, B:76:0x0182, B:88:0x01d8, B:95:0x023a, B:104:0x027f), top: B:159:0x0130 }] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* renamed from: markMessagesAsDeletedInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.Long> lambda$markMessagesAsDeleted$194(long r24, int r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$markMessagesAsDeleted$194(long, int, boolean):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markMessagesAsDeletedInternal$193(ArrayList arrayList) {
        getFileLoader().cancelLoadFiles(arrayList);
    }

    public ArrayList<Long> markMessagesAsDeleted(final long j, final int i, boolean z, final boolean z2) {
        if (z) {
            this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda91
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$markMessagesAsDeleted$194(j, i, z2);
                }
            });
            return null;
        }
        return lambda$markMessagesAsDeleted$194(j, i, z2);
    }

    private void fixUnsupportedMedia(TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message == null) {
            return;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaUnsupported_old) {
            if (tLRPC$MessageMedia.bytes.length == 0) {
                tLRPC$MessageMedia.bytes = Utilities.intToBytes(166);
            }
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaUnsupported) {
            TLRPC$TL_messageMediaUnsupported_old tLRPC$TL_messageMediaUnsupported_old = new TLRPC$TL_messageMediaUnsupported_old();
            tLRPC$Message.media = tLRPC$TL_messageMediaUnsupported_old;
            tLRPC$TL_messageMediaUnsupported_old.bytes = Utilities.intToBytes(166);
            tLRPC$Message.flags |= 512;
        }
    }

    private void doneHolesInTable(String str, long j, int i, int i2) throws Exception {
        SQLitePreparedStatement executeFast;
        int i3 = 2;
        if (i2 != 0) {
            if (i == 0) {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM " + str + " WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(i2))).stepThis().dispose();
            } else {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM " + str + " WHERE uid = %d AND topic_id = %d AND start = 0", Long.valueOf(j), Integer.valueOf(i2))).stepThis().dispose();
            }
        } else if (i == 0) {
            this.database.executeFast(String.format(Locale.US, "DELETE FROM " + str + " WHERE uid = %d", Long.valueOf(j))).stepThis().dispose();
        } else {
            this.database.executeFast(String.format(Locale.US, "DELETE FROM " + str + " WHERE uid = %d AND start = 0", Long.valueOf(j))).stepThis().dispose();
        }
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                if (i2 != 0) {
                    executeFast = this.database.executeFast("REPLACE INTO " + str + " VALUES(?, ?, ?, ?)");
                } else {
                    executeFast = this.database.executeFast("REPLACE INTO " + str + " VALUES(?, ?, ?)");
                }
                sQLitePreparedStatement = executeFast;
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindLong(1, j);
                if (i2 != 0) {
                    sQLitePreparedStatement.bindInteger(2, i2);
                    i3 = 3;
                }
                sQLitePreparedStatement.bindInteger(i3, 1);
                sQLitePreparedStatement.bindInteger(i3 + 1, 1);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void doneHolesInMedia(long j, int i, int i2, int i3) throws Exception {
        SQLitePreparedStatement executeFast;
        SQLitePreparedStatement executeFast2;
        int i4;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        int i5 = 3;
        if (i2 == -1) {
            if (i3 != 0) {
                if (i == 0) {
                    this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_topics WHERE uid = %d AND topic_id = %d", Long.valueOf(j), Integer.valueOf(i3))).stepThis().dispose();
                } else {
                    this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND start = 0", Long.valueOf(j), Integer.valueOf(i3))).stepThis().dispose();
                }
            } else if (i == 0) {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_v2 WHERE uid = %d", Long.valueOf(j))).stepThis().dispose();
            } else {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_v2 WHERE uid = %d AND start = 0", Long.valueOf(j))).stepThis().dispose();
            }
            try {
                try {
                    if (i3 != 0) {
                        executeFast2 = this.database.executeFast("REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)");
                    } else {
                        executeFast2 = this.database.executeFast("REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)");
                    }
                    sQLitePreparedStatement = executeFast2;
                    for (int i6 = 0; i6 < 8; i6++) {
                        sQLitePreparedStatement.requery();
                        sQLitePreparedStatement.bindLong(1, j);
                        if (i3 != 0) {
                            sQLitePreparedStatement.bindInteger(2, i3);
                            i4 = 3;
                        } else {
                            i4 = 2;
                        }
                        int i7 = i4 + 1;
                        sQLitePreparedStatement.bindInteger(i4, i6);
                        sQLitePreparedStatement.bindInteger(i7, 1);
                        sQLitePreparedStatement.bindInteger(i7 + 1, 1);
                        sQLitePreparedStatement.step();
                    }
                    if (sQLitePreparedStatement != null) {
                        sQLitePreparedStatement.dispose();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    throw e;
                }
            } finally {
            }
        }
        if (i3 != 0) {
            if (i == 0) {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d", Long.valueOf(j), Integer.valueOf(i3), Integer.valueOf(i2))).stepThis().dispose();
            } else {
                this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_topics WHERE uid = %d AND topic_id = %d AND type = %d AND start = 0", Long.valueOf(j), Integer.valueOf(i3), Integer.valueOf(i2))).stepThis().dispose();
            }
        } else if (i == 0) {
            this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d", Long.valueOf(j), Integer.valueOf(i2))).stepThis().dispose();
        } else {
            this.database.executeFast(String.format(Locale.US, "DELETE FROM media_holes_v2 WHERE uid = %d AND type = %d AND start = 0", Long.valueOf(j), Integer.valueOf(i2))).stepThis().dispose();
        }
        try {
            try {
                if (i3 != 0) {
                    executeFast = this.database.executeFast("REPLACE INTO media_holes_topics VALUES(?, ?, ?, ?, ?)");
                } else {
                    executeFast = this.database.executeFast("REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)");
                }
                sQLitePreparedStatement = executeFast;
                sQLitePreparedStatement.requery();
                sQLitePreparedStatement.bindLong(1, j);
                if (i3 != 0) {
                    sQLitePreparedStatement.bindInteger(2, i3);
                } else {
                    i5 = 2;
                }
                int i8 = i5 + 1;
                sQLitePreparedStatement.bindInteger(i5, i2);
                sQLitePreparedStatement.bindInteger(i8, 1);
                sQLitePreparedStatement.bindInteger(i8 + 1, 1);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
                sQLitePreparedStatement.dispose();
            } finally {
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Hole {
        public int end;
        public int start;
        public int type;

        public Hole(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public Hole(int i, int i2, int i3) {
            this.type = i;
            this.start = i2;
            this.end = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x049f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void closeHolesInMedia(long r25, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1187
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.closeHolesInMedia(long, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void closeHolesInTable(java.lang.String r25, long r26, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.closeHolesInTable(java.lang.String, long, int, int, int):void");
    }

    public void replaceMessageIfExists(final TLRPC$Message tLRPC$Message, final ArrayList<TLRPC$User> arrayList, final ArrayList<TLRPC$Chat> arrayList2, final boolean z) {
        if (tLRPC$Message == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda195
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$replaceMessageIfExists$196(tLRPC$Message, z, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01cd A[Catch: all -> 0x02d1, Exception -> 0x02d6, TRY_ENTER, TryCatch #9 {Exception -> 0x02d6, all -> 0x02d1, blocks: (B:7:0x0034, B:14:0x0047, B:28:0x0060, B:30:0x006d, B:31:0x0070, B:37:0x008b, B:104:0x01d5, B:42:0x009f, B:101:0x01cd, B:103:0x01d2, B:43:0x00a8, B:109:0x01e4, B:117:0x01f5, B:122:0x0209, B:123:0x0212, B:136:0x0261, B:137:0x0264, B:139:0x026e, B:140:0x0279, B:142:0x027f, B:143:0x0293, B:145:0x0299, B:146:0x02ad, B:26:0x005c, B:158:0x02de, B:159:0x02e1), top: B:189:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01d2 A[Catch: all -> 0x02d1, Exception -> 0x02d6, TryCatch #9 {Exception -> 0x02d6, all -> 0x02d1, blocks: (B:7:0x0034, B:14:0x0047, B:28:0x0060, B:30:0x006d, B:31:0x0070, B:37:0x008b, B:104:0x01d5, B:42:0x009f, B:101:0x01cd, B:103:0x01d2, B:43:0x00a8, B:109:0x01e4, B:117:0x01f5, B:122:0x0209, B:123:0x0212, B:136:0x0261, B:137:0x0264, B:139:0x026e, B:140:0x0279, B:142:0x027f, B:143:0x0293, B:145:0x0299, B:146:0x02ad, B:26:0x005c, B:158:0x02de, B:159:0x02e1), top: B:189:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0261 A[Catch: all -> 0x02d1, Exception -> 0x02d6, TRY_ENTER, TryCatch #9 {Exception -> 0x02d6, all -> 0x02d1, blocks: (B:7:0x0034, B:14:0x0047, B:28:0x0060, B:30:0x006d, B:31:0x0070, B:37:0x008b, B:104:0x01d5, B:42:0x009f, B:101:0x01cd, B:103:0x01d2, B:43:0x00a8, B:109:0x01e4, B:117:0x01f5, B:122:0x0209, B:123:0x0212, B:136:0x0261, B:137:0x0264, B:139:0x026e, B:140:0x0279, B:142:0x027f, B:143:0x0293, B:145:0x0299, B:146:0x02ad, B:26:0x005c, B:158:0x02de, B:159:0x02e1), top: B:189:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x026e A[Catch: all -> 0x02d1, Exception -> 0x02d6, TryCatch #9 {Exception -> 0x02d6, all -> 0x02d1, blocks: (B:7:0x0034, B:14:0x0047, B:28:0x0060, B:30:0x006d, B:31:0x0070, B:37:0x008b, B:104:0x01d5, B:42:0x009f, B:101:0x01cd, B:103:0x01d2, B:43:0x00a8, B:109:0x01e4, B:117:0x01f5, B:122:0x0209, B:123:0x0212, B:136:0x0261, B:137:0x0264, B:139:0x026e, B:140:0x0279, B:142:0x027f, B:143:0x0293, B:145:0x0299, B:146:0x02ad, B:26:0x005c, B:158:0x02de, B:159:0x02e1), top: B:189:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d A[Catch: all -> 0x02d1, Exception -> 0x02d6, TryCatch #9 {Exception -> 0x02d6, all -> 0x02d1, blocks: (B:7:0x0034, B:14:0x0047, B:28:0x0060, B:30:0x006d, B:31:0x0070, B:37:0x008b, B:104:0x01d5, B:42:0x009f, B:101:0x01cd, B:103:0x01d2, B:43:0x00a8, B:109:0x01e4, B:117:0x01f5, B:122:0x0209, B:123:0x0212, B:136:0x0261, B:137:0x0264, B:139:0x026e, B:140:0x0279, B:142:0x027f, B:143:0x0293, B:145:0x0299, B:146:0x02ad, B:26:0x005c, B:158:0x02de, B:159:0x02e1), top: B:189:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fd A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0105 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0112 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0128 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0155 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x016b A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0175 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0182 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0196 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019c A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a3 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01bc A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01c2 A[Catch: all -> 0x01dc, Exception -> 0x01e0, TryCatch #12 {Exception -> 0x01e0, all -> 0x01dc, blocks: (B:44:0x00b0, B:46:0x00bf, B:48:0x00c5, B:50:0x00e5, B:55:0x00ed, B:57:0x00fd, B:59:0x010e, B:61:0x0112, B:63:0x012e, B:69:0x0139, B:73:0x0147, B:75:0x0155, B:77:0x0171, B:79:0x0175, B:83:0x017e, B:85:0x0187, B:87:0x0196, B:90:0x01a3, B:92:0x01aa, B:93:0x01b2, B:95:0x01b8, B:97:0x01bc, B:99:0x01c5, B:98:0x01c2, B:88:0x019c, B:82:0x017c, B:84:0x0182, B:76:0x016b, B:62:0x0128, B:58:0x0105), top: B:183:0x00b0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$replaceMessageIfExists$196(org.telegram.tgnet.TLRPC$Message r20, boolean r21, java.util.ArrayList r22, java.util.ArrayList r23) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$replaceMessageIfExists$196(org.telegram.tgnet.TLRPC$Message, boolean, java.util.ArrayList, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$replaceMessageIfExists$195(MessageObject messageObject, ArrayList arrayList) {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObject.getDialogId()), arrayList);
    }

    public void putMessages(final TLRPC$messages_Messages tLRPC$messages_Messages, final long j, final int i, final int i2, final boolean z, final boolean z2, final int i3) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda210
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putMessages$198(z2, j, tLRPC$messages_Messages, i3, i, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x033a, code lost:
        if (r4.f1632id == r2.f1632id) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x033c, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0358, code lost:
        if (r1.f1610id == r2.f1610id) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x025c, code lost:
        if (r25.intValue() < r15.f1626id) goto L127;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x047d A[Catch: all -> 0x0577, Exception -> 0x057f, TryCatch #46 {Exception -> 0x057f, all -> 0x0577, blocks: (B:202:0x0477, B:204:0x047d, B:206:0x0491), top: B:679:0x0477 }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0499 A[Catch: all -> 0x0587, Exception -> 0x058a, TRY_ENTER, TRY_LEAVE, TryCatch #52 {Exception -> 0x058a, all -> 0x0587, blocks: (B:201:0x045d, B:209:0x0499, B:220:0x04e6, B:255:0x05ad, B:267:0x05d8, B:273:0x0603, B:282:0x061d, B:288:0x0630, B:305:0x0675, B:312:0x0697, B:316:0x069e, B:323:0x06bd, B:315:0x069c), top: B:667:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04e6 A[Catch: all -> 0x0587, Exception -> 0x058a, TRY_ENTER, TRY_LEAVE, TryCatch #52 {Exception -> 0x058a, all -> 0x0587, blocks: (B:201:0x045d, B:209:0x0499, B:220:0x04e6, B:255:0x05ad, B:267:0x05d8, B:273:0x0603, B:282:0x061d, B:288:0x0630, B:305:0x0675, B:312:0x0697, B:316:0x069e, B:323:0x06bd, B:315:0x069c), top: B:667:0x045d }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0754 A[Catch: all -> 0x093e, Exception -> 0x0942, TryCatch #57 {Exception -> 0x0942, all -> 0x093e, blocks: (B:416:0x08a1, B:358:0x072a, B:365:0x0754, B:367:0x075a), top: B:657:0x08a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x07cf A[Catch: all -> 0x093a, Exception -> 0x093c, TryCatch #13 {all -> 0x093a, blocks: (B:376:0x07b3, B:389:0x07fb, B:391:0x0802, B:394:0x0808, B:404:0x0859, B:407:0x0861, B:420:0x08a9, B:382:0x07c9, B:384:0x07cf, B:386:0x07e0, B:388:0x07e3, B:387:0x07e2, B:370:0x0762, B:374:0x07ad), top: B:622:0x0802 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:491:0x09a4 A[Catch: all -> 0x098e, Exception -> 0x0998, TryCatch #50 {Exception -> 0x0998, all -> 0x098e, blocks: (B:485:0x0988, B:491:0x09a4, B:493:0x09b5, B:495:0x09bc, B:496:0x09c4, B:498:0x09ca), top: B:671:0x0988 }] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x09b5 A[Catch: all -> 0x098e, Exception -> 0x0998, TryCatch #50 {Exception -> 0x0998, all -> 0x098e, blocks: (B:485:0x0988, B:491:0x09a4, B:493:0x09b5, B:495:0x09bc, B:496:0x09c4, B:498:0x09ca), top: B:671:0x0988 }] */
    /* JADX WARN: Removed duplicated region for block: B:495:0x09bc A[Catch: all -> 0x098e, Exception -> 0x0998, TryCatch #50 {Exception -> 0x0998, all -> 0x098e, blocks: (B:485:0x0988, B:491:0x09a4, B:493:0x09b5, B:495:0x09bc, B:496:0x09c4, B:498:0x09ca), top: B:671:0x0988 }] */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0a08 A[Catch: all -> 0x0aba, Exception -> 0x0ac6, TRY_LEAVE, TryCatch #60 {Exception -> 0x0ac6, all -> 0x0aba, blocks: (B:501:0x09e1, B:503:0x0a08), top: B:651:0x09e1 }] */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0a40  */
    /* JADX WARN: Removed duplicated region for block: B:508:0x0a43 A[Catch: all -> 0x0ab6, Exception -> 0x0ab8, TryCatch #64 {Exception -> 0x0ab8, all -> 0x0ab6, blocks: (B:505:0x0a3c, B:508:0x0a43, B:513:0x0a65, B:515:0x0a82, B:518:0x0a8c, B:512:0x0a53), top: B:644:0x0a3c }] */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0a81  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0a8a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:582:0x0b92  */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0b97  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0b9c  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0ba1  */
    /* JADX WARN: Removed duplicated region for block: B:590:0x0ba6  */
    /* JADX WARN: Removed duplicated region for block: B:592:0x0bab  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x0bb0  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0bb5  */
    /* JADX WARN: Removed duplicated region for block: B:598:0x0bba  */
    /* JADX WARN: Removed duplicated region for block: B:604:0x0bc4  */
    /* JADX WARN: Removed duplicated region for block: B:606:0x0bc9  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0bce  */
    /* JADX WARN: Removed duplicated region for block: B:610:0x0bd3  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0bd8  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0bdd  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0be2  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0be7  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0bec  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0802 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:653:0x023c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:655:0x0298 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:657:0x08a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:663:0x0722 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:671:0x0988 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:689:0x08e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:709:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x028f A[Catch: all -> 0x0279, Exception -> 0x027f, TRY_LEAVE, TryCatch #45 {Exception -> 0x027f, all -> 0x0279, blocks: (B:83:0x025e, B:85:0x026a, B:95:0x028f, B:81:0x0254), top: B:681:0x025e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$putMessages$198(boolean r45, long r46, org.telegram.tgnet.TLRPC$messages_Messages r48, int r49, int r50, int r51, boolean r52) {
        /*
            Method dump skipped, instructions count: 3056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$putMessages$198(boolean, long, org.telegram.tgnet.TLRPC$messages_Messages, int, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putMessages$197(ArrayList arrayList) {
        getFileLoader().cancelLoadFiles(arrayList);
    }

    public static void addUsersAndChatsFromMessage(TLRPC$Message tLRPC$Message, ArrayList<Long> arrayList, ArrayList<Long> arrayList2, ArrayList<Long> arrayList3) {
        String str;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        TLRPC$Peer tLRPC$Peer;
        TLRPC$Peer tLRPC$Peer2;
        long fromChatId = MessageObject.getFromChatId(tLRPC$Message);
        if (DialogObject.isUserDialog(fromChatId)) {
            if (!arrayList.contains(Long.valueOf(fromChatId))) {
                arrayList.add(Long.valueOf(fromChatId));
            }
        } else if (DialogObject.isChatDialog(fromChatId)) {
            long j = -fromChatId;
            if (!arrayList2.contains(Long.valueOf(j))) {
                arrayList2.add(Long.valueOf(j));
            }
        }
        long j2 = tLRPC$Message.via_bot_id;
        if (j2 != 0 && !arrayList.contains(Long.valueOf(j2))) {
            arrayList.add(Long.valueOf(tLRPC$Message.via_bot_id));
        }
        TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
        if (tLRPC$MessageAction != null) {
            long j3 = tLRPC$MessageAction.user_id;
            if (j3 != 0 && !arrayList.contains(Long.valueOf(j3))) {
                arrayList.add(Long.valueOf(tLRPC$Message.action.user_id));
            }
            long j4 = tLRPC$Message.action.channel_id;
            if (j4 != 0 && !arrayList2.contains(Long.valueOf(j4))) {
                arrayList2.add(Long.valueOf(tLRPC$Message.action.channel_id));
            }
            long j5 = tLRPC$Message.action.chat_id;
            if (j5 != 0 && !arrayList2.contains(Long.valueOf(j5))) {
                arrayList2.add(Long.valueOf(tLRPC$Message.action.chat_id));
            }
            TLRPC$MessageAction tLRPC$MessageAction2 = tLRPC$Message.action;
            if (tLRPC$MessageAction2 instanceof TLRPC$TL_messageActionGiftCode) {
                addLoadPeerInfo(((TLRPC$TL_messageActionGiftCode) tLRPC$MessageAction2).boost_peer, arrayList, arrayList2);
            }
            TLRPC$MessageAction tLRPC$MessageAction3 = tLRPC$Message.action;
            if (tLRPC$MessageAction3 instanceof TLRPC$TL_messageActionGeoProximityReached) {
                TLRPC$TL_messageActionGeoProximityReached tLRPC$TL_messageActionGeoProximityReached = (TLRPC$TL_messageActionGeoProximityReached) tLRPC$MessageAction3;
                addLoadPeerInfo(tLRPC$TL_messageActionGeoProximityReached.from_id, arrayList, arrayList2);
                addLoadPeerInfo(tLRPC$TL_messageActionGeoProximityReached.to_id, arrayList, arrayList2);
            }
            if (!tLRPC$Message.action.users.isEmpty()) {
                for (int i = 0; i < tLRPC$Message.action.users.size(); i++) {
                    Long l = tLRPC$Message.action.users.get(i);
                    if (!arrayList.contains(l)) {
                        arrayList.add(l);
                    }
                }
            }
        }
        if (!tLRPC$Message.entities.isEmpty()) {
            for (int i2 = 0; i2 < tLRPC$Message.entities.size(); i2++) {
                TLRPC$MessageEntity tLRPC$MessageEntity = tLRPC$Message.entities.get(i2);
                if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityMentionName) {
                    arrayList.add(Long.valueOf(((TLRPC$TL_messageEntityMentionName) tLRPC$MessageEntity).user_id));
                } else if (tLRPC$MessageEntity instanceof TLRPC$TL_inputMessageEntityMentionName) {
                    arrayList.add(Long.valueOf(((TLRPC$TL_inputMessageEntityMentionName) tLRPC$MessageEntity).user_id.user_id));
                } else if (arrayList3 != null && (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityCustomEmoji)) {
                    arrayList3.add(Long.valueOf(((TLRPC$TL_messageEntityCustomEmoji) tLRPC$MessageEntity).document_id));
                }
            }
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
        if (tLRPC$MessageMedia != null) {
            long j6 = tLRPC$MessageMedia.user_id;
            if (j6 != 0 && !arrayList.contains(Long.valueOf(j6))) {
                arrayList.add(Long.valueOf(tLRPC$Message.media.user_id));
            }
            TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$Message.media;
            if (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGiveaway) {
                Iterator<Long> it = ((TLRPC$TL_messageMediaGiveaway) tLRPC$MessageMedia2).channels.iterator();
                while (it.hasNext()) {
                    Long next = it.next();
                    if (!arrayList2.contains(next)) {
                        arrayList2.add(next);
                    }
                }
            }
            TLRPC$MessageMedia tLRPC$MessageMedia3 = tLRPC$Message.media;
            if (tLRPC$MessageMedia3 instanceof TLRPC$TL_messageMediaPoll) {
                TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) tLRPC$MessageMedia3;
                if (!tLRPC$TL_messageMediaPoll.results.recent_voters.isEmpty()) {
                    for (int i3 = 0; i3 < tLRPC$TL_messageMediaPoll.results.recent_voters.size(); i3++) {
                        addLoadPeerInfo(tLRPC$TL_messageMediaPoll.results.recent_voters.get(i3), arrayList, arrayList2);
                    }
                }
            }
            TLRPC$Peer tLRPC$Peer3 = tLRPC$Message.media.peer;
            if (tLRPC$Peer3 != null) {
                addLoadPeerInfo(tLRPC$Peer3, arrayList, arrayList2);
            }
        }
        TLRPC$MessageReplies tLRPC$MessageReplies = tLRPC$Message.replies;
        if (tLRPC$MessageReplies != null) {
            int size = tLRPC$MessageReplies.recent_repliers.size();
            for (int i4 = 0; i4 < size; i4++) {
                addLoadPeerInfo(tLRPC$Message.replies.recent_repliers.get(i4), arrayList, arrayList2);
            }
        }
        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader = tLRPC$Message.reply_to;
        if (tLRPC$MessageReplyHeader != null && (tLRPC$Peer2 = tLRPC$MessageReplyHeader.reply_to_peer_id) != null) {
            addLoadPeerInfo(tLRPC$Peer2, arrayList, arrayList2);
        }
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader2 = tLRPC$Message.fwd_from;
        if (tLRPC$MessageFwdHeader2 != null) {
            addLoadPeerInfo(tLRPC$MessageFwdHeader2.from_id, arrayList, arrayList2);
            addLoadPeerInfo(tLRPC$Message.fwd_from.saved_from_peer, arrayList, arrayList2);
        }
        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader2 = tLRPC$Message.reply_to;
        if (tLRPC$MessageReplyHeader2 != null && (tLRPC$MessageFwdHeader = tLRPC$MessageReplyHeader2.reply_from) != null && (tLRPC$Peer = tLRPC$MessageFwdHeader.from_id) != null) {
            addLoadPeerInfo(tLRPC$Peer, arrayList, arrayList2);
        }
        HashMap<String, String> hashMap = tLRPC$Message.params;
        if (hashMap == null || (str = hashMap.get("fwd_peer")) == null) {
            return;
        }
        long longValue = Utilities.parseLong(str).longValue();
        if (longValue < 0) {
            long j7 = -longValue;
            if (arrayList2.contains(Long.valueOf(j7))) {
                return;
            }
            arrayList2.add(Long.valueOf(j7));
        }
    }

    private static void addLoadPeerInfo(TLRPC$Peer tLRPC$Peer, ArrayList<Long> arrayList, ArrayList<Long> arrayList2) {
        if (tLRPC$Peer instanceof TLRPC$TL_peerUser) {
            if (arrayList.contains(Long.valueOf(tLRPC$Peer.user_id))) {
                return;
            }
            arrayList.add(Long.valueOf(tLRPC$Peer.user_id));
        } else if (tLRPC$Peer instanceof TLRPC$TL_peerChannel) {
            if (arrayList2.contains(Long.valueOf(tLRPC$Peer.channel_id))) {
                return;
            }
            arrayList2.add(Long.valueOf(tLRPC$Peer.channel_id));
        } else if (!(tLRPC$Peer instanceof TLRPC$TL_peerChat) || arrayList2.contains(Long.valueOf(tLRPC$Peer.chat_id))) {
        } else {
            arrayList2.add(Long.valueOf(tLRPC$Peer.chat_id));
        }
    }

    public void getDialogs(final int i, final int i2, final int i3, boolean z) {
        LongSparseArray<SparseArray<TLRPC$DraftMessage>> drafts;
        int size;
        long[] jArr = null;
        if (z && (size = (drafts = getMediaDataController().getDrafts()).size()) > 0) {
            jArr = new long[size];
            for (int i4 = 0; i4 < size; i4++) {
                if (drafts.valueAt(i4).get(0) != null) {
                    jArr[i4] = drafts.keyAt(i4);
                }
            }
        }
        final long[] jArr2 = jArr;
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getDialogs$200(i, i2, i3, jArr2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(3:2|3|4)|(7:(10:5|6|7|(13:9|10|(1:12)(1:310)|13|14|15|(27:19|(3:21|(2:23|(1:25)(1:26))|(1:28))(1:172)|29|(2:31|(1:33)(21:170|35|(1:37)(1:169)|38|(1:40)(1:168)|41|(2:43|(1:45))|46|(1:48)|49|(1:51)|52|(1:54)|55|(7:57|(8:59|(1:61)|62|63|64|(10:68|(3:154|155|(1:157))|70|71|(3:139|140|(9:142|143|144|145|(1:147)|74|75|(3:77|78|79)|135))|73|74|75|(0)|135)|162|135)(1:166)|81|(3:106|107|(1:109))|83|(4:85|(1:87)|88|89)(2:91|(4:93|(1:95)|96|97)(2:98|(2:100|(2:102|103)(1:104))(1:105)))|90)(1:167)|80|81|(0)|83|(0)(0)|90))(1:171)|34|35|(0)(0)|38|(0)(0)|41|(0)|46|(0)|49|(0)|52|(0)|55|(0)(0)|80|81|(0)|83|(0)(0)|90|16|17)|173|174|175|176|(9:178|(6:181|182|183|(2:185|186)(1:188)|187|179)|194|195|(6:199|(2:200|(3:202|(2:204|(2:206|207)(1:274))(2:276|277)|275)(2:278|279))|(2:213|(12:215|216|217|218|(1:220)|221|222|223|(2:227|(7:233|(2:237|(7:239|240|241|242|(1:244)|245|246))|262|242|(0)|245|246))|263|245|246)(2:272|273))(2:209|210)|211|196|197)|280|281|282|283)(2:290|291)|284)(1:316)|113|114|115|(1:120)|117|118)|(5:342|(4:345|(4:348|(2:352|353)|354|346)|357|343)|358|359|(9:361|362|363|364|365|366|(1:368)|117|118))|365|366|(0)|117|118)|317|318|319|320|(7:390|391|(4:394|(4:399|(2:401|(1:403))(2:409|(1:411))|404|(2:406|407)(1:408))(2:396|397)|398|392)|412|413|(5:415|(3:419|416|417)|420|421|422)(1:430)|423)(1:322)|323|324|325|(6:327|328|329|330|331|332)(1:385)|333|334|(1:336)|337|(1:339)|340|373|363|364|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(28:1|(3:2|3|4)|(10:5|6|7|(13:9|10|(1:12)(1:310)|13|14|15|(27:19|(3:21|(2:23|(1:25)(1:26))|(1:28))(1:172)|29|(2:31|(1:33)(21:170|35|(1:37)(1:169)|38|(1:40)(1:168)|41|(2:43|(1:45))|46|(1:48)|49|(1:51)|52|(1:54)|55|(7:57|(8:59|(1:61)|62|63|64|(10:68|(3:154|155|(1:157))|70|71|(3:139|140|(9:142|143|144|145|(1:147)|74|75|(3:77|78|79)|135))|73|74|75|(0)|135)|162|135)(1:166)|81|(3:106|107|(1:109))|83|(4:85|(1:87)|88|89)(2:91|(4:93|(1:95)|96|97)(2:98|(2:100|(2:102|103)(1:104))(1:105)))|90)(1:167)|80|81|(0)|83|(0)(0)|90))(1:171)|34|35|(0)(0)|38|(0)(0)|41|(0)|46|(0)|49|(0)|52|(0)|55|(0)(0)|80|81|(0)|83|(0)(0)|90|16|17)|173|174|175|176|(9:178|(6:181|182|183|(2:185|186)(1:188)|187|179)|194|195|(6:199|(2:200|(3:202|(2:204|(2:206|207)(1:274))(2:276|277)|275)(2:278|279))|(2:213|(12:215|216|217|218|(1:220)|221|222|223|(2:227|(7:233|(2:237|(7:239|240|241|242|(1:244)|245|246))|262|242|(0)|245|246))|263|245|246)(2:272|273))(2:209|210)|211|196|197)|280|281|282|283)(2:290|291)|284)(1:316)|113|114|115|(1:120)|117|118)|317|318|319|320|(7:390|391|(4:394|(4:399|(2:401|(1:403))(2:409|(1:411))|404|(2:406|407)(1:408))(2:396|397)|398|392)|412|413|(5:415|(3:419|416|417)|420|421|422)(1:430)|423)(1:322)|323|324|325|(6:327|328|329|330|331|332)(1:385)|333|334|(1:336)|337|(1:339)|340|(5:342|(4:345|(4:348|(2:352|353)|354|346)|357|343)|358|359|(9:361|362|363|364|365|366|(1:368)|117|118))|373|363|364|365|366|(0)|117|118|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(10:5|6|7|(13:9|10|(1:12)(1:310)|13|14|15|(27:19|(3:21|(2:23|(1:25)(1:26))|(1:28))(1:172)|29|(2:31|(1:33)(21:170|35|(1:37)(1:169)|38|(1:40)(1:168)|41|(2:43|(1:45))|46|(1:48)|49|(1:51)|52|(1:54)|55|(7:57|(8:59|(1:61)|62|63|64|(10:68|(3:154|155|(1:157))|70|71|(3:139|140|(9:142|143|144|145|(1:147)|74|75|(3:77|78|79)|135))|73|74|75|(0)|135)|162|135)(1:166)|81|(3:106|107|(1:109))|83|(4:85|(1:87)|88|89)(2:91|(4:93|(1:95)|96|97)(2:98|(2:100|(2:102|103)(1:104))(1:105)))|90)(1:167)|80|81|(0)|83|(0)(0)|90))(1:171)|34|35|(0)(0)|38|(0)(0)|41|(0)|46|(0)|49|(0)|52|(0)|55|(0)(0)|80|81|(0)|83|(0)(0)|90|16|17)|173|174|175|176|(9:178|(6:181|182|183|(2:185|186)(1:188)|187|179)|194|195|(6:199|(2:200|(3:202|(2:204|(2:206|207)(1:274))(2:276|277)|275)(2:278|279))|(2:213|(12:215|216|217|218|(1:220)|221|222|223|(2:227|(7:233|(2:237|(7:239|240|241|242|(1:244)|245|246))|262|242|(0)|245|246))|263|245|246)(2:272|273))(2:209|210)|211|196|197)|280|281|282|283)(2:290|291)|284)(1:316)|113|114|115|(1:120)|117|118)|(5:342|(4:345|(4:348|(2:352|353)|354|346)|357|343)|358|359|(9:361|362|363|364|365|366|(1:368)|117|118))|365|366|(0)|117|118) */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x06e5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x06e7, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x06e8, code lost:
        r3 = r13;
        r5 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x06eb, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x06ef, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x06f6, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x06f9, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06fa, code lost:
        r3 = r13;
        r5 = r15;
        r4 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0709, code lost:
        r1 = r0;
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0750, code lost:
        r9.dispose();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0244, code lost:
        if ((r2 instanceof org.telegram.tgnet.TLRPC$TL_messageActionGameScore) == false) goto L162;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f3 A[Catch: all -> 0x0526, Exception -> 0x052c, TryCatch #43 {Exception -> 0x052c, all -> 0x0526, blocks: (B:114:0x02de, B:116:0x02e4, B:118:0x02ea, B:119:0x02ed, B:121:0x02f3, B:123:0x0303, B:125:0x030d, B:127:0x0315, B:129:0x031f, B:130:0x0326, B:131:0x0330, B:133:0x0338, B:135:0x0343, B:110:0x02be, B:111:0x02c2, B:137:0x035e), top: B:408:0x02e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x030d A[Catch: all -> 0x0526, Exception -> 0x052c, TryCatch #43 {Exception -> 0x052c, all -> 0x0526, blocks: (B:114:0x02de, B:116:0x02e4, B:118:0x02ea, B:119:0x02ed, B:121:0x02f3, B:123:0x0303, B:125:0x030d, B:127:0x0315, B:129:0x031f, B:130:0x0326, B:131:0x0330, B:133:0x0338, B:135:0x0343, B:110:0x02be, B:111:0x02c2, B:137:0x035e), top: B:408:0x02e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04aa A[Catch: Exception -> 0x04ae, all -> 0x04bd, TRY_LEAVE, TryCatch #2 {Exception -> 0x04ae, blocks: (B:194:0x04a1, B:196:0x04a6, B:198:0x04aa), top: B:377:0x04a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x02e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0183 A[Catch: all -> 0x0532, Exception -> 0x0539, TryCatch #14 {all -> 0x0532, blocks: (B:14:0x00af, B:16:0x00b5, B:18:0x00c2, B:20:0x00cf, B:22:0x00d5, B:23:0x00e4, B:25:0x00f3, B:27:0x0104, B:29:0x0125, B:35:0x0135, B:39:0x0154, B:43:0x016b, B:45:0x0183, B:47:0x018b, B:48:0x0190, B:50:0x01aa, B:51:0x01ba, B:53:0x01cc, B:54:0x01d5, B:56:0x01dc, B:57:0x01e3, B:59:0x01ea, B:61:0x01f5, B:63:0x0219, B:64:0x021b, B:65:0x0230, B:67:0x0234, B:69:0x0238, B:71:0x023e, B:73:0x0242, B:79:0x0257, B:81:0x025d, B:83:0x0263, B:85:0x0276, B:87:0x0282, B:95:0x0299, B:98:0x02a1, B:26:0x00ff), top: B:384:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:461:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:462:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01aa A[Catch: all -> 0x0532, Exception -> 0x0539, TryCatch #14 {all -> 0x0532, blocks: (B:14:0x00af, B:16:0x00b5, B:18:0x00c2, B:20:0x00cf, B:22:0x00d5, B:23:0x00e4, B:25:0x00f3, B:27:0x0104, B:29:0x0125, B:35:0x0135, B:39:0x0154, B:43:0x016b, B:45:0x0183, B:47:0x018b, B:48:0x0190, B:50:0x01aa, B:51:0x01ba, B:53:0x01cc, B:54:0x01d5, B:56:0x01dc, B:57:0x01e3, B:59:0x01ea, B:61:0x01f5, B:63:0x0219, B:64:0x021b, B:65:0x0230, B:67:0x0234, B:69:0x0238, B:71:0x023e, B:73:0x0242, B:79:0x0257, B:81:0x025d, B:83:0x0263, B:85:0x0276, B:87:0x0282, B:95:0x0299, B:98:0x02a1, B:26:0x00ff), top: B:384:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cc A[Catch: all -> 0x0532, Exception -> 0x0539, TryCatch #14 {all -> 0x0532, blocks: (B:14:0x00af, B:16:0x00b5, B:18:0x00c2, B:20:0x00cf, B:22:0x00d5, B:23:0x00e4, B:25:0x00f3, B:27:0x0104, B:29:0x0125, B:35:0x0135, B:39:0x0154, B:43:0x016b, B:45:0x0183, B:47:0x018b, B:48:0x0190, B:50:0x01aa, B:51:0x01ba, B:53:0x01cc, B:54:0x01d5, B:56:0x01dc, B:57:0x01e3, B:59:0x01ea, B:61:0x01f5, B:63:0x0219, B:64:0x021b, B:65:0x0230, B:67:0x0234, B:69:0x0238, B:71:0x023e, B:73:0x0242, B:79:0x0257, B:81:0x025d, B:83:0x0263, B:85:0x0276, B:87:0x0282, B:95:0x0299, B:98:0x02a1, B:26:0x00ff), top: B:384:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01dc A[Catch: all -> 0x0532, Exception -> 0x0539, TryCatch #14 {all -> 0x0532, blocks: (B:14:0x00af, B:16:0x00b5, B:18:0x00c2, B:20:0x00cf, B:22:0x00d5, B:23:0x00e4, B:25:0x00f3, B:27:0x0104, B:29:0x0125, B:35:0x0135, B:39:0x0154, B:43:0x016b, B:45:0x0183, B:47:0x018b, B:48:0x0190, B:50:0x01aa, B:51:0x01ba, B:53:0x01cc, B:54:0x01d5, B:56:0x01dc, B:57:0x01e3, B:59:0x01ea, B:61:0x01f5, B:63:0x0219, B:64:0x021b, B:65:0x0230, B:67:0x0234, B:69:0x0238, B:71:0x023e, B:73:0x0242, B:79:0x0257, B:81:0x025d, B:83:0x0263, B:85:0x0276, B:87:0x0282, B:95:0x0299, B:98:0x02a1, B:26:0x00ff), top: B:384:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ea A[Catch: all -> 0x0532, Exception -> 0x0539, TryCatch #14 {all -> 0x0532, blocks: (B:14:0x00af, B:16:0x00b5, B:18:0x00c2, B:20:0x00cf, B:22:0x00d5, B:23:0x00e4, B:25:0x00f3, B:27:0x0104, B:29:0x0125, B:35:0x0135, B:39:0x0154, B:43:0x016b, B:45:0x0183, B:47:0x018b, B:48:0x0190, B:50:0x01aa, B:51:0x01ba, B:53:0x01cc, B:54:0x01d5, B:56:0x01dc, B:57:0x01e3, B:59:0x01ea, B:61:0x01f5, B:63:0x0219, B:64:0x021b, B:65:0x0230, B:67:0x0234, B:69:0x0238, B:71:0x023e, B:73:0x0242, B:79:0x0257, B:81:0x025d, B:83:0x0263, B:85:0x0276, B:87:0x0282, B:95:0x0299, B:98:0x02a1, B:26:0x00ff), top: B:384:0x00af }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x029d  */
    /* JADX WARN: Type inference failed for: r7v32, types: [org.telegram.tgnet.TLRPC$TL_dialog] */
    /* JADX WARN: Type inference failed for: r7v33, types: [java.lang.Object, org.telegram.tgnet.TLRPC$Dialog] */
    /* JADX WARN: Type inference failed for: r7v37, types: [org.telegram.tgnet.TLRPC$TL_dialogFolder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getDialogs$200(int r34, int r35, int r36, long[] r37) {
        /*
            Method dump skipped, instructions count: 1876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getDialogs$200(int, int, int, long[]):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDialogs$199(LongSparseArray longSparseArray) {
        MediaDataController mediaDataController = getMediaDataController();
        mediaDataController.clearDraftsFolderIds();
        if (longSparseArray != null) {
            int size = longSparseArray.size();
            for (int i = 0; i < size; i++) {
                mediaDataController.setDraftFolderId(longSparseArray.keyAt(i), ((Integer) longSparseArray.valueAt(i)).intValue());
            }
        }
    }

    public static void createFirstHoles(long j, SQLitePreparedStatement sQLitePreparedStatement, SQLitePreparedStatement sQLitePreparedStatement2, int i, int i2) throws Exception {
        int i3;
        int i4;
        sQLitePreparedStatement.requery();
        sQLitePreparedStatement.bindLong(1, j);
        if (i2 != 0) {
            sQLitePreparedStatement.bindInteger(2, i2);
            i3 = 3;
        } else {
            i3 = 2;
        }
        int i5 = i3 + 1;
        sQLitePreparedStatement.bindInteger(i3, i == 1 ? 1 : 0);
        sQLitePreparedStatement.bindInteger(i5, i);
        sQLitePreparedStatement.step();
        for (int i6 = 0; i6 < 8; i6++) {
            sQLitePreparedStatement2.requery();
            sQLitePreparedStatement2.bindLong(1, j);
            if (i2 != 0) {
                sQLitePreparedStatement2.bindInteger(2, i2);
                i4 = 3;
            } else {
                i4 = 2;
            }
            int i7 = i4 + 1;
            sQLitePreparedStatement2.bindInteger(i4, i6);
            int i8 = i7 + 1;
            sQLitePreparedStatement2.bindInteger(i7, i == 1 ? 1 : 0);
            sQLitePreparedStatement2.bindInteger(i8, i);
            sQLitePreparedStatement2.step();
        }
    }

    public void updateDialogData(final TLRPC$Dialog tLRPC$Dialog) {
        if (tLRPC$Dialog == null) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda183
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateDialogData$201(tLRPC$Dialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateDialogData$201(org.telegram.tgnet.TLRPC$Dialog r8) {
        /*
            r7 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r7.database     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            r2.<init>()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            java.lang.String r3 = "SELECT data FROM dialogs WHERE did = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            long r3 = r8.f1608id     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            r2.append(r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            org.telegram.SQLite.SQLiteCursor r1 = r1.queryFinalized(r2, r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            boolean r2 = r1.next()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            if (r2 != 0) goto L27
            r1.dispose()
            return
        L27:
            org.telegram.SQLite.SQLiteDatabase r2 = r7.database     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            java.lang.String r3 = "UPDATE dialogs SET data = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r2 = r2.executeFast(r3)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            org.telegram.tgnet.NativeByteBuffer r3 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            int r4 = r8.getObjectSize()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r8.serializeToStream(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r4 = 1
            r2.bindByteBuffer(r4, r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r4 = 2
            long r5 = r8.f1608id     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.bindLong(r4, r5)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.step()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r2.dispose()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r3.reuse()     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L5a
            r1.dispose()
            goto L70
        L52:
            r8 = move-exception
            goto L58
        L54:
            r8 = move-exception
            goto L5c
        L56:
            r8 = move-exception
            r2 = r0
        L58:
            r0 = r1
            goto L72
        L5a:
            r8 = move-exception
            r2 = r0
        L5c:
            r0 = r1
            goto L63
        L5e:
            r8 = move-exception
            r2 = r0
            goto L72
        L61:
            r8 = move-exception
            r2 = r0
        L63:
            r7.checkSQLException(r8)     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L6b
            r0.dispose()
        L6b:
            if (r2 == 0) goto L70
            r2.dispose()
        L70:
            return
        L71:
            r8 = move-exception
        L72:
            if (r0 == 0) goto L77
            r0.dispose()
        L77:
            if (r2 == 0) goto L7c
            r2.dispose()
        L7c:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateDialogData$201(org.telegram.tgnet.TLRPC$Dialog):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x018a, code lost:
        if (r14 < 0) goto L322;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0244 A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_ENTER, TRY_LEAVE, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0278 A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_ENTER, TRY_LEAVE, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02be A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_ENTER, TRY_LEAVE, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02cf A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_ENTER, TRY_LEAVE, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02e6 A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_ENTER, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x030c A[Catch: all -> 0x0225, Exception -> 0x022c, TRY_LEAVE, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x031c A[Catch: all -> 0x0225, Exception -> 0x022c, TryCatch #63 {Exception -> 0x022c, all -> 0x0225, blocks: (B:90:0x021e, B:103:0x0244, B:120:0x0278, B:127:0x029a, B:131:0x02a1, B:138:0x02be, B:144:0x02cf, B:150:0x02e6, B:152:0x030c, B:155:0x0316, B:158:0x031c, B:159:0x0324, B:130:0x029f), top: B:415:0x021e }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03c5 A[Catch: all -> 0x03e7, Exception -> 0x03ef, TRY_LEAVE, TryCatch #64 {Exception -> 0x03ef, all -> 0x03e7, blocks: (B:175:0x03ab, B:180:0x03c5), top: B:413:0x03ab }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04df A[Catch: all -> 0x04ad, Exception -> 0x04b0, TRY_ENTER, TRY_LEAVE, TryCatch #59 {Exception -> 0x04b0, all -> 0x04ad, blocks: (B:209:0x0494, B:219:0x04c0, B:221:0x04c6, B:227:0x04df), top: B:423:0x0494 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04e6 A[Catch: all -> 0x0515, Exception -> 0x051a, TRY_LEAVE, TryCatch #38 {Exception -> 0x051a, all -> 0x0515, blocks: (B:207:0x043c, B:217:0x04b9, B:225:0x04d3, B:228:0x04e2, B:230:0x04e6, B:224:0x04d0, B:216:0x04b5), top: B:465:0x043c }] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x06c6  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x06e4  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x06ee  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x06f3  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0720  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0494 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0392 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:471:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:484:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void putDialogsInternal(org.telegram.tgnet.TLRPC$messages_Dialogs r32, int r33) {
        /*
            Method dump skipped, instructions count: 1848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.putDialogsInternal(org.telegram.tgnet.TLRPC$messages_Dialogs, int):void");
    }

    public void getDialogFolderId(final long j, final IntCallback intCallback, ArrayList<Long> arrayList, Callbacks$Callback1<ArrayList<Integer>> callbacks$Callback1) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda116
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getDialogFolderId$203(j, intCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDialogFolderId$203(long j, final IntCallback intCallback) {
        SQLiteCursor sQLiteCursor = null;
        try {
            try {
                if (this.unknownDialogsIds.get(j) == null) {
                    sQLiteCursor = this.database.queryFinalized("SELECT folder_id FROM dialogs WHERE did = ?", Long.valueOf(j));
                    r2 = sQLiteCursor.next() ? sQLiteCursor.intValue(0) : -1;
                    sQLiteCursor.dispose();
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.IntCallback.this.run(r2);
                    }
                });
                if (sQLiteCursor == null) {
                    return;
                }
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLiteCursor == null) {
                    return;
                }
            }
            sQLiteCursor.dispose();
        } catch (Throwable th) {
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
            throw th;
        }
    }

    public void setDialogsFolderId(final ArrayList<TLRPC$TL_folderPeer> arrayList, final ArrayList<TLRPC$TL_inputFolderPeer> arrayList2, final long j, final int i) {
        if (arrayList == null && arrayList2 == null && j == 0) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda162
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogsFolderId$204(arrayList, arrayList2, i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogsFolderId$204(ArrayList arrayList, ArrayList arrayList2, int i, long j) {
        SQLitePreparedStatement executeFast;
        boolean z;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                this.database.beginTransaction();
                executeFast = this.database.executeFast("UPDATE dialogs SET folder_id = ?, pinned = ? WHERE did = ?");
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (arrayList != null) {
                int size = arrayList.size();
                z = false;
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC$TL_folderPeer tLRPC$TL_folderPeer = (TLRPC$TL_folderPeer) arrayList.get(i2);
                    long peerDialogId = DialogObject.getPeerDialogId(tLRPC$TL_folderPeer.peer);
                    executeFast.requery();
                    executeFast.bindInteger(1, tLRPC$TL_folderPeer.folder_id);
                    if (tLRPC$TL_folderPeer.folder_id == 1) {
                        z = true;
                    }
                    executeFast.bindInteger(2, 0);
                    executeFast.bindLong(3, peerDialogId);
                    executeFast.step();
                    this.unknownDialogsIds.remove(peerDialogId);
                }
            } else if (arrayList2 != null) {
                int size2 = arrayList2.size();
                z = false;
                for (int i3 = 0; i3 < size2; i3++) {
                    TLRPC$TL_inputFolderPeer tLRPC$TL_inputFolderPeer = (TLRPC$TL_inputFolderPeer) arrayList2.get(i3);
                    long peerDialogId2 = DialogObject.getPeerDialogId(tLRPC$TL_inputFolderPeer.peer);
                    executeFast.requery();
                    executeFast.bindInteger(1, tLRPC$TL_inputFolderPeer.folder_id);
                    if (tLRPC$TL_inputFolderPeer.folder_id == 1) {
                        z = true;
                    }
                    executeFast.bindInteger(2, 0);
                    executeFast.bindLong(3, peerDialogId2);
                    executeFast.step();
                    this.unknownDialogsIds.remove(peerDialogId2);
                }
            } else {
                executeFast.requery();
                executeFast.bindInteger(1, i);
                boolean z2 = i == 1;
                executeFast.bindInteger(2, 0);
                executeFast.bindLong(3, j);
                executeFast.step();
                z = z2;
            }
            executeFast.dispose();
            this.database.commitTransaction();
            if (!z) {
                lambda$checkIfFolderEmpty$206(1);
            }
            resetAllUnreadCounters(false);
            SQLiteDatabase sQLiteDatabase = this.database;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.commitTransaction();
            }
        } catch (Exception e2) {
            e = e2;
            sQLitePreparedStatement = executeFast;
            checkSQLException(e);
            SQLiteDatabase sQLiteDatabase2 = this.database;
            if (sQLiteDatabase2 != null) {
                sQLiteDatabase2.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
        } catch (Throwable th2) {
            th = th2;
            sQLitePreparedStatement = executeFast;
            SQLiteDatabase sQLiteDatabase3 = this.database;
            if (sQLiteDatabase3 != null) {
                sQLiteDatabase3.commitTransaction();
            }
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkIfFolderEmptyInternal */
    public void lambda$checkIfFolderEmpty$206(final int i) {
        boolean z = true;
        boolean z2 = i == 2;
        boolean isEmpty = getHiddenChatsController().getHiddenChatDialogs().isEmpty();
        if (i != 1 || isEmpty) {
            SQLiteCursor sQLiteCursor = null;
            if (!z2) {
                try {
                    try {
                        sQLiteCursor = this.database.queryFinalized("SELECT did FROM dialogs WHERE folder_id = ?", Integer.valueOf(i));
                    } catch (Exception e) {
                        checkSQLException(e);
                        if (sQLiteCursor == null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                    throw th;
                }
            }
            if (z2) {
                z = isEmpty;
            } else {
                while (sQLiteCursor.next()) {
                    long longValue = sQLiteCursor.longValue(0);
                    if (!DialogObject.isUserDialog(longValue) && !DialogObject.isEncryptedDialog(longValue)) {
                        TLRPC$Chat chat = getChat(-longValue);
                        if (ChatObject.isNotInChat(chat) || chat.migrated_to != null) {
                        }
                    }
                    z = false;
                }
            }
            if (!z2) {
                sQLiteCursor.dispose();
            }
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.this.lambda$checkIfFolderEmptyInternal$205(i);
                    }
                });
                if (!z2) {
                    this.database.executeFast("DELETE FROM dialogs WHERE did = " + DialogObject.makeFolderDialogId(i)).stepThis().dispose();
                }
            }
            if (sQLiteCursor == null) {
                return;
            }
            sQLiteCursor.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkIfFolderEmptyInternal$205(int i) {
        getMessagesController().onFolderEmpty(i);
    }

    public void checkIfFolderEmpty(final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$checkIfFolderEmpty$206(i);
            }
        });
    }

    public void unpinAllDialogsExceptNew(final ArrayList<Long> arrayList, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda154
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$unpinAllDialogsExceptNew$207(arrayList, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$unpinAllDialogsExceptNew$207(java.util.ArrayList r10, int r11) {
        /*
            r9 = this;
            r0 = 0
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            r1.<init>()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            org.telegram.SQLite.SQLiteDatabase r2 = r9.database     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.lang.String r4 = "SELECT did, folder_id FROM dialogs WHERE pinned > 0 AND did NOT IN (%s)"
            r5 = 1
            java.lang.Object[] r6 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.lang.String r7 = ","
            java.lang.String r10 = android.text.TextUtils.join(r7, r10)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            r7 = 0
            r6[r7] = r10     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.lang.String r10 = java.lang.String.format(r3, r4, r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.lang.Object[] r3 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            org.telegram.SQLite.SQLiteCursor r10 = r2.queryFinalized(r10, r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
        L22:
            boolean r2 = r10.next()     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            if (r2 == 0) goto L4a
            long r2 = r10.longValue(r7)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            int r4 = r10.intValue(r5)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            if (r4 != r11) goto L22
            boolean r4 = org.telegram.messenger.DialogObject.isEncryptedDialog(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            if (r4 != 0) goto L22
            boolean r2 = org.telegram.messenger.DialogObject.isFolderDialogId(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            if (r2 != 0) goto L22
            long r2 = r10.longValue(r7)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            r1.add(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            goto L22
        L4a:
            r10.dispose()     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L87
            boolean r10 = r1.isEmpty()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            if (r10 != 0) goto L9e
            org.telegram.SQLite.SQLiteDatabase r10 = r9.database     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            java.lang.String r11 = "UPDATE dialogs SET pinned = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r10 = r10.executeFast(r11)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8f
            r11 = r7
        L5c:
            int r2 = r1.size()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            if (r11 >= r2) goto L7c
            java.lang.Object r2 = r1.get(r11)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            long r2 = r2.longValue()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            r10.requery()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            r10.bindInteger(r5, r7)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            r4 = 2
            r10.bindLong(r4, r2)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            r10.step()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            int r11 = r11 + 1
            goto L5c
        L7c:
            r10.dispose()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L9f
            goto L9e
        L80:
            r11 = move-exception
            goto L91
        L82:
            r11 = move-exception
            r8 = r0
            r0 = r10
            r10 = r8
            goto La0
        L87:
            r11 = move-exception
            r8 = r0
            r0 = r10
            r10 = r8
            goto L91
        L8c:
            r11 = move-exception
            r10 = r0
            goto La0
        L8f:
            r11 = move-exception
            r10 = r0
        L91:
            r9.checkSQLException(r11)     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto L99
            r0.dispose()
        L99:
            if (r10 == 0) goto L9e
            r10.dispose()
        L9e:
            return
        L9f:
            r11 = move-exception
        La0:
            if (r0 == 0) goto La5
            r0.dispose()
        La5:
            if (r10 == 0) goto Laa
            r10.dispose()
        Laa:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$unpinAllDialogsExceptNew$207(java.util.ArrayList, int):void");
    }

    public void setDialogUnread(final long j, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogUnread$208(j, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0043 A[Catch: all -> 0x003b, Exception -> 0x003d, TryCatch #2 {Exception -> 0x003d, blocks: (B:9:0x0027, B:27:0x0043, B:29:0x0048, B:28:0x0046, B:19:0x0037, B:32:0x0064, B:33:0x0067), top: B:42:0x0002, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0046 A[Catch: all -> 0x003b, Exception -> 0x003d, TryCatch #2 {Exception -> 0x003d, blocks: (B:9:0x0027, B:27:0x0043, B:29:0x0048, B:28:0x0046, B:19:0x0037, B:32:0x0064, B:33:0x0067), top: B:42:0x0002, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0064 A[Catch: all -> 0x003b, Exception -> 0x003d, TryCatch #2 {Exception -> 0x003d, blocks: (B:9:0x0027, B:27:0x0043, B:29:0x0048, B:28:0x0046, B:19:0x0037, B:32:0x0064, B:33:0x0067), top: B:42:0x0002, outer: #4 }] */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.telegram.SQLite.SQLitePreparedStatement, org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$setDialogUnread$208(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = 0
            r1 = 0
            org.telegram.SQLite.SQLiteDatabase r2 = r5.database     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            r3.<init>()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            java.lang.String r4 = "SELECT flags FROM dialogs WHERE did = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            r3.append(r6)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            org.telegram.SQLite.SQLiteCursor r2 = r2.queryFinalized(r3, r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            boolean r3 = r2.next()     // Catch: java.lang.Exception -> L2b java.lang.Throwable -> L61
            if (r3 == 0) goto L26
            int r3 = r2.intValue(r1)     // Catch: java.lang.Exception -> L2b java.lang.Throwable -> L61
            goto L27
        L26:
            r3 = r1
        L27:
            r2.dispose()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            goto L40
        L2b:
            r3 = move-exception
            goto L32
        L2d:
            r6 = move-exception
            r2 = r0
            goto L62
        L30:
            r3 = move-exception
            r2 = r0
        L32:
            r5.checkSQLException(r3)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L3f
            r2.dispose()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            goto L3f
        L3b:
            r6 = move-exception
            goto L71
        L3d:
            r6 = move-exception
            goto L68
        L3f:
            r3 = r1
        L40:
            r2 = 1
            if (r8 == 0) goto L46
            r8 = r3 | 1
            goto L48
        L46:
            r8 = r3 & (-2)
        L48:
            org.telegram.SQLite.SQLiteDatabase r3 = r5.database     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            java.lang.String r4 = "UPDATE dialogs SET flags = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r0 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r0.bindInteger(r2, r8)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r8 = 2
            r0.bindLong(r8, r6)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r0.step()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r0.dispose()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r5.resetAllUnreadCounters(r1)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            goto L6d
        L61:
            r6 = move-exception
        L62:
            if (r2 == 0) goto L67
            r2.dispose()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        L67:
            throw r6     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
        L68:
            r5.checkSQLException(r6)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L70
        L6d:
            r0.dispose()
        L70:
            return
        L71:
            if (r0 == 0) goto L76
            r0.dispose()
        L76:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$setDialogUnread$208(long, boolean):void");
    }

    public void resetAllUnreadCounters(boolean z) {
        int size = this.dialogFilters.size();
        for (int i = 0; i < size; i++) {
            MessagesController.DialogFilter dialogFilter = this.dialogFilters.get(i);
            if (z) {
                if ((dialogFilter.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0) {
                    dialogFilter.pendingUnreadCount = -1;
                }
            } else {
                dialogFilter.pendingUnreadCount = -1;
            }
        }
        int i2 = 0;
        while (i2 < 2) {
            ArrayList<MessagesController.DialogFilter> arrayList = i2 == 0 ? this.sortingFilters : this.archiveSortingFilters;
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                MessagesController.DialogFilter dialogFilter2 = arrayList.get(i3);
                if (z) {
                    if ((dialogFilter2.flags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0) {
                        dialogFilter2.pendingUnreadCount = -1;
                    }
                } else {
                    dialogFilter2.pendingUnreadCount = -1;
                }
            }
            i2++;
        }
        calcUnreadCounters(false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$resetAllUnreadCounters$209();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetAllUnreadCounters$209() {
        ArrayList<MessagesController.DialogFilter> arrayList = getMessagesController().dialogFilters;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).unreadCount = arrayList.get(i).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList2 = getMessagesController().sortingDialogFilters;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            arrayList2.get(i2).unreadCount = arrayList2.get(i2).pendingUnreadCount;
        }
        ArrayList<MessagesController.DialogFilter> arrayList3 = getMessagesController().archiveSortingDialogFilters;
        int size3 = arrayList3.size();
        for (int i3 = 0; i3 < size3; i3++) {
            arrayList3.get(i3).unreadCount = arrayList3.get(i3).pendingUnreadCount;
        }
        this.mainUnreadCount = this.pendingMainUnreadCount;
        this.archiveUnreadCount = this.pendingArchiveUnreadCount;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_READ_DIALOG_MESSAGE));
    }

    public void setDialogPinned(final long j, final int i) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogPinned$210(i, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogPinned$210(int i, long j) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE dialogs SET pinned = ? WHERE did = ?");
                sQLitePreparedStatement.bindInteger(1, i);
                sQLitePreparedStatement.bindLong(2, j);
                sQLitePreparedStatement.step();
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement != null) {
                    sQLitePreparedStatement.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void setDialogsPinned(final ArrayList<Long> arrayList, final ArrayList<Integer> arrayList2) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda161
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$setDialogsPinned$211(arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogsPinned$211(ArrayList arrayList, ArrayList arrayList2) {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                sQLitePreparedStatement = this.database.executeFast("UPDATE dialogs SET pinned = ? WHERE did = ?");
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    sQLitePreparedStatement.requery();
                    sQLitePreparedStatement.bindInteger(1, ((Integer) arrayList2.get(i)).intValue());
                    sQLitePreparedStatement.bindLong(2, ((Long) arrayList.get(i)).longValue());
                    sQLitePreparedStatement.step();
                }
                sQLitePreparedStatement.dispose();
            } catch (Exception e) {
                checkSQLException(e);
                if (sQLitePreparedStatement != null) {
                    sQLitePreparedStatement.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void putDialogs(final TLRPC$messages_Dialogs tLRPC$messages_Dialogs, final int i) {
        if (tLRPC$messages_Dialogs.dialogs.isEmpty()) {
            return;
        }
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda201
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$putDialogs$212(tLRPC$messages_Dialogs, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putDialogs$212(TLRPC$messages_Dialogs tLRPC$messages_Dialogs, int i) {
        putDialogsInternal(tLRPC$messages_Dialogs, i);
        try {
            loadUnreadMessages();
        } catch (Exception e) {
            checkSQLException(e);
        }
    }

    public void getDialogMaxMessageId(final long j, final IntCallback intCallback) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda117
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getDialogMaxMessageId$214(j, intCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r1 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getDialogMaxMessageId$214(long r6, final org.telegram.messenger.MessagesStorage.IntCallback r8) {
        /*
            r5 = this;
            r0 = 1
            int[] r0 = new int[r0]
            r1 = 0
            org.telegram.SQLite.SQLiteDatabase r2 = r5.database     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r3.<init>()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.String r4 = "SELECT MAX(mid) FROM messages_v2 WHERE uid = "
            r3.append(r4)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r3.append(r6)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r7 = 0
            java.lang.Object[] r3 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            org.telegram.SQLite.SQLiteCursor r1 = r2.queryFinalized(r6, r3)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            boolean r6 = r1.next()     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            if (r6 == 0) goto L33
            int r6 = r1.intValue(r7)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            r0[r7] = r6     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2d
            goto L33
        L2b:
            r6 = move-exception
            goto L3f
        L2d:
            r6 = move-exception
            r5.checkSQLException(r6)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L36
        L33:
            r1.dispose()
        L36:
            org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda6 r6 = new org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda6
            r6.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r6)
            return
        L3f:
            if (r1 == 0) goto L44
            r1.dispose()
        L44:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getDialogMaxMessageId$214(long, org.telegram.messenger.MessagesStorage$IntCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getDialogMaxMessageId$213(IntCallback intCallback, int[] iArr) {
        intCallback.run(iArr[0]);
    }

    public int getDialogReadMax(final boolean z, final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Integer[] numArr = {0};
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda211
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getDialogReadMax$215(z, j, numArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return numArr[0].intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (r1 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getDialogReadMax$215(boolean r5, long r6, java.lang.Integer[] r8, java.util.concurrent.CountDownLatch r9) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
            if (r5 == 0) goto L2e
            org.telegram.SQLite.SQLiteDatabase r5 = r4.database     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r2.<init>()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r3 = "SELECT outbox_max FROM dialogs WHERE did = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r2.append(r6)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.Object[] r7 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            org.telegram.SQLite.SQLiteCursor r1 = r5.queryFinalized(r6, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            boolean r5 = r1.next()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r5 == 0) goto L6e
            int r5 = r1.intValue(r0)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r8[r0] = r5     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L6e
        L2e:
            org.telegram.SQLite.SQLiteDatabase r5 = r4.database     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r2.<init>()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r3 = "SELECT last_mid, inbox_max FROM dialogs WHERE did = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r2.append(r6)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.Object[] r7 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            org.telegram.SQLite.SQLiteCursor r1 = r5.queryFinalized(r6, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            boolean r5 = r1.next()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r5 == 0) goto L6e
            int r5 = r1.intValue(r0)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r6 = 1
            int r6 = r1.intValue(r6)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r6 <= r5) goto L5f
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r8[r0] = r5     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L6e
        L5f:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r8[r0] = r5     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L6e
        L66:
            r5 = move-exception
            goto L75
        L68:
            r5 = move-exception
            r4.checkSQLException(r5)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L71
        L6e:
            r1.dispose()
        L71:
            r9.countDown()
            return
        L75:
            if (r1 == 0) goto L7a
            r1.dispose()
        L7a:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getDialogReadMax$215(boolean, long, java.lang.Integer[], java.util.concurrent.CountDownLatch):void");
    }

    public int getChannelPtsSync(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Integer[] numArr = {0};
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda128
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getChannelPtsSync$216(j, numArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return numArr[0].intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getChannelPtsSync$216(long r5, java.lang.Integer[] r7, java.util.concurrent.CountDownLatch r8) {
        /*
            r4 = this;
            r0 = 0
            org.telegram.SQLite.SQLiteDatabase r1 = r4.database     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r2.<init>()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.lang.String r3 = "SELECT pts FROM dialogs WHERE did = "
            r2.append(r3)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            long r5 = -r5
            r2.append(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r6 = 0
            java.lang.Object[] r2 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            org.telegram.SQLite.SQLiteCursor r0 = r1.queryFinalized(r5, r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            boolean r5 = r0.next()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            if (r5 == 0) goto L35
            int r5 = r0.intValue(r6)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r7[r6] = r5     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            goto L35
        L2d:
            r5 = move-exception
            goto L41
        L2f:
            r5 = move-exception
            r4.checkSQLException(r5)     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L38
        L35:
            r0.dispose()
        L38:
            r8.countDown()     // Catch: java.lang.Exception -> L3c
            goto L40
        L3c:
            r5 = move-exception
            r4.checkSQLException(r5)
        L40:
            return
        L41:
            if (r0 == 0) goto L46
            r0.dispose()
        L46:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$getChannelPtsSync$216(long, java.lang.Integer[], java.util.concurrent.CountDownLatch):void");
    }

    public TLRPC$User getUserSync(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final TLRPC$User[] tLRPC$UserArr = new TLRPC$User[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda216
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getUserSync$217(tLRPC$UserArr, j, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return tLRPC$UserArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getUserSync$217(TLRPC$User[] tLRPC$UserArr, long j, CountDownLatch countDownLatch) {
        tLRPC$UserArr[0] = getUser(j);
        countDownLatch.countDown();
    }

    public TLRPC$Chat getChatSync(final long j) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final TLRPC$Chat[] tLRPC$ChatArr = new TLRPC$Chat[1];
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda214
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$getChatSync$218(tLRPC$ChatArr, j, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            checkSQLException(e);
        }
        return tLRPC$ChatArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getChatSync$218(TLRPC$Chat[] tLRPC$ChatArr, long j, CountDownLatch countDownLatch) {
        tLRPC$ChatArr[0] = getChat(j);
        countDownLatch.countDown();
    }

    public TLRPC$User getUser(long j) {
        try {
            ArrayList<TLRPC$User> arrayList = new ArrayList<>();
            getUsersInternal("" + j, arrayList);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList.get(0);
        } catch (Exception e) {
            checkSQLException(e);
            return null;
        }
    }

    public ArrayList<TLRPC$User> getUsers(ArrayList<Long> arrayList) {
        ArrayList<TLRPC$User> arrayList2 = new ArrayList<>();
        try {
            getUsersInternal(TextUtils.join(",", arrayList), arrayList2);
        } catch (Exception e) {
            arrayList2.clear();
            checkSQLException(e);
        }
        return arrayList2;
    }

    public ArrayList<TLRPC$Chat> getChats(ArrayList<Long> arrayList) {
        ArrayList<TLRPC$Chat> arrayList2 = new ArrayList<>();
        try {
            getChatsInternal(TextUtils.join(",", arrayList), arrayList2);
        } catch (Exception e) {
            arrayList2.clear();
            checkSQLException(e);
        }
        return arrayList2;
    }

    public TLRPC$Chat getChat(long j) {
        try {
            ArrayList<TLRPC$Chat> arrayList = new ArrayList<>();
            getChatsInternal("" + j, arrayList);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList.get(0);
        } catch (Exception e) {
            checkSQLException(e);
            return null;
        }
    }

    public TLRPC$EncryptedChat getEncryptedChat(long j) {
        try {
            ArrayList<TLRPC$EncryptedChat> arrayList = new ArrayList<>();
            getEncryptedChatsInternal("" + j, arrayList, null);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList.get(0);
        } catch (Exception e) {
            checkSQLException(e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x02e6, code lost:
        r6 = (org.telegram.p043ui.Adapters.DialogsSearchAdapter.DialogSearchResult) r9.get(r14.f1749id);
        r7 = r14.status;
        r26 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02f2, code lost:
        if (r7 == null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02f4, code lost:
        r7.expires = r1.intValue(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02fc, code lost:
        if (r10 != 1) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02fe, code lost:
        r6.name = org.telegram.messenger.AndroidUtilities.generateSearchName(r14.first_name, r14.last_name, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0309, code lost:
        r6.name = org.telegram.messenger.AndroidUtilities.generateSearchName("@" + org.telegram.messenger.UserObject.getPublicUsername(r14), null, "@" + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0332, code lost:
        r6.object = r14;
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03f3, code lost:
        if (r3.contains(" " + r7) != false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0181, code lost:
        if (r11.startsWith(r6) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0053, code lost:
        if (r15.length() == 0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01dd A[Catch: all -> 0x01ac, Exception -> 0x01b1, TryCatch #8 {Exception -> 0x01b1, all -> 0x01ac, blocks: (B:91:0x0190, B:99:0x01bc, B:104:0x01cc, B:106:0x01dd, B:108:0x01ee), top: B:376:0x0190 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01ee A[Catch: all -> 0x01ac, Exception -> 0x01b1, TRY_LEAVE, TryCatch #8 {Exception -> 0x01b1, all -> 0x01ac, blocks: (B:91:0x0190, B:99:0x01bc, B:104:0x01cc, B:106:0x01dd, B:108:0x01ee), top: B:376:0x0190 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0216 A[Catch: all -> 0x00ac, Exception -> 0x00b2, TRY_ENTER, TRY_LEAVE, TryCatch #7 {Exception -> 0x00b2, all -> 0x00ac, blocks: (B:28:0x0092, B:83:0x017d, B:113:0x0216, B:170:0x0380, B:224:0x0484, B:283:0x067c, B:285:0x0686, B:287:0x068a, B:293:0x06a0), top: B:378:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02b9 A[Catch: all -> 0x07e6, Exception -> 0x07ec, TryCatch #10 {Exception -> 0x07ec, all -> 0x07e6, blocks: (B:36:0x00cc, B:38:0x00d2, B:41:0x00f0, B:44:0x00fc, B:46:0x0102, B:49:0x010d, B:63:0x0125, B:65:0x012f, B:69:0x013b, B:71:0x0146, B:75:0x0153, B:77:0x0161, B:79:0x016e, B:115:0x0236, B:117:0x023c, B:120:0x0250, B:122:0x0257, B:126:0x0268, B:128:0x0272, B:131:0x028b, B:133:0x0291, B:137:0x02a9, B:144:0x02b9, B:146:0x02c4, B:149:0x02d7, B:162:0x0342, B:152:0x02e6, B:154:0x02f4, B:157:0x02fe, B:159:0x0332, B:158:0x0309, B:165:0x0364, B:171:0x039c, B:173:0x03a2, B:178:0x03bb, B:180:0x03c3, B:183:0x03da, B:185:0x03e0, B:206:0x0435, B:187:0x03f5, B:189:0x03fc, B:192:0x040d, B:199:0x0425, B:204:0x042f, B:208:0x043d, B:210:0x0441, B:212:0x0447, B:214:0x044d, B:217:0x046e, B:225:0x04a2, B:227:0x04a8, B:230:0x04bc, B:232:0x04c5, B:236:0x04d1, B:238:0x04d9, B:241:0x04f0, B:243:0x04f6, B:247:0x050e, B:252:0x0519, B:254:0x0520, B:256:0x052f, B:258:0x0535, B:262:0x0547, B:264:0x05d6, B:265:0x05d8, B:267:0x05e4, B:270:0x05ee, B:272:0x0640, B:271:0x0617, B:273:0x064a, B:276:0x0666, B:304:0x06dd, B:306:0x06e3, B:309:0x06ef, B:312:0x0703, B:314:0x070c, B:318:0x0719, B:320:0x0721, B:323:0x0738, B:325:0x073e, B:329:0x0756, B:335:0x0764, B:337:0x076d, B:339:0x077c, B:342:0x0786, B:344:0x07bd, B:343:0x0793, B:345:0x07c4, B:349:0x07e0), top: B:372:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0380 A[Catch: all -> 0x00ac, Exception -> 0x00b2, TRY_ENTER, TRY_LEAVE, TryCatch #7 {Exception -> 0x00b2, all -> 0x00ac, blocks: (B:28:0x0092, B:83:0x017d, B:113:0x0216, B:170:0x0380, B:224:0x0484, B:283:0x067c, B:285:0x0686, B:287:0x068a, B:293:0x06a0), top: B:378:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x064a A[Catch: all -> 0x07e6, Exception -> 0x07ec, LOOP:6: B:235:0x04cf->B:273:0x064a, LOOP_END, TryCatch #10 {Exception -> 0x07ec, all -> 0x07e6, blocks: (B:36:0x00cc, B:38:0x00d2, B:41:0x00f0, B:44:0x00fc, B:46:0x0102, B:49:0x010d, B:63:0x0125, B:65:0x012f, B:69:0x013b, B:71:0x0146, B:75:0x0153, B:77:0x0161, B:79:0x016e, B:115:0x0236, B:117:0x023c, B:120:0x0250, B:122:0x0257, B:126:0x0268, B:128:0x0272, B:131:0x028b, B:133:0x0291, B:137:0x02a9, B:144:0x02b9, B:146:0x02c4, B:149:0x02d7, B:162:0x0342, B:152:0x02e6, B:154:0x02f4, B:157:0x02fe, B:159:0x0332, B:158:0x0309, B:165:0x0364, B:171:0x039c, B:173:0x03a2, B:178:0x03bb, B:180:0x03c3, B:183:0x03da, B:185:0x03e0, B:206:0x0435, B:187:0x03f5, B:189:0x03fc, B:192:0x040d, B:199:0x0425, B:204:0x042f, B:208:0x043d, B:210:0x0441, B:212:0x0447, B:214:0x044d, B:217:0x046e, B:225:0x04a2, B:227:0x04a8, B:230:0x04bc, B:232:0x04c5, B:236:0x04d1, B:238:0x04d9, B:241:0x04f0, B:243:0x04f6, B:247:0x050e, B:252:0x0519, B:254:0x0520, B:256:0x052f, B:258:0x0535, B:262:0x0547, B:264:0x05d6, B:265:0x05d8, B:267:0x05e4, B:270:0x05ee, B:272:0x0640, B:271:0x0617, B:273:0x064a, B:276:0x0666, B:304:0x06dd, B:306:0x06e3, B:309:0x06ef, B:312:0x0703, B:314:0x070c, B:318:0x0719, B:320:0x0721, B:323:0x0738, B:325:0x073e, B:329:0x0756, B:335:0x0764, B:337:0x076d, B:339:0x077c, B:342:0x0786, B:344:0x07bd, B:343:0x0793, B:345:0x07c4, B:349:0x07e0), top: B:372:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x06a0 A[Catch: all -> 0x00ac, Exception -> 0x00b2, TRY_ENTER, TRY_LEAVE, TryCatch #7 {Exception -> 0x00b2, all -> 0x00ac, blocks: (B:28:0x0092, B:83:0x017d, B:113:0x0216, B:170:0x0380, B:224:0x0484, B:283:0x067c, B:285:0x0686, B:287:0x068a, B:293:0x06a0), top: B:378:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x06c6  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x06e3 A[Catch: all -> 0x07e6, Exception -> 0x07ec, TryCatch #10 {Exception -> 0x07ec, all -> 0x07e6, blocks: (B:36:0x00cc, B:38:0x00d2, B:41:0x00f0, B:44:0x00fc, B:46:0x0102, B:49:0x010d, B:63:0x0125, B:65:0x012f, B:69:0x013b, B:71:0x0146, B:75:0x0153, B:77:0x0161, B:79:0x016e, B:115:0x0236, B:117:0x023c, B:120:0x0250, B:122:0x0257, B:126:0x0268, B:128:0x0272, B:131:0x028b, B:133:0x0291, B:137:0x02a9, B:144:0x02b9, B:146:0x02c4, B:149:0x02d7, B:162:0x0342, B:152:0x02e6, B:154:0x02f4, B:157:0x02fe, B:159:0x0332, B:158:0x0309, B:165:0x0364, B:171:0x039c, B:173:0x03a2, B:178:0x03bb, B:180:0x03c3, B:183:0x03da, B:185:0x03e0, B:206:0x0435, B:187:0x03f5, B:189:0x03fc, B:192:0x040d, B:199:0x0425, B:204:0x042f, B:208:0x043d, B:210:0x0441, B:212:0x0447, B:214:0x044d, B:217:0x046e, B:225:0x04a2, B:227:0x04a8, B:230:0x04bc, B:232:0x04c5, B:236:0x04d1, B:238:0x04d9, B:241:0x04f0, B:243:0x04f6, B:247:0x050e, B:252:0x0519, B:254:0x0520, B:256:0x052f, B:258:0x0535, B:262:0x0547, B:264:0x05d6, B:265:0x05d8, B:267:0x05e4, B:270:0x05ee, B:272:0x0640, B:271:0x0617, B:273:0x064a, B:276:0x0666, B:304:0x06dd, B:306:0x06e3, B:309:0x06ef, B:312:0x0703, B:314:0x070c, B:318:0x0719, B:320:0x0721, B:323:0x0738, B:325:0x073e, B:329:0x0756, B:335:0x0764, B:337:0x076d, B:339:0x077c, B:342:0x0786, B:344:0x07bd, B:343:0x0793, B:345:0x07c4, B:349:0x07e0), top: B:372:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x07c4 A[Catch: all -> 0x07e6, Exception -> 0x07ec, LOOP:10: B:317:0x0717->B:345:0x07c4, LOOP_END, TryCatch #10 {Exception -> 0x07ec, all -> 0x07e6, blocks: (B:36:0x00cc, B:38:0x00d2, B:41:0x00f0, B:44:0x00fc, B:46:0x0102, B:49:0x010d, B:63:0x0125, B:65:0x012f, B:69:0x013b, B:71:0x0146, B:75:0x0153, B:77:0x0161, B:79:0x016e, B:115:0x0236, B:117:0x023c, B:120:0x0250, B:122:0x0257, B:126:0x0268, B:128:0x0272, B:131:0x028b, B:133:0x0291, B:137:0x02a9, B:144:0x02b9, B:146:0x02c4, B:149:0x02d7, B:162:0x0342, B:152:0x02e6, B:154:0x02f4, B:157:0x02fe, B:159:0x0332, B:158:0x0309, B:165:0x0364, B:171:0x039c, B:173:0x03a2, B:178:0x03bb, B:180:0x03c3, B:183:0x03da, B:185:0x03e0, B:206:0x0435, B:187:0x03f5, B:189:0x03fc, B:192:0x040d, B:199:0x0425, B:204:0x042f, B:208:0x043d, B:210:0x0441, B:212:0x0447, B:214:0x044d, B:217:0x046e, B:225:0x04a2, B:227:0x04a8, B:230:0x04bc, B:232:0x04c5, B:236:0x04d1, B:238:0x04d9, B:241:0x04f0, B:243:0x04f6, B:247:0x050e, B:252:0x0519, B:254:0x0520, B:256:0x052f, B:258:0x0535, B:262:0x0547, B:264:0x05d6, B:265:0x05d8, B:267:0x05e4, B:270:0x05ee, B:272:0x0640, B:271:0x0617, B:273:0x064a, B:276:0x0666, B:304:0x06dd, B:306:0x06e3, B:309:0x06ef, B:312:0x0703, B:314:0x070c, B:318:0x0719, B:320:0x0721, B:323:0x0738, B:325:0x073e, B:329:0x0756, B:335:0x0764, B:337:0x076d, B:339:0x077c, B:342:0x0786, B:344:0x07bd, B:343:0x0793, B:345:0x07c4, B:349:0x07e0), top: B:372:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0804  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x080c  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0519 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0764 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:437:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void localSearch(int r28, java.lang.String r29, java.util.ArrayList<java.lang.Object> r30, java.util.ArrayList<java.lang.CharSequence> r31, java.util.ArrayList<org.telegram.tgnet.TLRPC$User> r32, java.util.ArrayList<java.lang.Long> r33, int r34) {
        /*
            Method dump skipped, instructions count: 2064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.localSearch(int, java.lang.String, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$localSearch$219(DialogsSearchAdapter.DialogSearchResult dialogSearchResult, DialogsSearchAdapter.DialogSearchResult dialogSearchResult2) {
        int i = dialogSearchResult.date;
        int i2 = dialogSearchResult2.date;
        if (i < i2) {
            return 1;
        }
        return i > i2 ? -1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004e, code lost:
        if (0 == 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.Integer> getCachedMessagesInRange(long r7, int r9, int r10) {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            org.telegram.SQLite.SQLiteDatabase r2 = r6.database     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            java.lang.String r4 = "SELECT mid FROM messages_v2 WHERE uid = %d AND date >= %d AND date <= %d"
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r8 = 0
            r5[r8] = r7     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r7 = 1
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r5[r7] = r9     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r7 = 2
            java.lang.Integer r9 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r5[r7] = r9     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            java.lang.String r7 = java.lang.String.format(r3, r4, r5)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            java.lang.Object[] r9 = new java.lang.Object[r8]     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            org.telegram.SQLite.SQLiteCursor r1 = r2.queryFinalized(r7, r9)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
        L2e:
            boolean r7 = r1.next()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L48
            if (r7 == 0) goto L44
            int r7 = r1.intValue(r8)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L48
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L48
            r0.add(r7)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L48
            goto L2e
        L40:
            r7 = move-exception
            r6.checkSQLException(r7)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
        L44:
            r1.dispose()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            goto L50
        L48:
            r7 = move-exception
            goto L54
        L4a:
            r7 = move-exception
            r6.checkSQLException(r7)     // Catch: java.lang.Throwable -> L48
            if (r1 == 0) goto L53
        L50:
            r1.dispose()
        L53:
            return r0
        L54:
            if (r1 == 0) goto L59
            r1.dispose()
        L59:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.getCachedMessagesInRange(long, int, int):java.util.ArrayList");
    }

    public void updateUnreadReactionsCount(long j, int i, int i2) {
        updateUnreadReactionsCount(j, i, i2, false);
    }

    public void updateUnreadReactionsCount(final long j, final int i, final int i2, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateUnreadReactionsCount$220(i, z, j, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateUnreadReactionsCount$220(int r8, boolean r9, long r10, int r12) {
        /*
            r7 = this;
            r0 = 0
            r1 = 2
            r2 = 1
            r3 = 0
            if (r8 == 0) goto L81
            if (r9 == 0) goto L34
            org.telegram.SQLite.SQLiteDatabase r9 = r7.database     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.String r4 = "SELECT unread_reactions FROM topics WHERE did = %d AND topic_id = %d"
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.Long r6 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r5[r3] = r6     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.Integer r6 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r5[r2] = r6     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.String r4 = java.lang.String.format(r4, r5)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.Object[] r5 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            org.telegram.SQLite.SQLiteCursor r9 = r9.queryFinalized(r4, r5)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            boolean r4 = r9.next()     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            if (r4 == 0) goto L2f
            int r4 = r9.intValue(r3)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            goto L30
        L2f:
            r4 = r3
        L30:
            r9.dispose()     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            goto L35
        L34:
            r4 = r3
        L35:
            org.telegram.SQLite.SQLiteDatabase r9 = r7.database     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.String r5 = "UPDATE topics SET unread_reactions = ? WHERE did = ? AND topic_id = ?"
            org.telegram.SQLite.SQLitePreparedStatement r9 = r9.executeFast(r5)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            int r4 = r4 + r12
            int r3 = java.lang.Math.max(r4, r3)     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            r9.bindInteger(r2, r3)     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            r9.bindLong(r1, r10)     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            r3 = 3
            r9.bindInteger(r3, r8)     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            r9.step()     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            r9.dispose()     // Catch: java.lang.Throwable -> L69 org.telegram.SQLite.SQLiteException -> L6c
            if (r12 != 0) goto Lc0
            org.telegram.SQLite.SQLiteDatabase r9 = r7.database     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            java.lang.String r12 = "UPDATE reaction_mentions_topics SET state = 0 WHERE dialog_id = ? AND topic_id = ? "
            org.telegram.SQLite.SQLitePreparedStatement r0 = r9.executeFast(r12)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r0.bindLong(r2, r10)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r0.bindInteger(r1, r8)     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r0.step()     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            r0.dispose()     // Catch: java.lang.Throwable -> L6f org.telegram.SQLite.SQLiteException -> L71
            goto Lc0
        L69:
            r8 = move-exception
            r0 = r9
            goto L7b
        L6c:
            r8 = move-exception
            r0 = r9
            goto L72
        L6f:
            r8 = move-exception
            goto L7b
        L71:
            r8 = move-exception
        L72:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto Lc0
            r0.dispose()
            goto Lc0
        L7b:
            if (r0 == 0) goto L80
            r0.dispose()
        L80:
            throw r8
        L81:
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            java.lang.String r9 = "UPDATE dialogs SET unread_reactions = ? WHERE did = ?"
            org.telegram.SQLite.SQLitePreparedStatement r8 = r8.executeFast(r9)     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            int r9 = java.lang.Math.max(r12, r3)     // Catch: java.lang.Throwable -> Lad org.telegram.SQLite.SQLiteException -> Lb1
            r8.bindInteger(r2, r9)     // Catch: java.lang.Throwable -> Lad org.telegram.SQLite.SQLiteException -> Lb1
            r8.bindLong(r1, r10)     // Catch: java.lang.Throwable -> Lad org.telegram.SQLite.SQLiteException -> Lb1
            r8.step()     // Catch: java.lang.Throwable -> Lad org.telegram.SQLite.SQLiteException -> Lb1
            r8.dispose()     // Catch: java.lang.Throwable -> Lad org.telegram.SQLite.SQLiteException -> Lb1
            if (r12 != 0) goto Lc0
            org.telegram.SQLite.SQLiteDatabase r8 = r7.database     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            java.lang.String r9 = "UPDATE reaction_mentions SET state = 0 WHERE dialog_id = ?"
            org.telegram.SQLite.SQLitePreparedStatement r0 = r8.executeFast(r9)     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            r0.bindLong(r2, r10)     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            r0.step()     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            r0.dispose()     // Catch: java.lang.Throwable -> Lb5 org.telegram.SQLite.SQLiteException -> Lb7
            goto Lc0
        Lad:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto Lc1
        Lb1:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto Lb8
        Lb5:
            r8 = move-exception
            goto Lc1
        Lb7:
            r8 = move-exception
        Lb8:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> Lb5
            if (r0 == 0) goto Lc0
            r0.dispose()
        Lc0:
            return
        Lc1:
            if (r0 == 0) goto Lc6
            r0.dispose()
        Lc6:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateUnreadReactionsCount$220(int, boolean, long, int):void");
    }

    public void markMessageReactionsAsRead(final long j, final int i, final int i2, boolean z) {
        if (z) {
            getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    MessagesStorage.this.lambda$markMessageReactionsAsRead$221(j, i, i2);
                }
            });
        } else {
            lambda$markMessageReactionsAsRead$221(j, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* renamed from: markMessageReactionsAsReadInternal */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$markMessageReactionsAsRead$221(long r18, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$markMessageReactionsAsRead$221(long, int, int):void");
    }

    public void updateDialogUnreadReactions(final long j, final int i, final int i2, final boolean z) {
        this.storageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.MessagesStorage$$ExternalSyntheticLambda208
            @Override // java.lang.Runnable
            public final void run() {
                MessagesStorage.this.lambda$updateDialogUnreadReactions$222(z, j, i2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateDialogUnreadReactions$222(boolean r10, long r11, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.MessagesStorage.lambda$updateDialogUnreadReactions$222(boolean, long, int, int):void");
    }

    private boolean isForum(long j) {
        int i = this.dialogIsForum.get(j, -1);
        if (i == -1) {
            TLRPC$Chat chat = getChat(-j);
            i = (chat == null || !chat.forum) ? 0 : 1;
            this.dialogIsForum.put(j, i);
        }
        return i == 1;
    }

    /* loaded from: classes4.dex */
    public static class TopicKey {
        public long dialogId;
        public int topicId;

        /* renamed from: of */
        public static TopicKey m95of(long j, int i) {
            TopicKey topicKey = new TopicKey();
            topicKey.dialogId = j;
            topicKey.topicId = i;
            return topicKey;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            TopicKey topicKey = (TopicKey) obj;
            return this.dialogId == topicKey.dialogId && this.topicId == topicKey.topicId;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.dialogId), Integer.valueOf(this.topicId));
        }

        public String toString() {
            return "TopicKey{dialogId=" + this.dialogId + ", topicId=" + this.topicId + '}';
        }
    }
}
