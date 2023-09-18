package org.telegram.p043ui.Stories;

import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import androidx.collection.LongSparseArray;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.models.backup.Backup;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Stories.SelfStoryViewsPage;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.recorder.DraftsController;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p043ui.Stories.recorder.StoryUploadingService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputMedia;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$MediaArea;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_contacts_block;
import org.telegram.tgnet.TLRPC$TL_contacts_blocked;
import org.telegram.tgnet.TLRPC$TL_contacts_blockedSlice;
import org.telegram.tgnet.TLRPC$TL_contacts_getBlocked;
import org.telegram.tgnet.TLRPC$TL_contacts_setBlocked;
import org.telegram.tgnet.TLRPC$TL_contacts_toggleStoriesHidden;
import org.telegram.tgnet.TLRPC$TL_contacts_unblock;
import org.telegram.tgnet.TLRPC$TL_documentAttributeHasStickers;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedPhoto;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
import org.telegram.tgnet.TLRPC$TL_peerBlocked;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmpty;
import org.telegram.tgnet.TLRPC$TL_storiesStealthMode;
import org.telegram.tgnet.TLRPC$TL_stories_allStories;
import org.telegram.tgnet.TLRPC$TL_stories_allStoriesNotModified;
import org.telegram.tgnet.TLRPC$TL_stories_deleteStories;
import org.telegram.tgnet.TLRPC$TL_stories_editStory;
import org.telegram.tgnet.TLRPC$TL_stories_getAllStories;
import org.telegram.tgnet.TLRPC$TL_stories_getPinnedStories;
import org.telegram.tgnet.TLRPC$TL_stories_getStoriesArchive;
import org.telegram.tgnet.TLRPC$TL_stories_getStoriesByID;
import org.telegram.tgnet.TLRPC$TL_stories_getUserStories;
import org.telegram.tgnet.TLRPC$TL_stories_readStories;
import org.telegram.tgnet.TLRPC$TL_stories_sendReaction;
import org.telegram.tgnet.TLRPC$TL_stories_sendStory;
import org.telegram.tgnet.TLRPC$TL_stories_stories;
import org.telegram.tgnet.TLRPC$TL_stories_storyViewsList;
import org.telegram.tgnet.TLRPC$TL_stories_togglePinned;
import org.telegram.tgnet.TLRPC$TL_stories_userStories;
import org.telegram.tgnet.TLRPC$TL_storyItem;
import org.telegram.tgnet.TLRPC$TL_storyItemDeleted;
import org.telegram.tgnet.TLRPC$TL_storyItemSkipped;
import org.telegram.tgnet.TLRPC$TL_storyView;
import org.telegram.tgnet.TLRPC$TL_updateStory;
import org.telegram.tgnet.TLRPC$TL_updateStoryID;
import org.telegram.tgnet.TLRPC$TL_userStories;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import p033j$.util.Comparator;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Stories.StoriesController */
/* loaded from: classes7.dex */
public class StoriesController {
    public static final Comparator<TLRPC$StoryItem> storiesComparator = Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda17
        @Override // p033j$.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            int i;
            i = ((TLRPC$StoryItem) obj).date;
            return i;
        }
    });
    private int blocklistCount;
    private int blocklistReqId;
    private final int currentAccount;
    private final DraftsController draftsController;
    boolean hasMore;
    private boolean isAvatarsEnabled;
    private boolean isBarEnabled;
    private boolean isEnabled;
    private boolean isProfileAvatarEnabled;
    boolean loadingFromDatabase;
    private boolean loadingFromServer;
    private boolean loadingFromServerHidden;
    SharedPreferences mainSettings;
    final ViewsForSelfStoriesRequester pollingViewsForSelfStoriesRequester;
    final Runnable sortStoriesRunnable;
    String state;
    private String stateHidden;
    private TLRPC$TL_storiesStealthMode stealthMode;
    private boolean storiesReadLoaded;
    StoriesStorage storiesStorage;
    private StoryLimit storyLimitCached;
    private boolean storyLimitFetched;
    private int totalStoriesCount;
    private int totalStoriesCountHidden;
    private final ArrayList<UploadingStory> uploadingStories = new ArrayList<>();
    private final ArrayList<UploadingStory> uploadingAndEditingStories = new ArrayList<>();
    private final HashMap<Integer, UploadingStory> editingStories = new HashMap<>();
    public LongSparseIntArray dialogIdToMaxReadId = new LongSparseIntArray();
    private ArrayList<TLRPC$TL_userStories> dialogListStories = new ArrayList<>();
    private ArrayList<TLRPC$TL_userStories> hiddenListStories = new ArrayList<>();
    private LongSparseArray<TLRPC$TL_userStories> allStoriesMap = new LongSparseArray<>();
    private LongSparseIntArray loadingDialogsStories = new LongSparseIntArray();
    public SparseArray<SelfStoryViewsPage.ViewsModel> selfViewsModel = new SparseArray<>();
    private boolean hasMoreHidden = true;
    private boolean firstLoad = true;
    HashSet<Long> allStoriesLoading = new HashSet<>();
    HashSet<Long> loadingAllStories = new HashSet<>();
    LongSparseArray<TLRPC$StoryItem> resolvedStories = new LongSparseArray<>();
    private final HashMap<Long, StoriesList>[] storiesLists = new HashMap[2];
    private final java.util.Comparator<TLRPC$TL_userStories> userStoriesComparator = new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda16
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$new$22;
            lambda$new$22 = StoriesController.this.lambda$new$22((TLRPC$TL_userStories) obj, (TLRPC$TL_userStories) obj2);
            return lambda$new$22;
        }
    };
    public HashSet<Long> blocklist = new HashSet<>();
    private LongSparseArray<Boolean> blockedOverride = new LongSparseArray<>();
    public boolean blocklistFull = false;
    private boolean blocklistLoadingReset = false;
    private boolean blocklistLoading = false;
    private long lastBlocklistRequested = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$markStoryAsRead$17(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$processAllStoriesResponse$9() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setStoryReaction$21(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toggleHidden$6(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public boolean isBarEnabled() {
        return this.isEnabled && this.isBarEnabled;
    }

    public boolean isAvatarsEnabled() {
        return this.isEnabled && this.isAvatarsEnabled;
    }

    public boolean isProfileAvatarEnabled() {
        return this.isEnabled && this.isProfileAvatarEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesEnabled(), z).apply();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void setBarEnabled(boolean z) {
        this.isBarEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesBarEnabled(), z).apply();
    }

    public void setAvatarsEnabled(boolean z) {
        this.isAvatarsEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesAvatarsEnabled(), z).apply();
    }

    public void setProfileAvatarEnabled(boolean z) {
        this.isProfileAvatarEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesProfileAvatarEnabled(), z).apply();
    }

    public void restoreBackup(Backup backup) {
        Boolean bool = Boolean.TRUE;
        setEnabled(bool.equals(backup.isStoriesEnabled()));
        setBarEnabled(bool.equals(backup.isStoriesBarEnabled()));
        setAvatarsEnabled(bool.equals(backup.isStoriesAvatarsEnabled()));
        setProfileAvatarEnabled(bool.equals(backup.isStoriesProfileAvatarEnabled()));
    }

    public StoriesController(final int i) {
        this.state = "";
        this.currentAccount = i;
        this.storiesStorage = new StoriesStorage(i);
        SharedPreferences mainSettings = MessagesController.getInstance(i).getMainSettings();
        this.mainSettings = mainSettings;
        this.state = mainSettings.getString("last_stories_state", "");
        this.stateHidden = this.mainSettings.getString("last_stories_state_hidden", "");
        this.totalStoriesCountHidden = this.mainSettings.getInt("total_stores_hidden", 0);
        this.totalStoriesCount = this.mainSettings.getInt("total_stores", 0);
        this.storiesReadLoaded = this.mainSettings.getBoolean("read_loaded", false);
        this.stealthMode = readStealthMode(this.mainSettings.getString("stories_stealth_mode", null));
        this.isEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesEnabled(), TelegramPreferenceKeys.User.Default.isStoriesEnabled());
        this.isBarEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesBarEnabled(), TelegramPreferenceKeys.User.Default.isStoriesBarEnabled());
        this.isAvatarsEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesAvatarsEnabled(), TelegramPreferenceKeys.User.Default.isStoriesAvatarsEnabled());
        this.isProfileAvatarEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesProfileAvatarEnabled(), TelegramPreferenceKeys.User.Default.isStoriesProfileAvatarEnabled());
        this.pollingViewsForSelfStoriesRequester = new ViewsForSelfStoriesRequester(this, i);
        this.storiesStorage.getMaxReadIds(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                StoriesController.this.lambda$new$1((LongSparseIntArray) obj);
            }
        });
        this.sortStoriesRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$new$2(i);
            }
        };
        this.draftsController = new DraftsController(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(LongSparseIntArray longSparseIntArray) {
        this.dialogIdToMaxReadId = longSparseIntArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i) {
        sortDialogStories(this.dialogListStories);
        sortDialogStories(this.hiddenListStories);
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    private TLRPC$TL_storiesStealthMode readStealthMode(String str) {
        if (str == null) {
            return null;
        }
        SerializedData serializedData = new SerializedData(Utilities.hexToBytes(str));
        try {
            return TLRPC$TL_storiesStealthMode.TLdeserialize(serializedData, serializedData.readInt32(true), true);
        } catch (Throwable th) {
            FileLog.m67e(th);
            return null;
        }
    }

    private void writeStealthMode(TLRPC$TL_storiesStealthMode tLRPC$TL_storiesStealthMode) {
        SharedPreferences.Editor edit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        if (tLRPC$TL_storiesStealthMode == null) {
            edit.remove("stories_stealth_mode").apply();
            return;
        }
        SerializedData serializedData = new SerializedData(tLRPC$TL_storiesStealthMode.getObjectSize());
        tLRPC$TL_storiesStealthMode.serializeToStream(serializedData);
        edit.putString("stories_stealth_mode", Utilities.bytesToHex(serializedData.toByteArray())).apply();
    }

    public void loadAllStories() {
        if (this.firstLoad) {
            return;
        }
        loadStories();
        loadStoriesRead();
    }

    private void loadStoriesRead() {
        if (this.storiesReadLoaded) {
            return;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_stories_getAllReadUserStories
            public static int constructor = 1922848300;

            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(constructor);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$loadStoriesRead$4(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStoriesRead$4(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
        if (tLRPC$Updates == null) {
            return;
        }
        MessagesController.getInstance(this.currentAccount).processUpdateArray(tLRPC$Updates.updates, tLRPC$Updates.users, tLRPC$Updates.chats, false, tLRPC$Updates.date);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadStoriesRead$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStoriesRead$3() {
        this.storiesReadLoaded = true;
        this.mainSettings.edit().putBoolean("read_loaded", true).apply();
    }

    private void sortDialogStories(ArrayList<TLRPC$TL_userStories> arrayList) {
        fixDeletedAndNonContactsStories(arrayList);
        Collections.sort(arrayList, this.userStoriesComparator);
    }

    private void fixDeletedAndNonContactsStories(ArrayList<TLRPC$TL_userStories> arrayList) {
        boolean z;
        int i = 0;
        while (i < arrayList.size()) {
            TLRPC$TL_userStories tLRPC$TL_userStories = arrayList.get(i);
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_userStories.user_id));
            if (user == null || isContactOrService(user)) {
                z = false;
            } else {
                arrayList.remove(i);
                i--;
                z = true;
            }
            int i2 = 0;
            while (i2 < tLRPC$TL_userStories.stories.size()) {
                if (tLRPC$TL_userStories.stories.get(i2) instanceof TLRPC$TL_storyItemDeleted) {
                    tLRPC$TL_userStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (!z && tLRPC$TL_userStories.stories.isEmpty()) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
    }

    public DraftsController getDraftsController() {
        return this.draftsController;
    }

    public boolean hasStories(long j) {
        if (getSelfUserId() == j && hasUploadingStories()) {
            return true;
        }
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(j);
        return (tLRPC$TL_userStories == null || tLRPC$TL_userStories.stories.isEmpty()) ? false : true;
    }

    public boolean hasStories() {
        ArrayList<TLRPC$TL_userStories> arrayList = this.dialogListStories;
        return (arrayList != null && arrayList.size() > 0) || hasSelfStories();
    }

    public void loadStories() {
        if (this.firstLoad) {
            this.loadingFromDatabase = true;
            this.storiesStorage.getAllStories(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    StoriesController.this.lambda$loadStories$5((TLRPC$TL_stories_allStories) obj);
                }
            });
        } else {
            loadFromServer(false);
            loadFromServer(true);
        }
        this.firstLoad = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStories$5(TLRPC$TL_stories_allStories tLRPC$TL_stories_allStories) {
        this.loadingFromDatabase = false;
        if (tLRPC$TL_stories_allStories != null) {
            processAllStoriesResponse(tLRPC$TL_stories_allStories, false, true, false);
            loadFromServer(false);
            loadFromServer(true);
            return;
        }
        cleanup();
        loadStories();
    }

    public void loadHiddenStories() {
        if (this.hasMoreHidden) {
            loadFromServer(true);
        }
    }

    public void toggleHidden(long j, boolean z, boolean z2, boolean z3) {
        ArrayList<TLRPC$TL_userStories> arrayList;
        ArrayList<TLRPC$TL_userStories> arrayList2;
        TLRPC$TL_userStories tLRPC$TL_userStories;
        boolean z4;
        if (z) {
            arrayList = this.dialogListStories;
            arrayList2 = this.hiddenListStories;
        } else {
            arrayList = this.hiddenListStories;
            arrayList2 = this.dialogListStories;
        }
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                tLRPC$TL_userStories = null;
                break;
            } else if (arrayList.get(i).user_id == j) {
                tLRPC$TL_userStories = arrayList.remove(i);
                break;
            } else {
                i++;
            }
        }
        if (tLRPC$TL_userStories != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList2.size()) {
                    z4 = false;
                    break;
                } else if (arrayList2.get(i2).user_id == j) {
                    z4 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z4) {
                arrayList2.add(0, tLRPC$TL_userStories);
                AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
                this.sortStoriesRunnable.run();
            }
        }
        if (z3) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        if (z2) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            user.stories_hidden = z;
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(Collections.singletonList(user), null, false, true);
            MessagesController.getInstance(this.currentAccount).putUser(user, false);
            TLRPC$TL_contacts_toggleStoriesHidden tLRPC$TL_contacts_toggleStoriesHidden = new TLRPC$TL_contacts_toggleStoriesHidden();
            tLRPC$TL_contacts_toggleStoriesHidden.f1575id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
            tLRPC$TL_contacts_toggleStoriesHidden.hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_toggleStoriesHidden, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda30
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.lambda$toggleHidden$6(tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    private void loadFromServer(final boolean z) {
        if (z && this.loadingFromServerHidden) {
            return;
        }
        if ((z || !this.loadingFromServer) && !this.loadingFromDatabase) {
            final boolean z2 = true;
            if (z) {
                this.loadingFromServerHidden = true;
            } else {
                this.loadingFromServer = true;
            }
            final TLRPC$TL_stories_getAllStories tLRPC$TL_stories_getAllStories = new TLRPC$TL_stories_getAllStories();
            String str = z ? this.stateHidden : this.state;
            boolean z3 = z ? this.hasMoreHidden : this.hasMore;
            if (!TextUtils.isEmpty(str)) {
                tLRPC$TL_stories_getAllStories.state = str;
                tLRPC$TL_stories_getAllStories.flags |= 1;
            }
            if (!z3 || TextUtils.isEmpty(str)) {
                z2 = false;
            } else {
                tLRPC$TL_stories_getAllStories.next = true;
            }
            tLRPC$TL_stories_getAllStories.include_hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getAllStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda28
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadFromServer$8(z, tLRPC$TL_stories_getAllStories, z2, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$8(final boolean z, final TLRPC$TL_stories_getAllStories tLRPC$TL_stories_getAllStories, final boolean z2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadFromServer$7(z, tLRPC$TL_stories_getAllStories, tLObject, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$7(boolean z, TLRPC$TL_stories_getAllStories tLRPC$TL_stories_getAllStories, TLObject tLObject, boolean z2) {
        if (z) {
            this.loadingFromServerHidden = false;
        } else {
            this.loadingFromServer = false;
        }
        FileLog.m70d("StoriesController loaded stories from server state=" + tLRPC$TL_stories_getAllStories.state + " more=" + tLRPC$TL_stories_getAllStories.next + "  " + tLObject);
        if (tLObject instanceof TLRPC$TL_stories_allStories) {
            TLRPC$TL_stories_allStories tLRPC$TL_stories_allStories = (TLRPC$TL_stories_allStories) tLObject;
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$TL_stories_allStories.users, null, true, true);
            if (!z) {
                this.totalStoriesCount = tLRPC$TL_stories_allStories.count;
                this.hasMore = tLRPC$TL_stories_allStories.has_more;
                this.state = tLRPC$TL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state", this.state).putBoolean("last_stories_has_more", this.hasMore).putInt("total_stores", this.totalStoriesCount).apply();
            } else {
                this.totalStoriesCountHidden = tLRPC$TL_stories_allStories.count;
                this.hasMoreHidden = tLRPC$TL_stories_allStories.has_more;
                this.stateHidden = tLRPC$TL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).putBoolean("last_stories_has_more_hidden", this.hasMoreHidden).putInt("total_stores_hidden", this.totalStoriesCountHidden).apply();
            }
            processAllStoriesResponse(tLRPC$TL_stories_allStories, z, false, z2);
        } else if (tLObject instanceof TLRPC$TL_stories_allStoriesNotModified) {
            if (!z) {
                this.hasMore = this.mainSettings.getBoolean("last_stories_has_more", false);
                this.state = ((TLRPC$TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state", this.state).apply();
            } else {
                this.hasMoreHidden = this.mainSettings.getBoolean("last_stories_has_more_hidden", false);
                this.stateHidden = ((TLRPC$TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).apply();
            }
            if (z ? this.hasMoreHidden : this.hasMore) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            }
        }
    }

    private void processAllStoriesResponse(TLRPC$TL_stories_allStories tLRPC$TL_stories_allStories, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            if (!z) {
                this.dialogListStories.clear();
            } else {
                this.hiddenListStories.clear();
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < tLRPC$TL_stories_allStories.user_stories.size(); i++) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(tLRPC$TL_stories_allStories.user_stories.get(i).user_id);
            }
            FileLog.m70d("StoriesController cache=" + z2 + " hidden=" + z + " processAllStoriesResponse {" + ((Object) sb) + "}");
        }
        MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_stories_allStories.users, z2);
        for (int i2 = 0; i2 < tLRPC$TL_stories_allStories.user_stories.size(); i2++) {
            TLRPC$TL_userStories tLRPC$TL_userStories = tLRPC$TL_stories_allStories.user_stories.get(i2);
            int i3 = 0;
            while (i3 < tLRPC$TL_userStories.stories.size()) {
                if (tLRPC$TL_userStories.stories.get(i3) instanceof TLRPC$TL_storyItemDeleted) {
                    NotificationsController.getInstance(this.currentAccount).processDeleteStory(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i3).f1557id);
                    tLRPC$TL_userStories.stories.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (!tLRPC$TL_userStories.stories.isEmpty()) {
                this.allStoriesMap.put(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
                int i4 = 0;
                while (i4 < 2) {
                    ArrayList<TLRPC$TL_userStories> arrayList = i4 == 0 ? this.hiddenListStories : this.dialogListStories;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= arrayList.size()) {
                            break;
                        } else if (arrayList.get(i5).user_id == tLRPC$TL_userStories.user_id) {
                            arrayList.remove(i5);
                            break;
                        } else {
                            i5++;
                        }
                    }
                    i4++;
                }
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_userStories.user_id));
                if (user != null) {
                    if (user.stories_hidden) {
                        addUserToHiddenList(tLRPC$TL_userStories);
                    } else {
                        this.dialogListStories.add(tLRPC$TL_userStories);
                        preloadUserStories(tLRPC$TL_userStories);
                    }
                }
            } else {
                this.allStoriesMap.remove(tLRPC$TL_userStories.user_id);
            }
        }
        if (!z2) {
            this.storiesStorage.saveAllStories(tLRPC$TL_stories_allStories.user_stories, z3, z, new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.lambda$processAllStoriesResponse$9();
                }
            });
        }
        sortUserStories();
    }

    private void addUserToHiddenList(TLRPC$TL_userStories tLRPC$TL_userStories) {
        if (tLRPC$TL_userStories.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.hiddenListStories.size(); i++) {
            if (this.hiddenListStories.get(i).user_id == tLRPC$TL_userStories.user_id) {
                z = true;
            }
        }
        if (!z) {
            this.hiddenListStories.add(tLRPC$TL_userStories);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void sortUserStories() {
        AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
        this.sortStoriesRunnable.run();
    }

    public void preloadUserStories(TLRPC$TL_userStories tLRPC$TL_userStories) {
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= tLRPC$TL_userStories.stories.size()) {
                break;
            } else if (tLRPC$TL_userStories.stories.get(i2).f1557id > tLRPC$TL_userStories.max_read_id) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (tLRPC$TL_userStories.stories.isEmpty()) {
            return;
        }
        preloadStory(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i));
        if (i > 0) {
            preloadStory(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i - 1));
        }
        if (i < tLRPC$TL_userStories.stories.size() - 1) {
            preloadStory(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i + 1));
        }
    }

    private void preloadStory(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        if (tLRPC$StoryItem.attachPath == null && DownloadController.getInstance(this.currentAccount).canPreloadStories()) {
            TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem.media;
            boolean z = tLRPC$MessageMedia != null && MessageObject.isVideoDocument(tLRPC$MessageMedia.document);
            tLRPC$StoryItem.dialogId = j;
            if (z) {
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$StoryItem.media.document.thumbs, 1000);
                FileLoader.getInstance(this.currentAccount).loadFile(tLRPC$StoryItem.media.document, tLRPC$StoryItem, 0, 1);
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForDocument(closestPhotoSizeWithSize, tLRPC$StoryItem.media.document), tLRPC$StoryItem, "jpg", 0, 1);
                return;
            }
            TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$StoryItem.media;
            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia2 == null ? null : tLRPC$MessageMedia2.photo;
            if (tLRPC$Photo == null || (arrayList = tLRPC$Photo.sizes) == null) {
                return;
            }
            FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), tLRPC$Photo), tLRPC$StoryItem, "jpg", 0, 1);
        }
    }

    public void uploadStory(StoryEntry storyEntry, boolean z) {
        UploadingStory uploadingStory = new UploadingStory(storyEntry);
        if (z) {
            if (storyEntry.isEdit) {
                this.editingStories.put(Integer.valueOf(storyEntry.editStoryId), uploadingStory);
            } else {
                this.uploadingStories.add(uploadingStory);
            }
            this.uploadingAndEditingStories.add(uploadingStory);
        }
        uploadingStory.start();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void putUploadingDrafts(ArrayList<StoryEntry> arrayList) {
        Iterator<StoryEntry> it = arrayList.iterator();
        while (it.hasNext()) {
            this.uploadingStories.add(new UploadingStory(it.next()));
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public ArrayList<TLRPC$TL_userStories> getDialogListStories() {
        return this.dialogListStories;
    }

    public TLRPC$TL_userStories getStories(long j) {
        return this.allStoriesMap.get(j);
    }

    public ArrayList<UploadingStory> getUploadingStories() {
        return this.uploadingStories;
    }

    public boolean isLastUploadingFailed() {
        if (this.uploadingStories.isEmpty()) {
            return false;
        }
        ArrayList<UploadingStory> arrayList = this.uploadingStories;
        return arrayList.get(arrayList.size() - 1).failed;
    }

    public ArrayList<UploadingStory> getUploadingAndEditingStories() {
        return this.uploadingAndEditingStories;
    }

    public int getMyStoriesCount() {
        ArrayList<TLRPC$StoryItem> arrayList;
        int size = this.uploadingAndEditingStories.size();
        TLRPC$TL_userStories stories = getStories(getSelfUserId());
        return (stories == null || (arrayList = stories.stories) == null) ? size : size + arrayList.size();
    }

    public UploadingStory findEditingStory(TLRPC$StoryItem tLRPC$StoryItem) {
        if (tLRPC$StoryItem == null || tLRPC$StoryItem.dialogId != getSelfUserId()) {
            return null;
        }
        return this.editingStories.get(Integer.valueOf(tLRPC$StoryItem.f1557id));
    }

    public UploadingStory getEditingStory() {
        if (this.editingStories.isEmpty()) {
            return null;
        }
        Collection<UploadingStory> values = this.editingStories.values();
        if (values.isEmpty()) {
            return null;
        }
        return values.iterator().next();
    }

    private void applyNewStories(TLRPC$TL_userStories tLRPC$TL_userStories) {
        this.allStoriesMap.put(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
        if (tLRPC$TL_userStories.user_id != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_userStories.user_id));
            applyToList(tLRPC$TL_userStories);
            if (user != null && !user.stories_hidden) {
                preloadUserStories(tLRPC$TL_userStories);
            }
        }
        FileLog.m70d("StoriesController applyNewStories " + tLRPC$TL_userStories.user_id);
        updateStoriesInLists(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories);
    }

    public static TLRPC$StoryItem applyStoryUpdate(TLRPC$StoryItem tLRPC$StoryItem, TLRPC$StoryItem tLRPC$StoryItem2) {
        if (tLRPC$StoryItem2 == null) {
            return tLRPC$StoryItem;
        }
        if (tLRPC$StoryItem != null && tLRPC$StoryItem2.min) {
            tLRPC$StoryItem.pinned = tLRPC$StoryItem2.pinned;
            tLRPC$StoryItem.isPublic = tLRPC$StoryItem2.isPublic;
            tLRPC$StoryItem.close_friends = tLRPC$StoryItem2.close_friends;
            int i = tLRPC$StoryItem2.date;
            if (i != 0) {
                tLRPC$StoryItem.date = i;
            }
            int i2 = tLRPC$StoryItem2.expire_date;
            if (i2 != 0) {
                tLRPC$StoryItem.expire_date = i2;
            }
            tLRPC$StoryItem.caption = tLRPC$StoryItem2.caption;
            tLRPC$StoryItem.entities = tLRPC$StoryItem2.entities;
            TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$StoryItem2.media;
            if (tLRPC$MessageMedia != null) {
                tLRPC$StoryItem.media = tLRPC$MessageMedia;
            }
            return tLRPC$StoryItem;
        }
        return tLRPC$StoryItem2;
    }

    public void processUpdate(final TLRPC$TL_updateStory tLRPC$TL_updateStory) {
        if (tLRPC$TL_updateStory.story == null) {
            return;
        }
        final TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_updateStory.user_id));
        if (user != null && (isContactOrService(user) || user.self)) {
            this.storiesStorage.processUpdate(tLRPC$TL_updateStory);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$processUpdate$10(tLRPC$TL_updateStory, user);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c2, code lost:
        r8 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processUpdate$10(org.telegram.tgnet.TLRPC$TL_updateStory r11, org.telegram.tgnet.TLRPC$User r12) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.lambda$processUpdate$10(org.telegram.tgnet.TLRPC$TL_updateStory, org.telegram.tgnet.TLRPC$User):void");
    }

    private boolean isContactOrService(TLRPC$User tLRPC$User) {
        return tLRPC$User != null && (tLRPC$User.contact || tLRPC$User.f1685id == MessagesController.getInstance(this.currentAccount).storiesChangelogUserId);
    }

    private void applyToList(TLRPC$TL_userStories tLRPC$TL_userStories) {
        boolean z;
        boolean z2;
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_userStories.user_id));
        if (user == null) {
            FileLog.m70d("StoriesController can't apply story user == null");
            return;
        }
        int i = 0;
        while (true) {
            z = true;
            if (i >= this.dialogListStories.size()) {
                z2 = false;
                break;
            } else if (this.dialogListStories.get(i).user_id == tLRPC$TL_userStories.user_id) {
                this.dialogListStories.remove(i);
                z2 = true;
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.hiddenListStories.size()) {
                z = z2;
                break;
            } else if (this.hiddenListStories.get(i2).user_id == tLRPC$TL_userStories.user_id) {
                this.hiddenListStories.remove(i2);
                break;
            } else {
                i2++;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m70d("StoriesController move user stories to first hidden=" + user.stories_hidden + " did=" + tLRPC$TL_userStories.user_id);
        }
        if (user.stories_hidden) {
            this.hiddenListStories.add(0, tLRPC$TL_userStories);
        } else {
            this.dialogListStories.add(0, tLRPC$TL_userStories);
        }
        if (!z) {
            loadAllStoriesForDialog(tLRPC$TL_userStories.user_id);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void loadAllStoriesForDialog(final long j) {
        if (this.allStoriesLoading.contains(Long.valueOf(j))) {
            return;
        }
        this.allStoriesLoading.add(Long.valueOf(j));
        FileLog.m70d("StoriesController loadAllStoriesForDialog " + j);
        TLRPC$TL_stories_getUserStories tLRPC$TL_stories_getUserStories = new TLRPC$TL_stories_getUserStories();
        tLRPC$TL_stories_getUserStories.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getUserStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$loadAllStoriesForDialog$12(j, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$12(final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadAllStoriesForDialog$11(j, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$11(long j, TLObject tLObject) {
        this.allStoriesLoading.remove(Long.valueOf(j));
        if (tLObject == null) {
            return;
        }
        TLRPC$TL_stories_userStories tLRPC$TL_stories_userStories = (TLRPC$TL_stories_userStories) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_stories_userStories.users, false);
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        TLRPC$TL_userStories tLRPC$TL_userStories = tLRPC$TL_stories_userStories.stories;
        this.allStoriesMap.put(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
        if (user != null && (isContactOrService(user) || user.self)) {
            applyToList(tLRPC$TL_userStories);
            this.storiesStorage.putUserStories(tLRPC$TL_userStories);
        }
        FileLog.m70d("StoriesController processAllStoriesResponse dialogId=" + j + " overwrite stories " + tLRPC$TL_stories_userStories.stories.stories.size());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public boolean hasSelfStories() {
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(UserConfig.getInstance(this.currentAccount).clientUserId);
        return ((tLRPC$TL_userStories == null || tLRPC$TL_userStories.stories.isEmpty()) && this.uploadingStories.isEmpty()) ? false : true;
    }

    public int getSelfStoriesCount() {
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(UserConfig.getInstance(this.currentAccount).clientUserId);
        return (tLRPC$TL_userStories != null ? 0 + tLRPC$TL_userStories.stories.size() : 0) + this.uploadingStories.size();
    }

    public void deleteStory(TLRPC$StoryItem tLRPC$StoryItem) {
        if (tLRPC$StoryItem == null || (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted)) {
            return;
        }
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(getSelfUserId());
        if (tLRPC$TL_userStories != null) {
            int i = 0;
            while (true) {
                if (i >= tLRPC$TL_userStories.stories.size()) {
                    break;
                } else if (tLRPC$TL_userStories.stories.get(i).f1557id == tLRPC$StoryItem.f1557id) {
                    tLRPC$TL_userStories.stories.remove(i);
                    if (tLRPC$TL_userStories.stories.size() == 0) {
                        this.allStoriesMap.remove(getSelfUserId());
                        this.dialogListStories.remove(tLRPC$TL_userStories);
                        this.hiddenListStories.remove(tLRPC$TL_userStories);
                    }
                } else {
                    i++;
                }
            }
        }
        TLRPC$TL_stories_deleteStories tLRPC$TL_stories_deleteStories = new TLRPC$TL_stories_deleteStories();
        tLRPC$TL_stories_deleteStories.f1662id.add(Integer.valueOf(tLRPC$StoryItem.f1557id));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$deleteStory$13(tLObject, tLRPC$TL_error);
            }
        });
        this.storiesStorage.deleteStory(getSelfUserId(), tLRPC$StoryItem.f1557id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        updateDeletedStoriesInLists(getSelfUserId(), Arrays.asList(tLRPC$StoryItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$13(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda4(this));
        }
    }

    public void deleteStories(ArrayList<TLRPC$StoryItem> arrayList) {
        if (arrayList == null) {
            return;
        }
        TLRPC$TL_stories_deleteStories tLRPC$TL_stories_deleteStories = new TLRPC$TL_stories_deleteStories();
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(getSelfUserId());
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
            if (!(tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted)) {
                if (tLRPC$TL_userStories != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= tLRPC$TL_userStories.stories.size()) {
                            break;
                        } else if (tLRPC$TL_userStories.stories.get(i2).f1557id == tLRPC$StoryItem.f1557id) {
                            tLRPC$TL_userStories.stories.remove(i2);
                            if (tLRPC$TL_userStories.stories.isEmpty()) {
                                this.allStoriesMap.remove(getSelfUserId());
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                tLRPC$TL_stories_deleteStories.f1662id.add(Integer.valueOf(tLRPC$StoryItem.f1557id));
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$deleteStories$14(tLObject, tLRPC$TL_error);
            }
        });
        updateDeletedStoriesInLists(getSelfUserId(), arrayList);
        this.storiesStorage.deleteStories(getSelfUserId(), tLRPC$TL_stories_deleteStories.f1662id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStories$14(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda4(this));
    }

    public void updateStoriesPinned(ArrayList<TLRPC$StoryItem> arrayList, boolean z, final Utilities.Callback<Boolean> callback) {
        TLRPC$TL_stories_togglePinned tLRPC$TL_stories_togglePinned = new TLRPC$TL_stories_togglePinned();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
            if (!(tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted)) {
                tLRPC$StoryItem.pinned = z;
                tLRPC$TL_stories_togglePinned.f1670id.add(Integer.valueOf(tLRPC$StoryItem.f1557id));
            }
        }
        FileLog.m70d("StoriesController updateStoriesPinned");
        updateStoriesInLists(getSelfUserId(), arrayList);
        tLRPC$TL_stories_togglePinned.pinned = z;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_togglePinned, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda20
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$updateStoriesPinned$16(Utilities.Callback.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStoriesPinned$16(final Utilities.Callback callback, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.lambda$updateStoriesPinned$15(Utilities.Callback.this, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStoriesPinned$15(Utilities.Callback callback, TLRPC$TL_error tLRPC$TL_error) {
        if (callback != null) {
            callback.run(Boolean.valueOf(tLRPC$TL_error == null));
        }
    }

    private long getSelfUserId() {
        return UserConfig.getInstance(this.currentAccount).getClientUserId();
    }

    public void updateStoryItem(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("StoriesController updateStoryItem ");
        sb.append(j);
        sb.append(" ");
        if (tLRPC$StoryItem == null) {
            str = "null";
        } else {
            str = tLRPC$StoryItem.f1557id + "@" + tLRPC$StoryItem.dialogId;
        }
        sb.append(str);
        FileLog.m70d(sb.toString());
        this.storiesStorage.updateStoryItem(j, tLRPC$StoryItem);
        updateStoriesInLists(j, Collections.singletonList(tLRPC$StoryItem));
    }

    public boolean markStoryAsRead(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        TLRPC$UserFull userFull;
        TLRPC$TL_userStories stories = getStories(j);
        if (stories == null && (userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j)) != null) {
            stories = userFull.stories;
        }
        return markStoryAsRead(stories, tLRPC$StoryItem, false);
    }

    public boolean markStoryAsRead(TLRPC$TL_userStories tLRPC$TL_userStories, TLRPC$StoryItem tLRPC$StoryItem, boolean z) {
        if (tLRPC$StoryItem != null && tLRPC$TL_userStories != null) {
            long j = tLRPC$TL_userStories.user_id;
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                tLRPC$StoryItem.justUploaded = false;
            }
            int i = this.dialogIdToMaxReadId.get(j);
            int max = Math.max(tLRPC$TL_userStories.max_read_id, Math.max(i, tLRPC$StoryItem.f1557id));
            NotificationsController.getInstance(this.currentAccount).processReadStories(j, max);
            tLRPC$TL_userStories.max_read_id = max;
            this.dialogIdToMaxReadId.put(j, max);
            if (max > i) {
                if (!z) {
                    this.storiesStorage.updateMaxReadId(j, max);
                }
                TLRPC$TL_stories_readStories tLRPC$TL_stories_readStories = new TLRPC$TL_stories_readStories();
                tLRPC$TL_stories_readStories.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
                tLRPC$TL_stories_readStories.max_id = tLRPC$StoryItem.f1557id;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_readStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda31
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StoriesController.lambda$markStoryAsRead$17(tLObject, tLRPC$TL_error);
                    }
                });
                return true;
            }
        }
        return false;
    }

    public void markStoriesAsReadFromServer(final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$markStoriesAsReadFromServer$18(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markStoriesAsReadFromServer$18(long j, int i) {
        int max = Math.max(this.dialogIdToMaxReadId.get(j, 0), i);
        this.dialogIdToMaxReadId.put(j, max);
        this.storiesStorage.updateMaxReadId(j, max);
        TLRPC$TL_userStories stories = getStories(j);
        if (stories != null && i > stories.max_read_id) {
            stories.max_read_id = i;
            Collections.sort(this.dialogListStories, this.userStoriesComparator);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public boolean hasUnreadStories(long j) {
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(j);
        if (tLRPC$TL_userStories == null) {
            return false;
        }
        if (j != UserConfig.getInstance(this.currentAccount).getClientUserId() || this.uploadingStories.isEmpty()) {
            for (int i = 0; i < tLRPC$TL_userStories.stories.size(); i++) {
                if (tLRPC$TL_userStories.stories.get(i).f1557id > tLRPC$TL_userStories.max_read_id) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int getUnreadState(long j) {
        return getUnreadState(j, 0);
    }

    public int getUnreadState(long j, int i) {
        TLRPC$UserFull userFull;
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(j);
        if (tLRPC$TL_userStories == null && (userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j)) != null) {
            tLRPC$TL_userStories = userFull.stories;
        }
        if (tLRPC$TL_userStories == null) {
            return 0;
        }
        if (j != UserConfig.getInstance(this.currentAccount).getClientUserId() || this.uploadingStories.isEmpty()) {
            int max = Math.max(tLRPC$TL_userStories.max_read_id, this.dialogIdToMaxReadId.get(j, 0));
            boolean z = false;
            for (int i2 = 0; i2 < tLRPC$TL_userStories.stories.size(); i2++) {
                if ((i == 0 || tLRPC$TL_userStories.stories.get(i2).f1557id == i) && tLRPC$TL_userStories.stories.get(i2).f1557id > max) {
                    if (tLRPC$TL_userStories.stories.get(i2).close_friends) {
                        return 2;
                    }
                    z = true;
                }
            }
            return z ? 1 : 0;
        }
        return 1;
    }

    public boolean hasUploadingStories() {
        return (this.uploadingStories.isEmpty() && this.editingStories.isEmpty()) ? false : true;
    }

    public void cleanup() {
        this.storiesReadLoaded = false;
        this.stateHidden = "";
        this.state = "";
        this.mainSettings.edit().putBoolean("stories_loaded", false).remove("last_stories_state").putBoolean("stories_loaded_hidden", false).remove("last_stories_state_hidden").putBoolean("read_loaded", false).apply();
        final DraftsController draftsController = this.draftsController;
        Objects.requireNonNull(draftsController);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.this.cleanup();
            }
        });
        loadStories();
        loadStoriesRead();
    }

    public void pollViewsForSelfStories(boolean z) {
        this.pollingViewsForSelfStoriesRequester.start(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadSkippedStories(long j) {
        loadSkippedStories(getStories(j), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadSkippedStories(final TLRPC$TL_userStories tLRPC$TL_userStories, final boolean z) {
        if (tLRPC$TL_userStories == null) {
            return;
        }
        final long j = tLRPC$TL_userStories.user_id;
        final long j2 = j * (z ? -1 : 1);
        if (this.loadingAllStories.contains(Long.valueOf(j2))) {
            return;
        }
        ArrayList<Integer> arrayList = null;
        for (int i = 0; i < tLRPC$TL_userStories.stories.size(); i++) {
            if (tLRPC$TL_userStories.stories.get(i) instanceof TLRPC$TL_storyItemSkipped) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(Integer.valueOf(tLRPC$TL_userStories.stories.get(i).f1557id));
            }
        }
        if (arrayList != null) {
            this.loadingAllStories.add(Long.valueOf(j2));
            TLRPC$TL_stories_getStoriesByID tLRPC$TL_stories_getStoriesByID = new TLRPC$TL_stories_getStoriesByID();
            tLRPC$TL_stories_getStoriesByID.f1665id = arrayList;
            tLRPC$TL_stories_getStoriesByID.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda27
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadSkippedStories$20(j2, z, tLRPC$TL_userStories, j, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$20(final long j, final boolean z, final TLRPC$TL_userStories tLRPC$TL_userStories, final long j2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadSkippedStories$19(j, z, tLRPC$TL_userStories, j2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$19(long j, boolean z, TLRPC$TL_userStories tLRPC$TL_userStories, long j2, TLObject tLObject) {
        this.loadingAllStories.remove(Long.valueOf(j));
        if (!z) {
            tLRPC$TL_userStories = getStories(j2);
        }
        if (tLRPC$TL_userStories == null) {
            return;
        }
        if (tLObject instanceof TLRPC$TL_stories_stories) {
            TLRPC$TL_stories_stories tLRPC$TL_stories_stories = (TLRPC$TL_stories_stories) tLObject;
            for (int i = 0; i < tLRPC$TL_stories_stories.stories.size(); i++) {
                for (int i2 = 0; i2 < tLRPC$TL_userStories.stories.size(); i2++) {
                    if (tLRPC$TL_userStories.stories.get(i2).f1557id == tLRPC$TL_stories_stories.stories.get(i).f1557id) {
                        tLRPC$TL_userStories.stories.set(i2, tLRPC$TL_stories_stories.stories.get(i));
                        preloadStory(j2, tLRPC$TL_stories_stories.stories.get(i));
                    }
                }
            }
            if (!z) {
                this.storiesStorage.updateStories(tLRPC$TL_userStories);
            }
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void loadNextStories(boolean z) {
        if (this.hasMore) {
            loadFromServer(z);
        }
    }

    public void fillMessagesWithStories(LongSparseArray<ArrayList<MessageObject>> longSparseArray, Runnable runnable, int i) {
        this.storiesStorage.fillMessagesWithStories(longSparseArray, runnable, i);
    }

    public void resolveStoryLink(long j, int i, Consumer<TLRPC$StoryItem> consumer) {
        TLRPC$TL_userStories stories = getStories(j);
        if (stories != null) {
            for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                if (stories.stories.get(i2).f1557id == i && !(stories.stories.get(i2) instanceof TLRPC$TL_storyItemSkipped)) {
                    consumer.accept(stories.stories.get(i2));
                    return;
                }
            }
        }
        long j2 = (i + j) << 12;
        TLRPC$StoryItem tLRPC$StoryItem = this.resolvedStories.get(j2);
        if (tLRPC$StoryItem != null) {
            consumer.accept(tLRPC$StoryItem);
            return;
        }
        TLRPC$TL_stories_getStoriesByID tLRPC$TL_stories_getStoriesByID = new TLRPC$TL_stories_getStoriesByID();
        tLRPC$TL_stories_getStoriesByID.f1665id.add(Integer.valueOf(i));
        tLRPC$TL_stories_getStoriesByID.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesByID, new C68921(j2, consumer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoriesController$1 */
    /* loaded from: classes7.dex */
    public class C68921 implements RequestDelegate {
        final /* synthetic */ Consumer val$consumer;
        final /* synthetic */ long val$hash;

        C68921(long j, Consumer consumer) {
            this.val$hash = j;
            this.val$consumer = consumer;
        }

        @Override // org.telegram.tgnet.RequestDelegate
        public void run(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            final long j = this.val$hash;
            final Consumer consumer = this.val$consumer;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.C68921.this.lambda$run$0(tLObject, j, consumer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(TLObject tLObject, long j, Consumer consumer) {
            TLRPC$StoryItem tLRPC$StoryItem;
            if (tLObject != null) {
                TLRPC$TL_stories_stories tLRPC$TL_stories_stories = (TLRPC$TL_stories_stories) tLObject;
                if (tLRPC$TL_stories_stories.stories.size() > 0) {
                    tLRPC$StoryItem = tLRPC$TL_stories_stories.stories.get(0);
                    StoriesController.this.resolvedStories.put(j, tLRPC$StoryItem);
                    consumer.accept(tLRPC$StoryItem);
                }
            }
            tLRPC$StoryItem = null;
            consumer.accept(tLRPC$StoryItem);
        }
    }

    public ArrayList<TLRPC$TL_userStories> getHiddenList() {
        return this.hiddenListStories;
    }

    public int getUnreadStoriesCount(long j) {
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(j);
        for (int i = 0; i < tLRPC$TL_userStories.stories.size(); i++) {
            if (tLRPC$TL_userStories.max_read_id < tLRPC$TL_userStories.stories.get(i).f1557id) {
                return tLRPC$TL_userStories.stories.size() - i;
            }
        }
        return 0;
    }

    public int getTotalStoriesCount(boolean z) {
        return z ? this.hasMoreHidden ? Math.max(1, this.totalStoriesCountHidden) : this.hiddenListStories.size() : this.hasMore ? Math.max(1, this.totalStoriesCount) : this.dialogListStories.size();
    }

    public void putStories(long j, TLRPC$TL_userStories tLRPC$TL_userStories) {
        this.allStoriesMap.put(j, tLRPC$TL_userStories);
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        if (isContactOrService(user) || user.self) {
            this.storiesStorage.putUserStories(tLRPC$TL_userStories);
            applyToList(tLRPC$TL_userStories);
        }
    }

    public void setLoading(long j, boolean z) {
        if (z) {
            this.loadingDialogsStories.put(j, 1);
        } else {
            this.loadingDialogsStories.delete(j);
        }
    }

    public boolean isLoading(long j) {
        return this.loadingDialogsStories.get(j, 0) == 1;
    }

    public void removeContact(long j) {
        int i = 0;
        while (true) {
            if (i >= this.dialogListStories.size()) {
                break;
            } else if (this.dialogListStories.get(i).user_id == j) {
                this.dialogListStories.remove(i);
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.hiddenListStories.size()) {
                break;
            } else if (this.hiddenListStories.get(i2).user_id == j) {
                this.hiddenListStories.remove(i2);
                break;
            } else {
                i2++;
            }
        }
        this.storiesStorage.deleteAllUserStories(j);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public StoriesStorage getStoriesStorage() {
        return this.storiesStorage;
    }

    public boolean hasHiddenStories() {
        return !this.hiddenListStories.isEmpty();
    }

    public void checkExpiredStories() {
        checkExpireStories(this.dialogListStories);
        checkExpireStories(this.hiddenListStories);
    }

    private void checkExpireStories(ArrayList<TLRPC$TL_userStories> arrayList) {
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$TL_userStories tLRPC$TL_userStories = arrayList.get(i);
            int i2 = 0;
            while (i2 < tLRPC$TL_userStories.stories.size()) {
                if (StoriesUtilities.isExpired(this.currentAccount, tLRPC$TL_userStories.stories.get(i2))) {
                    tLRPC$TL_userStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (tLRPC$TL_userStories.stories.isEmpty()) {
                this.allStoriesMap.remove(tLRPC$TL_userStories.user_id);
                arrayList.remove(tLRPC$TL_userStories);
                z = true;
            }
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public void checkExpiredStories(long j) {
        TLRPC$TL_userStories stories = getStories(j);
        if (stories == null) {
            return;
        }
        int i = 0;
        while (i < stories.stories.size()) {
            if (StoriesUtilities.isExpired(this.currentAccount, stories.stories.get(i))) {
                stories.stories.remove(i);
                i--;
            }
            i++;
        }
        if (stories.stories.isEmpty()) {
            this.dialogListStories.remove(stories);
            this.hiddenListStories.remove(stories);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public boolean hasLoadingStories() {
        return this.loadingDialogsStories.size() > 0;
    }

    public TLRPC$TL_storiesStealthMode getStealthMode() {
        return this.stealthMode;
    }

    public void setStealthMode(TLRPC$TL_storiesStealthMode tLRPC$TL_storiesStealthMode) {
        this.stealthMode = tLRPC$TL_storiesStealthMode;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.stealthModeChanged, new Object[0]);
        writeStealthMode(tLRPC$TL_storiesStealthMode);
    }

    public void setStoryReaction(long j, TLRPC$StoryItem tLRPC$StoryItem, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (tLRPC$StoryItem == null) {
            return;
        }
        TLRPC$TL_stories_sendReaction tLRPC$TL_stories_sendReaction = new TLRPC$TL_stories_sendReaction();
        tLRPC$TL_stories_sendReaction.story_id = tLRPC$StoryItem.f1557id;
        tLRPC$TL_stories_sendReaction.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
        if (visibleReaction == null) {
            tLRPC$TL_stories_sendReaction.reaction = new TLRPC$TL_reactionEmpty();
            tLRPC$StoryItem.flags &= -32769;
            tLRPC$StoryItem.sent_reaction = null;
        } else if (visibleReaction.documentId != 0) {
            TLRPC$TL_reactionCustomEmoji tLRPC$TL_reactionCustomEmoji = new TLRPC$TL_reactionCustomEmoji();
            tLRPC$TL_reactionCustomEmoji.document_id = visibleReaction.documentId;
            tLRPC$TL_stories_sendReaction.reaction = tLRPC$TL_reactionCustomEmoji;
            tLRPC$StoryItem.flags |= LiteMode.FLAG_CHAT_SCALE;
            tLRPC$StoryItem.sent_reaction = tLRPC$TL_reactionCustomEmoji;
        } else if (visibleReaction.emojicon != null) {
            TLRPC$TL_reactionEmoji tLRPC$TL_reactionEmoji = new TLRPC$TL_reactionEmoji();
            tLRPC$TL_reactionEmoji.emoticon = visibleReaction.emojicon;
            tLRPC$TL_stories_sendReaction.reaction = tLRPC$TL_reactionEmoji;
            tLRPC$StoryItem.flags |= LiteMode.FLAG_CHAT_SCALE;
            tLRPC$StoryItem.sent_reaction = tLRPC$TL_reactionEmoji;
        }
        updateStoryItem(j, tLRPC$StoryItem);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_sendReaction, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda29
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$setStoryReaction$21(tLObject, tLRPC$TL_error);
            }
        });
    }

    public void updateStoryReaction(long j, int i, TLRPC$Reaction tLRPC$Reaction) {
        TLRPC$StoryItem findStory = findStory(j, i);
        if (findStory != null) {
            findStory.sent_reaction = tLRPC$Reaction;
            if (tLRPC$Reaction != null) {
                findStory.flags |= LiteMode.FLAG_CHAT_SCALE;
            } else {
                findStory.flags &= -32769;
            }
            updateStoryItem(j, findStory);
        }
    }

    private TLRPC$StoryItem findStory(long j, int i) {
        TLRPC$TL_userStories tLRPC$TL_userStories = this.allStoriesMap.get(j);
        if (tLRPC$TL_userStories != null) {
            for (int i2 = 0; i2 < tLRPC$TL_userStories.stories.size(); i2++) {
                if (tLRPC$TL_userStories.stories.get(i2).f1557id == i) {
                    return tLRPC$TL_userStories.stories.get(i2);
                }
            }
            return null;
        }
        return null;
    }

    public void onPremiumChanged() {
        this.selfViewsModel.clear();
    }

    /* renamed from: org.telegram.ui.Stories.StoriesController$UploadingStory */
    /* loaded from: classes7.dex */
    public class UploadingStory implements NotificationCenter.NotificationCenterDelegate {
        boolean canceled;
        float convertingProgress;
        private int currentRequest;
        private long duration;
        public final boolean edit;
        final StoryEntry entry;
        private boolean entryDestroyed;
        public boolean failed;
        String firstFramePath;
        public boolean hadFailed;
        private VideoEditedInfo info;
        private boolean isCloseFriends;
        boolean isVideo;
        private MessageObject messageObject;
        String path;
        float progress;
        private boolean putMessages;
        float uploadProgress;
        private long firstSecondSize = -1;
        public final long random_id = Utilities.random.nextLong();

        public UploadingStory(StoryEntry storyEntry) {
            this.entry = storyEntry;
            this.edit = storyEntry.isEdit;
            File file = storyEntry.uploadThumbFile;
            if (file != null) {
                this.firstFramePath = file.getAbsolutePath();
            }
            boolean z = storyEntry.isError;
            this.hadFailed = z;
            this.failed = z;
        }

        private void startForeground() {
            Intent intent = new Intent(ApplicationLoader.applicationContext, StoryUploadingService.class);
            intent.putExtra("path", this.path);
            intent.putExtra("currentAccount", StoriesController.this.currentAccount);
            try {
                ApplicationLoader.applicationContext.startService(intent);
            } catch (Throwable th) {
                FileLog.m67e(th);
            }
        }

        public void start() {
            StoryEntry storyEntry = this.entry;
            if (storyEntry.isEdit && !storyEntry.editedMedia) {
                sendUploadedRequest(null);
                return;
            }
            StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy = storyEntry.privacy;
            this.isCloseFriends = storyPrivacy != null && storyPrivacy.isCloseFriends();
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploaded);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploadFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploadProgressChanged);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.filePreparingFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileNewChunkAvailable);
            boolean wouldBeVideo = this.entry.wouldBeVideo();
            this.isVideo = wouldBeVideo;
            if (!wouldBeVideo) {
                final File makeCacheFile = StoryEntry.makeCacheFile(StoriesController.this.currentAccount, false);
                this.path = makeCacheFile.getAbsolutePath();
                Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.UploadingStory.this.lambda$start$2(makeCacheFile);
                    }
                });
            } else {
                TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
                tLRPC$TL_message.f1546id = 1;
                String absolutePath = StoryEntry.makeCacheFile(StoriesController.this.currentAccount, true).getAbsolutePath();
                tLRPC$TL_message.attachPath = absolutePath;
                this.path = absolutePath;
                this.messageObject = new MessageObject(StoriesController.this.currentAccount, (TLRPC$Message) tLRPC$TL_message, (MessageObject) null, false, false);
                this.entry.getVideoEditedInfo(new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda6
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoriesController.UploadingStory.this.lambda$start$0((VideoEditedInfo) obj);
                    }
                });
            }
            startForeground();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0(VideoEditedInfo videoEditedInfo) {
            this.info = videoEditedInfo;
            this.messageObject.videoEditedInfo = videoEditedInfo;
            this.duration = videoEditedInfo.estimatedDuration / 1000;
            if (videoEditedInfo.needConvert()) {
                MediaController.getInstance().scheduleVideoConvert(this.messageObject, false, false);
            } else if (new File(this.messageObject.videoEditedInfo.originalPath).renameTo(new File(this.path))) {
                FileLoader.getInstance(StoriesController.this.currentAccount).uploadFile(this.path, false, false, ConnectionsManager.FileTypeVideo);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$2(File file) {
            this.entry.buildPhoto(file);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.UploadingStory.this.lambda$start$1();
                }
            });
        }

        public void tryAgain() {
            this.failed = false;
            this.entryDestroyed = false;
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.uploadProgress = BitmapDescriptorFactory.HUE_RED;
            this.convertingProgress = BitmapDescriptorFactory.HUE_RED;
            if (this.path != null) {
                try {
                    new File(this.path).delete();
                    this.path = null;
                } catch (Exception unused) {
                }
            }
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: upload */
        public void lambda$start$1() {
            long j;
            if (this.entry.shareUserIds == null) {
                FileLoader fileLoader = FileLoader.getInstance(StoriesController.this.currentAccount);
                String str = this.path;
                boolean z = !this.entry.isVideo;
                if (this.isVideo) {
                    VideoEditedInfo videoEditedInfo = this.info;
                    j = Math.max(1, (int) (videoEditedInfo != null ? videoEditedInfo.estimatedSize : 0L));
                } else {
                    j = 0;
                }
                fileLoader.uploadFile(str, false, z, j, this.entry.isVideo ? ConnectionsManager.FileTypeVideo : ConnectionsManager.FileTypePhoto, true);
                return;
            }
            putMessages();
        }

        public void cleanup() {
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadProgressChanged);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileNewChunkAvailable);
            if (!this.failed) {
                StoriesController.this.uploadingStories.remove(this);
            }
            StoriesController.this.uploadingAndEditingStories.remove(this);
            if (this.edit) {
                StoriesController.this.editingStories.remove(Integer.valueOf(this.entry.editStoryId));
            }
            NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            StoryEntry storyEntry = this.entry;
            if (storyEntry != null && !storyEntry.isEditSaved && !this.entryDestroyed) {
                storyEntry.destroy(false);
                this.entryDestroyed = true;
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryEnd, this.path);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.filePreparingStarted) {
                if (objArr[0] == this.messageObject) {
                    this.path = (String) objArr[1];
                    lambda$start$1();
                }
            } else if (i == NotificationCenter.fileNewChunkAvailable) {
                if (objArr[0] == this.messageObject) {
                    String str = (String) objArr[1];
                    long longValue = ((Long) objArr[2]).longValue();
                    long longValue2 = ((Long) objArr[3]).longValue();
                    float floatValue = ((Float) objArr[4]).floatValue();
                    this.convertingProgress = floatValue;
                    this.progress = (floatValue * 0.3f) + (this.uploadProgress * 0.7f);
                    NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryProgress, this.path, Float.valueOf(this.progress));
                    if (this.firstSecondSize < 0 && this.convertingProgress * ((float) this.duration) >= 1000.0f) {
                        this.firstSecondSize = longValue;
                    }
                    FileLoader.getInstance(StoriesController.this.currentAccount).checkUploadNewDataAvailable(str, false, Math.max(1L, longValue), longValue2, Float.valueOf(this.convertingProgress));
                    if (longValue2 <= 0 || this.firstSecondSize >= 0) {
                        return;
                    }
                    this.firstSecondSize = longValue2;
                }
            } else if (i == NotificationCenter.filePreparingFailed) {
                if (objArr[0] == this.messageObject) {
                    if (!this.edit) {
                        StoryEntry storyEntry = this.entry;
                        storyEntry.isError = true;
                        storyEntry.error = new TLRPC$TL_error();
                        TLRPC$TL_error tLRPC$TL_error = this.entry.error;
                        tLRPC$TL_error.code = 400;
                        tLRPC$TL_error.text = "FILE_PREPARE_FAILED";
                        this.entryDestroyed = true;
                        this.failed = true;
                        this.hadFailed = true;
                        StoriesController.this.getDraftsController().edit(this.entry);
                    }
                    cleanup();
                }
            } else if (i == NotificationCenter.fileUploaded) {
                String str2 = (String) objArr[0];
                String str3 = this.path;
                if (str3 == null || !str2.equals(str3)) {
                    return;
                }
                sendUploadedRequest((TLRPC$InputFile) objArr[1]);
            } else if (i == NotificationCenter.fileUploadFailed) {
                String str4 = (String) objArr[0];
                String str5 = this.path;
                if (str5 == null || !str4.equals(str5)) {
                    return;
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString("StoryUploadError", C3473R.string.StoryUploadError));
                cleanup();
            } else if (i == NotificationCenter.fileUploadProgressChanged && ((String) objArr[0]).equals(this.path)) {
                float min = Math.min(1.0f, ((float) ((Long) objArr[1]).longValue()) / ((float) ((Long) objArr[2]).longValue()));
                this.uploadProgress = min;
                this.progress = (this.convertingProgress * 0.3f) + (min * 0.7f);
                NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryProgress, this.path, Float.valueOf(this.progress));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void sendUploadedRequest(TLRPC$InputFile tLRPC$InputFile) {
            TLRPC$InputMedia tLRPC$InputMedia;
            TLRPC$TL_stories_sendStory tLRPC$TL_stories_sendStory;
            CharSequence charSequence;
            CharSequence charSequence2;
            List<TLRPC$InputDocument> list;
            List<TLRPC$InputDocument> list2;
            if (this.canceled) {
                return;
            }
            StoryEntry storyEntry = this.entry;
            if (storyEntry.shareUserIds != null) {
                return;
            }
            int i = 0;
            if (tLRPC$InputFile == null) {
                tLRPC$InputMedia = null;
            } else if (storyEntry.wouldBeVideo()) {
                tLRPC$InputMedia = new TLRPC$TL_inputMediaUploadedDocument();
                tLRPC$InputMedia.file = tLRPC$InputFile;
                TLRPC$TL_documentAttributeVideo tLRPC$TL_documentAttributeVideo = new TLRPC$TL_documentAttributeVideo();
                SendMessagesHelper.fillVideoAttribute(this.path, tLRPC$TL_documentAttributeVideo, null);
                tLRPC$TL_documentAttributeVideo.supports_streaming = true;
                tLRPC$TL_documentAttributeVideo.flags |= 4;
                tLRPC$TL_documentAttributeVideo.preload_prefix_size = (int) this.firstSecondSize;
                tLRPC$InputMedia.attributes.add(tLRPC$TL_documentAttributeVideo);
                List<TLRPC$InputDocument> list3 = this.entry.stickers;
                if (list3 != null && (!list3.isEmpty() || ((list2 = this.entry.editStickers) != null && !list2.isEmpty()))) {
                    tLRPC$InputMedia.flags |= 1;
                    ArrayList<TLRPC$InputDocument> arrayList = new ArrayList<>(this.entry.stickers);
                    tLRPC$InputMedia.stickers = arrayList;
                    List<TLRPC$InputDocument> list4 = this.entry.editStickers;
                    if (list4 != null) {
                        arrayList.addAll(list4);
                    }
                    tLRPC$InputMedia.attributes.add(new TLRPC$TL_documentAttributeHasStickers());
                }
                StoryEntry storyEntry2 = this.entry;
                tLRPC$InputMedia.nosound_video = storyEntry2.muted || !storyEntry2.isVideo;
                tLRPC$InputMedia.mime_type = MimeTypes.VIDEO_MP4;
            } else {
                tLRPC$InputMedia = new TLRPC$TL_inputMediaUploadedPhoto();
                tLRPC$InputMedia.file = tLRPC$InputFile;
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                int lastIndexOf = this.path.lastIndexOf(46);
                tLRPC$InputMedia.mime_type = singleton.getMimeTypeFromExtension(lastIndexOf != -1 ? this.path.substring(lastIndexOf + 1).toLowerCase() : "txt");
                List<TLRPC$InputDocument> list5 = this.entry.stickers;
                if (list5 != null && (!list5.isEmpty() || ((list = this.entry.editStickers) != null && !list.isEmpty()))) {
                    tLRPC$InputMedia.flags |= 1;
                    List<TLRPC$InputDocument> list6 = this.entry.editStickers;
                    if (list6 != null) {
                        tLRPC$InputMedia.stickers.addAll(list6);
                    }
                    tLRPC$InputMedia.stickers = new ArrayList<>(this.entry.stickers);
                }
            }
            int i2 = UserConfig.getInstance(StoriesController.this.currentAccount).isPremium() ? MessagesController.getInstance(StoriesController.this.currentAccount).storyCaptionLengthLimitPremium : MessagesController.getInstance(StoriesController.this.currentAccount).storyCaptionLengthLimitDefault;
            if (this.edit) {
                TLRPC$TL_stories_editStory tLRPC$TL_stories_editStory = new TLRPC$TL_stories_editStory();
                StoryEntry storyEntry3 = this.entry;
                tLRPC$TL_stories_editStory.f1663id = storyEntry3.editStoryId;
                if (tLRPC$InputMedia != null && storyEntry3.editedMedia) {
                    tLRPC$TL_stories_editStory.flags |= 1;
                    tLRPC$TL_stories_editStory.media = tLRPC$InputMedia;
                }
                if (storyEntry3.editedCaption && (charSequence2 = storyEntry3.caption) != null) {
                    tLRPC$TL_stories_editStory.flags |= 2;
                    CharSequence[] charSequenceArr = {charSequence2};
                    if (charSequenceArr[0].length() > i2) {
                        charSequenceArr[0] = charSequenceArr[0].subSequence(0, i2);
                    }
                    if (MessagesController.getInstance(StoriesController.this.currentAccount).storyEntitiesAllowed()) {
                        tLRPC$TL_stories_editStory.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr, true);
                    } else {
                        tLRPC$TL_stories_editStory.entities.clear();
                    }
                    if (charSequenceArr[0].length() > i2) {
                        charSequenceArr[0] = charSequenceArr[0].subSequence(0, i2);
                    }
                    tLRPC$TL_stories_editStory.caption = charSequenceArr[0].toString();
                }
                StoryEntry storyEntry4 = this.entry;
                if (storyEntry4.editedPrivacy) {
                    tLRPC$TL_stories_editStory.flags |= 4;
                    tLRPC$TL_stories_editStory.privacy_rules.addAll(storyEntry4.privacyRules);
                }
                ArrayList<TLRPC$MediaArea> arrayList2 = this.entry.editedMediaAreas;
                if (arrayList2 != null) {
                    tLRPC$TL_stories_editStory.media_areas.addAll(arrayList2);
                }
                if (this.entry.mediaEntities != null) {
                    while (i < this.entry.mediaEntities.size()) {
                        TLRPC$MediaArea tLRPC$MediaArea = this.entry.mediaEntities.get(i).mediaArea;
                        if (tLRPC$MediaArea != null) {
                            tLRPC$TL_stories_editStory.media_areas.add(tLRPC$MediaArea);
                        }
                        i++;
                    }
                }
                boolean isEmpty = tLRPC$TL_stories_editStory.media_areas.isEmpty();
                tLRPC$TL_stories_sendStory = tLRPC$TL_stories_editStory;
                if (!isEmpty) {
                    tLRPC$TL_stories_editStory.flags |= 8;
                    tLRPC$TL_stories_sendStory = tLRPC$TL_stories_editStory;
                }
            } else {
                TLRPC$TL_stories_sendStory tLRPC$TL_stories_sendStory2 = new TLRPC$TL_stories_sendStory();
                tLRPC$TL_stories_sendStory2.random_id = this.random_id;
                tLRPC$TL_stories_sendStory2.media = tLRPC$InputMedia;
                tLRPC$TL_stories_sendStory2.privacy_rules.addAll(this.entry.privacyRules);
                StoryEntry storyEntry5 = this.entry;
                tLRPC$TL_stories_sendStory2.pinned = storyEntry5.pinned;
                tLRPC$TL_stories_sendStory2.noforwards = !storyEntry5.allowScreenshots;
                CharSequence charSequence3 = storyEntry5.caption;
                if (charSequence3 != null) {
                    tLRPC$TL_stories_sendStory2.flags |= 3;
                    CharSequence[] charSequenceArr2 = {charSequence3};
                    if (charSequenceArr2[0].length() > i2) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i2);
                    }
                    if (MessagesController.getInstance(StoriesController.this.currentAccount).storyEntitiesAllowed()) {
                        tLRPC$TL_stories_sendStory2.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr2, true);
                    } else {
                        tLRPC$TL_stories_sendStory2.entities.clear();
                    }
                    if (charSequenceArr2[0].length() > i2) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i2);
                    }
                    tLRPC$TL_stories_sendStory2.caption = charSequenceArr2[0].toString();
                }
                StoryEntry storyEntry6 = this.entry;
                int i3 = storyEntry6.period;
                if (i3 == Integer.MAX_VALUE) {
                    tLRPC$TL_stories_sendStory2.pinned = true;
                } else {
                    tLRPC$TL_stories_sendStory2.flags |= 8;
                    tLRPC$TL_stories_sendStory2.period = i3;
                }
                tLRPC$TL_stories_sendStory = tLRPC$TL_stories_sendStory2;
                if (storyEntry6.mediaEntities != null) {
                    while (i < this.entry.mediaEntities.size()) {
                        TLRPC$MediaArea tLRPC$MediaArea2 = this.entry.mediaEntities.get(i).mediaArea;
                        if (tLRPC$MediaArea2 != null) {
                            tLRPC$TL_stories_sendStory2.media_areas.add(tLRPC$MediaArea2);
                        }
                        i++;
                    }
                    boolean isEmpty2 = tLRPC$TL_stories_sendStory2.media_areas.isEmpty();
                    tLRPC$TL_stories_sendStory = tLRPC$TL_stories_sendStory2;
                    if (!isEmpty2) {
                        tLRPC$TL_stories_sendStory2.flags |= 32;
                        tLRPC$TL_stories_sendStory = tLRPC$TL_stories_sendStory2;
                    }
                }
            }
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda7
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.UploadingStory.this.lambda$sendUploadedRequest$7(tLObject, tLRPC$TL_error);
                }
            };
            if (!BuildVars.DEBUG_PRIVATE_VERSION || this.edit || (charSequence = this.entry.caption) == null || !charSequence.toString().contains("#failtest") || this.hadFailed) {
                this.currentRequest = ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tLRPC$TL_stories_sendStory, requestDelegate);
                return;
            }
            TLRPC$TL_error tLRPC$TL_error = new TLRPC$TL_error();
            tLRPC$TL_error.code = 400;
            tLRPC$TL_error.text = "FORCED_TO_FAIL";
            requestDelegate.run(null, tLRPC$TL_error);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$7(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject != null) {
                this.failed = false;
                TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
                int i = 0;
                final TLRPC$StoryItem tLRPC$StoryItem = null;
                for (int i2 = 0; i2 < tLRPC$Updates.updates.size(); i2++) {
                    if (tLRPC$Updates.updates.get(i2) instanceof TLRPC$TL_updateStory) {
                        TLRPC$StoryItem tLRPC$StoryItem2 = ((TLRPC$TL_updateStory) tLRPC$Updates.updates.get(i2)).story;
                        tLRPC$StoryItem2.attachPath = this.path;
                        tLRPC$StoryItem2.firstFramePath = this.firstFramePath;
                        tLRPC$StoryItem2.justUploaded = !this.edit;
                        int i3 = tLRPC$StoryItem2.f1557id;
                        if (tLRPC$StoryItem == null) {
                            tLRPC$StoryItem = tLRPC$StoryItem2;
                        } else {
                            tLRPC$StoryItem.media = tLRPC$StoryItem2.media;
                        }
                        i = i3;
                    }
                    if (tLRPC$Updates.updates.get(i2) instanceof TLRPC$TL_updateStoryID) {
                        TLRPC$TL_updateStoryID tLRPC$TL_updateStoryID = (TLRPC$TL_updateStoryID) tLRPC$Updates.updates.get(i2);
                        if (tLRPC$StoryItem == null) {
                            tLRPC$StoryItem = new TLRPC$TL_storyItem();
                            int currentTime = ConnectionsManager.getInstance(StoriesController.this.currentAccount).getCurrentTime();
                            tLRPC$StoryItem.date = currentTime;
                            StoryEntry storyEntry = this.entry;
                            int i4 = storyEntry.period;
                            if (i4 == Integer.MAX_VALUE) {
                                i4 = 86400;
                            }
                            tLRPC$StoryItem.expire_date = currentTime + i4;
                            tLRPC$StoryItem.parsedPrivacy = null;
                            tLRPC$StoryItem.privacy = StoryPrivacyBottomSheet.StoryPrivacy.toOutput(storyEntry.privacyRules);
                            tLRPC$StoryItem.pinned = this.entry.period == Integer.MAX_VALUE;
                            tLRPC$StoryItem.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                            tLRPC$StoryItem.attachPath = this.path;
                            tLRPC$StoryItem.firstFramePath = this.firstFramePath;
                            tLRPC$StoryItem.f1557id = tLRPC$TL_updateStoryID.f1678id;
                            tLRPC$StoryItem.justUploaded = !this.edit;
                        }
                    }
                }
                final long j = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                if (this.canceled) {
                    TLRPC$TL_stories_deleteStories tLRPC$TL_stories_deleteStories = new TLRPC$TL_stories_deleteStories();
                    tLRPC$TL_stories_deleteStories.f1662id.add(Integer.valueOf(i));
                    ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda8
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                            StoriesController.UploadingStory.this.lambda$sendUploadedRequest$3(tLObject2, tLRPC$TL_error2);
                        }
                    });
                } else {
                    if ((i == 0 || this.edit) && tLRPC$StoryItem != null) {
                        final TLRPC$TL_updateStory tLRPC$TL_updateStory = new TLRPC$TL_updateStory();
                        tLRPC$TL_updateStory.user_id = j;
                        tLRPC$TL_updateStory.story = tLRPC$StoryItem;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesController.UploadingStory.this.lambda$sendUploadedRequest$4(tLRPC$TL_updateStory);
                            }
                        });
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoriesController.UploadingStory.this.lambda$sendUploadedRequest$5(j, tLRPC$StoryItem);
                        }
                    });
                    MessagesController.getInstance(StoriesController.this.currentAccount).processUpdateArray(tLRPC$Updates.updates, tLRPC$Updates.users, tLRPC$Updates.chats, false, tLRPC$Updates.date);
                }
            } else if (tLRPC$TL_error != null && !this.edit) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.UploadingStory.this.lambda$sendUploadedRequest$6(tLRPC$TL_error);
                    }
                });
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.UploadingStory.this.cleanup();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$3(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda4(StoriesController.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$4(TLRPC$TL_updateStory tLRPC$TL_updateStory) {
            MessagesController.getInstance(StoriesController.this.currentAccount).getStoriesController().processUpdate(tLRPC$TL_updateStory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$5(long j, TLRPC$StoryItem tLRPC$StoryItem) {
            this.entryDestroyed = true;
            if (this.entry.isError) {
                StoriesController.this.getDraftsController().delete(this.entry);
            }
            StoryEntry storyEntry = this.entry;
            storyEntry.isError = false;
            storyEntry.error = null;
            StoriesController.this.getDraftsController().saveForEdit(this.entry, j, tLRPC$StoryItem);
            if (this.edit) {
                return;
            }
            StoriesController.this.invalidateStoryLimit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$6(TLRPC$TL_error tLRPC$TL_error) {
            this.entry.isError = true;
            if (StoriesController.this.checkStoryError(tLRPC$TL_error)) {
                this.entry.error = null;
            } else {
                this.entry.error = tLRPC$TL_error;
            }
            this.entryDestroyed = true;
            this.failed = true;
            this.hadFailed = true;
            StoriesController.this.getDraftsController().edit(this.entry);
        }

        private void putMessages() {
            int i;
            StoryEntry storyEntry;
            ArrayList<Long> arrayList = this.entry.shareUserIds;
            if (arrayList == null || this.putMessages) {
                return;
            }
            int size = arrayList.size();
            CharSequence charSequence = this.entry.caption;
            String charSequence2 = charSequence == null ? null : charSequence.toString();
            boolean z = true;
            ArrayList<TLRPC$MessageEntity> entities = this.entry.caption != null ? MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(new CharSequence[]{this.entry.caption}, true) : null;
            int i2 = 0;
            while (i2 < size) {
                long longValue = this.entry.shareUserIds.get(i2).longValue();
                if (this.entry.wouldBeVideo()) {
                    AccountInstance accountInstance = AccountInstance.getInstance(StoriesController.this.currentAccount);
                    String str = this.path;
                    StoryEntry storyEntry2 = this.entry;
                    i = i2;
                    SendMessagesHelper.prepareSendingVideo(accountInstance, str, null, longValue, null, null, null, entities, 0, null, storyEntry2.silent ^ z, storyEntry2.scheduleDate, false, false, charSequence2, null);
                } else {
                    i = i2;
                    SendMessagesHelper.prepareSendingPhoto(AccountInstance.getInstance(StoriesController.this.currentAccount), this.path, null, null, longValue, null, null, null, entities, null, null, 0, null, null, !storyEntry.silent, this.entry.scheduleDate, false, charSequence2, null);
                }
                i2 = i + 1;
                z = true;
            }
            this.putMessages = z;
        }

        public void cancel() {
            if (this.failed) {
                StoriesController.this.getDraftsController().delete(this.entry);
                StoriesController.this.uploadingStories.remove(this);
            }
            this.canceled = true;
            if (this.entry.wouldBeVideo()) {
                MediaController.getInstance().cancelVideoConvert(this.messageObject);
            }
            FileLoader.getInstance(StoriesController.this.currentAccount).cancelFileUpload(this.path, false);
            if (this.currentRequest >= 0) {
                ConnectionsManager.getInstance(StoriesController.this.currentAccount).cancelRequest(this.currentRequest, true);
            }
            cleanup();
        }

        public boolean isCloseFriends() {
            return this.isCloseFriends;
        }
    }

    public StoriesList getStoriesList(long j, int i) {
        return getStoriesList(j, i, true);
    }

    private StoriesList getStoriesList(long j, int i, boolean z) {
        if (i != 1 || j == getSelfUserId()) {
            HashMap<Long, StoriesList>[] hashMapArr = this.storiesLists;
            if (hashMapArr[i] == null) {
                hashMapArr[i] = new HashMap<>();
            }
            StoriesList storiesList = this.storiesLists[i].get(Long.valueOf(j));
            if (storiesList == null && z) {
                HashMap<Long, StoriesList> hashMap = this.storiesLists[i];
                Long valueOf = Long.valueOf(j);
                StoriesList storiesList2 = new StoriesList(this.currentAccount, j, i, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda18
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoriesController.this.destroyStoryList((StoriesController.StoriesList) obj);
                    }
                }, null);
                hashMap.put(valueOf, storiesList2);
                return storiesList2;
            }
            return storiesList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemIds(List<TLRPC$StoryItem> list) {
        if (list == null) {
            return "null";
        }
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                str = str + list.get(i).f1557id + "@" + list.get(i).dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemMessageIds(List<MessageObject> list) {
        TLRPC$StoryItem tLRPC$StoryItem;
        if (list == null) {
            return "null";
        }
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                str = list.get(i).storyItem == null ? str + "null" : str + tLRPC$StoryItem.f1557id + "@" + tLRPC$StoryItem.dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    public void updateStoriesInLists(long j, List<TLRPC$StoryItem> list) {
        FileLog.m70d("updateStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
        StoriesList storiesList = getStoriesList(j, 0, false);
        StoriesList storiesList2 = getStoriesList(j, 1, false);
        if (storiesList != null) {
            storiesList.updateStories(list);
        }
        if (storiesList2 != null) {
            storiesList2.updateStories(list);
        }
    }

    public void updateDeletedStoriesInLists(long j, List<TLRPC$StoryItem> list) {
        FileLog.m70d("updateDeletedStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
        StoriesList storiesList = getStoriesList(j, 0, false);
        StoriesList storiesList2 = getStoriesList(j, 1, false);
        if (storiesList != null) {
            storiesList.updateDeletedStories(list);
        }
        if (storiesList2 != null) {
            storiesList2.updateDeletedStories(list);
        }
    }

    public void destroyStoryList(StoriesList storiesList) {
        HashMap<Long, StoriesList>[] hashMapArr = this.storiesLists;
        int i = storiesList.type;
        if (hashMapArr[i] != null) {
            hashMapArr[i].remove(Long.valueOf(storiesList.userId));
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoriesController$StoriesList */
    /* loaded from: classes7.dex */
    public static class StoriesList {
        private static HashMap<Integer, Long> lastLoadTime;
        private final SortedSet<Integer> cachedObjects;
        public final int currentAccount;
        private Runnable destroyRunnable;
        private boolean done;
        private boolean error;
        public final HashMap<Long, TreeSet<Integer>> groupedByDay;
        private boolean invalidateAfterPreload;
        private final ArrayList<Integer> links;
        private final SortedSet<Integer> loadedObjects;
        private boolean loading;
        private int maxLinkId;
        public final ArrayList<MessageObject> messageObjects;
        private final HashMap<Integer, MessageObject> messageObjectsMap;
        private final Runnable notify;
        private boolean preloading;
        private boolean saving;
        private boolean showPhotos;
        private boolean showVideos;
        private final ArrayList<MessageObject> tempArr;
        private Utilities.CallbackReturn<Integer, Boolean> toLoad;
        private int totalCount;
        public final int type;
        public final long userId;

        /* synthetic */ StoriesList(int i, long j, int i2, Utilities.Callback callback, C68921 c68921) {
            this(i, j, i2, callback);
        }

        public int link() {
            int i = this.maxLinkId;
            this.maxLinkId = i + 1;
            this.links.add(Integer.valueOf(i));
            AndroidUtilities.cancelRunOnUIThread(this.destroyRunnable);
            return i;
        }

        public void unlink(int i) {
            this.links.remove(Integer.valueOf(i));
            if (this.links.isEmpty()) {
                AndroidUtilities.cancelRunOnUIThread(this.destroyRunnable);
                AndroidUtilities.runOnUIThread(this.destroyRunnable, 300000L);
            }
        }

        public void updateFilters(boolean z, boolean z2) {
            this.showPhotos = z;
            this.showVideos = z2;
            fill(true);
        }

        public boolean isOnlyCache() {
            return this.loadedObjects.isEmpty() && canLoad();
        }

        public boolean showPhotos() {
            return this.showPhotos;
        }

        public boolean showVideos() {
            return this.showVideos;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this);
        }

        public void fill(boolean z) {
            fill(this.messageObjects, this.showPhotos, this.showVideos);
            if (z) {
                AndroidUtilities.cancelRunOnUIThread(this.notify);
                AndroidUtilities.runOnUIThread(this.notify);
            }
        }

        private void fill(ArrayList<MessageObject> arrayList, boolean z, boolean z2) {
            this.tempArr.clear();
            int i = Integer.MAX_VALUE;
            for (Integer num : this.loadedObjects) {
                int intValue = num.intValue();
                MessageObject messageObject = this.messageObjectsMap.get(Integer.valueOf(intValue));
                if (filter(messageObject, z, z2)) {
                    this.tempArr.add(messageObject);
                }
                if (intValue < i) {
                    i = intValue;
                }
            }
            if (!this.done) {
                Iterator<Integer> it = this.cachedObjects.iterator();
                while (it.hasNext() && (this.totalCount == -1 || this.tempArr.size() < this.totalCount)) {
                    int intValue2 = it.next().intValue();
                    if (i == Integer.MAX_VALUE || intValue2 < i) {
                        MessageObject messageObject2 = this.messageObjectsMap.get(Integer.valueOf(intValue2));
                        if (filter(messageObject2, z, z2)) {
                            this.tempArr.add(messageObject2);
                        }
                    }
                }
            }
            arrayList.clear();
            arrayList.addAll(this.tempArr);
        }

        private boolean filter(MessageObject messageObject, boolean z, boolean z2) {
            return messageObject != null && messageObject.isStory() && ((z && messageObject.isPhoto()) || ((z2 && messageObject.isVideo()) || (messageObject.storyItem.media instanceof TLRPC$TL_messageMediaUnsupported)));
        }

        private StoriesList(int i, long j, int i2, final Utilities.Callback<StoriesList> callback) {
            this.maxLinkId = 0;
            this.links = new ArrayList<>();
            this.groupedByDay = new HashMap<>();
            this.messageObjects = new ArrayList<>();
            this.messageObjectsMap = new HashMap<>();
            this.cachedObjects = new TreeSet(Comparator.CC.reverseOrder());
            this.loadedObjects = new TreeSet(Comparator.CC.reverseOrder());
            this.showPhotos = true;
            this.showVideos = true;
            this.tempArr = new ArrayList<>();
            this.notify = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$new$0();
                }
            };
            this.totalCount = -1;
            this.currentAccount = i;
            this.userId = j;
            this.type = i2;
            this.destroyRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$new$1(callback);
                }
            };
            preloadCache();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Utilities.Callback callback) {
            callback.run(this);
        }

        private void preloadCache() {
            if (this.preloading || this.loading || this.error) {
                return;
            }
            this.preloading = true;
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$preloadCache$3(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$3(MessagesStorage messagesStorage) {
            HashSet hashSet = new HashSet();
            final ArrayList arrayList = new ArrayList();
            final ArrayList<TLRPC$User> arrayList2 = new ArrayList<>();
            SQLiteCursor sQLiteCursor = null;
            try {
                SQLiteDatabase database = messagesStorage.getDatabase();
                sQLiteCursor = this.type == 0 ? database.queryFinalized(String.format(Locale.US, "SELECT data FROM profile_stories WHERE dialog_id = %d ORDER BY story_id DESC", Long.valueOf(this.userId)), new Object[0]) : database.queryFinalized("SELECT data FROM archived_stories ORDER BY story_id DESC", new Object[0]);
                while (sQLiteCursor.next()) {
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        TLRPC$StoryItem TLdeserialize = TLRPC$StoryItem.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(true), true);
                        TLdeserialize.dialogId = this.userId;
                        TLdeserialize.messageId = TLdeserialize.f1557id;
                        MessageObject messageObject = new MessageObject(this.currentAccount, TLdeserialize);
                        Iterator<TLRPC$PrivacyRule> it = TLdeserialize.privacy.iterator();
                        while (it.hasNext()) {
                            TLRPC$PrivacyRule next = it.next();
                            if (next instanceof TLRPC$TL_privacyValueDisallowUsers) {
                                hashSet.addAll(((TLRPC$TL_privacyValueDisallowUsers) next).users);
                            } else if (next instanceof TLRPC$TL_privacyValueAllowUsers) {
                                hashSet.addAll(((TLRPC$TL_privacyValueAllowUsers) next).users);
                            }
                        }
                        messageObject.generateThumbs(false);
                        arrayList.add(messageObject);
                        byteBufferValue.reuse();
                    }
                }
                sQLiteCursor.dispose();
                if (!hashSet.isEmpty()) {
                    messagesStorage.getUsersInternal(TextUtils.join(",", hashSet), arrayList2);
                }
            } catch (Throwable th) {
                try {
                    messagesStorage.checkSQLException(th);
                } finally {
                    if (sQLiteCursor != null) {
                        sQLiteCursor.dispose();
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$preloadCache$2(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$2(ArrayList arrayList, ArrayList arrayList2) {
            FileLog.m70d("StoriesList " + this.type + "{" + this.userId + "} preloadCache {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            this.preloading = false;
            MessagesController.getInstance(this.currentAccount).putUsers(arrayList2, true);
            if (this.invalidateAfterPreload) {
                this.invalidateAfterPreload = false;
                this.toLoad = null;
                invalidateCache();
                return;
            }
            this.cachedObjects.clear();
            for (int i = 0; i < arrayList.size(); i++) {
                pushObject((MessageObject) arrayList.get(i), true);
            }
            fill(false);
            Utilities.CallbackReturn<Integer, Boolean> callbackReturn = this.toLoad;
            if (callbackReturn != null) {
                callbackReturn.run(0);
                this.toLoad = null;
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this);
        }

        private void pushObject(MessageObject messageObject, boolean z) {
            if (messageObject == null) {
                return;
            }
            this.messageObjectsMap.put(Integer.valueOf(messageObject.getId()), messageObject);
            (z ? this.cachedObjects : this.loadedObjects).add(Integer.valueOf(messageObject.getId()));
            long day = day(messageObject);
            TreeSet<Integer> treeSet = this.groupedByDay.get(Long.valueOf(day));
            if (treeSet == null) {
                HashMap<Long, TreeSet<Integer>> hashMap = this.groupedByDay;
                Long valueOf = Long.valueOf(day);
                TreeSet<Integer> treeSet2 = new TreeSet<>(Comparator.CC.reverseOrder());
                hashMap.put(valueOf, treeSet2);
                treeSet = treeSet2;
            }
            treeSet.add(Integer.valueOf(messageObject.getId()));
        }

        private boolean removeObject(int i, boolean z) {
            MessageObject remove = this.messageObjectsMap.remove(Integer.valueOf(i));
            if (z) {
                this.cachedObjects.remove(Integer.valueOf(i));
            }
            this.loadedObjects.remove(Integer.valueOf(i));
            if (remove != null) {
                long day = day(remove);
                TreeSet<Integer> treeSet = this.groupedByDay.get(Long.valueOf(day));
                if (treeSet != null) {
                    treeSet.remove(Integer.valueOf(i));
                    if (treeSet.isEmpty()) {
                        this.groupedByDay.remove(Long.valueOf(day));
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }

        public static long day(MessageObject messageObject) {
            Calendar calendar;
            if (messageObject == null) {
                return 0L;
            }
            long j = messageObject.messageOwner.date;
            Calendar.getInstance().setTimeInMillis(j * 1000);
            return (calendar.get(1) * 10000) + (calendar.get(2) * 100) + calendar.get(5);
        }

        public ArrayList<ArrayList<Integer>> getDays() {
            ArrayList arrayList = new ArrayList(this.groupedByDay.keySet());
            Collections.sort(arrayList, new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda10
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$getDays$4;
                    lambda$getDays$4 = StoriesController.StoriesList.lambda$getDays$4((Long) obj, (Long) obj2);
                    return lambda$getDays$4;
                }
            });
            ArrayList<ArrayList<Integer>> arrayList2 = new ArrayList<>();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                TreeSet<Integer> treeSet = this.groupedByDay.get((Long) it.next());
                if (treeSet != null) {
                    arrayList2.add(new ArrayList<>(treeSet));
                }
            }
            return arrayList2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$getDays$4(Long l, Long l2) {
            return (int) (l2.longValue() - l.longValue());
        }

        public void invalidateCache() {
            if (this.preloading) {
                this.invalidateAfterPreload = true;
                return;
            }
            resetCanLoad();
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$invalidateCache$6(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$invalidateCache$6(MessagesStorage messagesStorage) {
            try {
                SQLiteDatabase database = messagesStorage.getDatabase();
                int i = this.type;
                if (i == 0) {
                    database.executeFast(String.format(Locale.US, "DELETE FROM profile_stories WHERE dialog_id = %d", Long.valueOf(this.userId))).stepThis().dispose();
                } else if (i == 1) {
                    database.executeFast("DELETE FROM archived_stories").stepThis().dispose();
                }
            } catch (Throwable th) {
                messagesStorage.checkSQLException(th);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$invalidateCache$5();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$invalidateCache$5() {
            this.cachedObjects.clear();
            fill(true);
        }

        private void saveCache() {
            if (this.saving) {
                return;
            }
            this.saving = true;
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$saveCache$8(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x00c0, code lost:
            if (r2 != null) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00cc, code lost:
            org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.p043ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3(r10));
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00d4, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$saveCache$8(org.telegram.messenger.MessagesStorage r11) {
            /*
                r10 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r1 = 1
                r10.fill(r0, r1, r1)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "StoriesList "
                r2.append(r3)
                int r3 = r10.type
                r2.append(r3)
                java.lang.String r3 = "{"
                r2.append(r3)
                long r3 = r10.userId
                r2.append(r3)
                java.lang.String r3 = "} saveCache {"
                r2.append(r3)
                java.lang.String r3 = org.telegram.p043ui.Stories.StoriesController.access$600(r0)
                r2.append(r3)
                java.lang.String r3 = "}"
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                org.telegram.messenger.FileLog.m70d(r2)
                r2 = 0
                org.telegram.SQLite.SQLiteDatabase r3 = r11.getDatabase()     // Catch: java.lang.Throwable -> Lc3
                int r4 = r10.type     // Catch: java.lang.Throwable -> Lc3
                r5 = 0
                if (r4 != 0) goto L68
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lc3
                java.lang.String r6 = "DELETE FROM profile_stories WHERE dialog_id = %d"
                java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lc3
                long r8 = r10.userId     // Catch: java.lang.Throwable -> Lc3
                java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> Lc3
                r7[r5] = r8     // Catch: java.lang.Throwable -> Lc3
                java.lang.String r4 = java.lang.String.format(r4, r6, r7)     // Catch: java.lang.Throwable -> Lc3
                org.telegram.SQLite.SQLitePreparedStatement r4 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lc3
                org.telegram.SQLite.SQLitePreparedStatement r4 = r4.stepThis()     // Catch: java.lang.Throwable -> Lc3
                r4.dispose()     // Catch: java.lang.Throwable -> Lc3
                java.lang.String r4 = "REPLACE INTO profile_stories VALUES(?, ?, ?)"
                org.telegram.SQLite.SQLitePreparedStatement r2 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lc3
                goto L7b
            L68:
                java.lang.String r4 = "DELETE FROM archived_stories"
                org.telegram.SQLite.SQLitePreparedStatement r4 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lc3
                org.telegram.SQLite.SQLitePreparedStatement r4 = r4.stepThis()     // Catch: java.lang.Throwable -> Lc3
                r4.dispose()     // Catch: java.lang.Throwable -> Lc3
                java.lang.String r4 = "REPLACE INTO archived_stories VALUES(?, ?)"
                org.telegram.SQLite.SQLitePreparedStatement r2 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lc3
            L7b:
                int r3 = r0.size()     // Catch: java.lang.Throwable -> Lc3
                if (r5 >= r3) goto Lc0
                java.lang.Object r3 = r0.get(r5)     // Catch: java.lang.Throwable -> Lc3
                org.telegram.messenger.MessageObject r3 = (org.telegram.messenger.MessageObject) r3     // Catch: java.lang.Throwable -> Lc3
                org.telegram.tgnet.TLRPC$StoryItem r3 = r3.storyItem     // Catch: java.lang.Throwable -> Lc3
                if (r3 != 0) goto L8c
                goto Lbd
            L8c:
                org.telegram.tgnet.NativeByteBuffer r4 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> Lc3
                int r6 = r3.getObjectSize()     // Catch: java.lang.Throwable -> Lc3
                r4.<init>(r6)     // Catch: java.lang.Throwable -> Lc3
                r3.serializeToStream(r4)     // Catch: java.lang.Throwable -> Lc3
                r2.requery()     // Catch: java.lang.Throwable -> Lc3
                int r6 = r10.type     // Catch: java.lang.Throwable -> Lc3
                r7 = 2
                if (r6 != 0) goto Laf
                long r8 = r10.userId     // Catch: java.lang.Throwable -> Lc3
                r2.bindLong(r1, r8)     // Catch: java.lang.Throwable -> Lc3
                int r3 = r3.f1557id     // Catch: java.lang.Throwable -> Lc3
                r2.bindInteger(r7, r3)     // Catch: java.lang.Throwable -> Lc3
                r3 = 3
                r2.bindByteBuffer(r3, r4)     // Catch: java.lang.Throwable -> Lc3
                goto Lb7
            Laf:
                int r3 = r3.f1557id     // Catch: java.lang.Throwable -> Lc3
                r2.bindInteger(r1, r3)     // Catch: java.lang.Throwable -> Lc3
                r2.bindByteBuffer(r7, r4)     // Catch: java.lang.Throwable -> Lc3
            Lb7:
                r2.step()     // Catch: java.lang.Throwable -> Lc3
                r4.reuse()     // Catch: java.lang.Throwable -> Lc3
            Lbd:
                int r5 = r5 + 1
                goto L7b
            Lc0:
                if (r2 == 0) goto Lcc
                goto Lc9
            Lc3:
                r0 = move-exception
                r11.checkSQLException(r0)     // Catch: java.lang.Throwable -> Ld5
                if (r2 == 0) goto Lcc
            Lc9:
                r2.dispose()
            Lcc:
                org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3 r11 = new org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3
                r11.<init>()
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r11)
                return
            Ld5:
                r11 = move-exception
                if (r2 == 0) goto Ldb
                r2.dispose()
            Ldb:
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.StoriesList.lambda$saveCache$8(org.telegram.messenger.MessagesStorage):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$saveCache$7() {
            this.saving = false;
        }

        private boolean canLoad() {
            Long l;
            return lastLoadTime == null || (l = lastLoadTime.get(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.userId))))) == null || System.currentTimeMillis() - l.longValue() > 120000;
        }

        private void resetCanLoad() {
            HashMap<Integer, Long> hashMap = lastLoadTime;
            if (hashMap != null) {
                hashMap.remove(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.userId))));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean load(final boolean z, final int i) {
            TLRPC$TL_stories_getStoriesArchive tLRPC$TL_stories_getStoriesArchive;
            if (this.loading || ((this.done || this.error || !canLoad()) && !z)) {
                return false;
            }
            if (this.preloading) {
                this.toLoad = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        Boolean lambda$load$9;
                        lambda$load$9 = StoriesController.StoriesList.this.lambda$load$9(z, i, (Integer) obj);
                        return lambda$load$9;
                    }
                };
                return false;
            }
            final int i2 = -1;
            if (this.type == 0) {
                TLRPC$TL_stories_getPinnedStories tLRPC$TL_stories_getPinnedStories = new TLRPC$TL_stories_getPinnedStories();
                tLRPC$TL_stories_getPinnedStories.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(this.userId);
                if (!this.loadedObjects.isEmpty()) {
                    i2 = this.loadedObjects.last().intValue();
                    tLRPC$TL_stories_getPinnedStories.offset_id = i2;
                }
                tLRPC$TL_stories_getPinnedStories.limit = i;
                tLRPC$TL_stories_getStoriesArchive = tLRPC$TL_stories_getPinnedStories;
            } else {
                TLRPC$TL_stories_getStoriesArchive tLRPC$TL_stories_getStoriesArchive2 = new TLRPC$TL_stories_getStoriesArchive();
                if (!this.loadedObjects.isEmpty()) {
                    i2 = this.loadedObjects.last().intValue();
                    tLRPC$TL_stories_getStoriesArchive2.offset_id = i2;
                }
                tLRPC$TL_stories_getStoriesArchive2.limit = i;
                tLRPC$TL_stories_getStoriesArchive = tLRPC$TL_stories_getStoriesArchive2;
            }
            FileLog.m70d("StoriesList " + this.type + "{" + this.userId + "} load");
            this.loading = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesArchive, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.StoriesList.this.lambda$load$12(i2, tLObject, tLRPC$TL_error);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$load$9(boolean z, int i, Integer num) {
            return Boolean.valueOf(load(z, i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$12(final int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject instanceof TLRPC$TL_stories_stories) {
                final ArrayList arrayList = new ArrayList();
                final TLRPC$TL_stories_stories tLRPC$TL_stories_stories = (TLRPC$TL_stories_stories) tLObject;
                for (int i2 = 0; i2 < tLRPC$TL_stories_stories.stories.size(); i2++) {
                    arrayList.add(toMessageObject(tLRPC$TL_stories_stories.stories.get(i2)));
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.StoriesList.this.lambda$load$10(arrayList, tLRPC$TL_stories_stories, i);
                    }
                });
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$load$11();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$10(ArrayList arrayList, TLRPC$TL_stories_stories tLRPC$TL_stories_stories, int i) {
            FileLog.m70d("StoriesList " + this.type + "{" + this.userId + "} loaded {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_stories_stories.users, false);
            this.loading = false;
            this.totalCount = tLRPC$TL_stories_stories.count;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                pushObject((MessageObject) arrayList.get(i2), false);
            }
            boolean z = this.loadedObjects.size() >= this.totalCount;
            this.done = z;
            if (!z) {
                if (i == -1) {
                    i = this.loadedObjects.first().intValue();
                }
                int intValue = !this.loadedObjects.isEmpty() ? this.loadedObjects.last().intValue() : 0;
                Iterator<Integer> it = this.cachedObjects.iterator();
                while (it.hasNext()) {
                    int intValue2 = it.next().intValue();
                    if (!this.loadedObjects.contains(Integer.valueOf(intValue2)) && intValue2 >= i && intValue2 <= intValue) {
                        it.remove();
                        removeObject(intValue2, false);
                    }
                }
            } else {
                Iterator<Integer> it2 = this.cachedObjects.iterator();
                while (it2.hasNext()) {
                    int intValue3 = it2.next().intValue();
                    if (!this.loadedObjects.contains(Integer.valueOf(intValue3))) {
                        it2.remove();
                        removeObject(intValue3, false);
                    }
                }
            }
            fill(true);
            if (this.done) {
                if (lastLoadTime == null) {
                    lastLoadTime = new HashMap<>();
                }
                lastLoadTime.put(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.userId))), Long.valueOf(System.currentTimeMillis()));
            } else {
                resetCanLoad();
            }
            saveCache();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$11() {
            this.loading = false;
            this.error = true;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this, Boolean.FALSE);
        }

        public void updateDeletedStories(List<TLRPC$StoryItem> list) {
            FileLog.m70d("StoriesList " + this.type + "{" + this.userId + "} updateDeletedStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TLRPC$StoryItem tLRPC$StoryItem = list.get(i);
                if (tLRPC$StoryItem != null) {
                    if (this.loadedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1557id)) || this.cachedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1557id))) {
                        this.loadedObjects.remove(Integer.valueOf(tLRPC$StoryItem.f1557id));
                        this.cachedObjects.remove(Integer.valueOf(tLRPC$StoryItem.f1557id));
                        int i2 = this.totalCount;
                        if (i2 != -1) {
                            this.totalCount = i2 - 1;
                        }
                        z = true;
                    }
                    removeObject(tLRPC$StoryItem.f1557id, true);
                }
            }
            if (z) {
                fill(true);
                saveCache();
            }
        }

        public void updateStories(List<TLRPC$StoryItem> list) {
            MessageObject messageObject;
            FileLog.m70d("StoriesList " + this.type + "{" + this.userId + "} updateStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TLRPC$StoryItem tLRPC$StoryItem = list.get(i);
                if (tLRPC$StoryItem != null) {
                    boolean z2 = this.loadedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1557id)) || this.cachedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1557id));
                    boolean z3 = this.type == 1 ? true : tLRPC$StoryItem.pinned;
                    if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                        z3 = false;
                    }
                    if (z2 != z3) {
                        if (!z3) {
                            FileLog.m70d("StoriesList remove story " + tLRPC$StoryItem.f1557id);
                            removeObject(tLRPC$StoryItem.f1557id, true);
                            int i2 = this.totalCount;
                            if (i2 != -1) {
                                this.totalCount = i2 - 1;
                            }
                        } else {
                            FileLog.m70d("StoriesList put story " + tLRPC$StoryItem.f1557id);
                            pushObject(toMessageObject(tLRPC$StoryItem), false);
                            int i3 = this.totalCount;
                            if (i3 != -1) {
                                this.totalCount = i3 + 1;
                            }
                        }
                    } else if (z2 && z3 && ((messageObject = this.messageObjectsMap.get(Integer.valueOf(tLRPC$StoryItem.f1557id))) == null || !equal(messageObject.storyItem, tLRPC$StoryItem))) {
                        FileLog.m70d("StoriesList update story " + tLRPC$StoryItem.f1557id);
                        this.messageObjectsMap.put(Integer.valueOf(tLRPC$StoryItem.f1557id), toMessageObject(tLRPC$StoryItem));
                    }
                    z = true;
                }
            }
            if (z) {
                fill(true);
                saveCache();
            }
        }

        public MessageObject findMessageObject(int i) {
            return this.messageObjectsMap.get(Integer.valueOf(i));
        }

        public boolean equal(TLRPC$StoryItem tLRPC$StoryItem, TLRPC$StoryItem tLRPC$StoryItem2) {
            if (tLRPC$StoryItem == null && tLRPC$StoryItem2 == null) {
                return true;
            }
            if ((tLRPC$StoryItem == null) != (tLRPC$StoryItem2 == null)) {
                return false;
            }
            if (tLRPC$StoryItem != tLRPC$StoryItem2) {
                return tLRPC$StoryItem.f1557id == tLRPC$StoryItem2.f1557id && tLRPC$StoryItem.media == tLRPC$StoryItem2.media && TextUtils.equals(tLRPC$StoryItem.caption, tLRPC$StoryItem2.caption);
            }
            return true;
        }

        private MessageObject toMessageObject(TLRPC$StoryItem tLRPC$StoryItem) {
            tLRPC$StoryItem.dialogId = this.userId;
            tLRPC$StoryItem.messageId = tLRPC$StoryItem.f1557id;
            MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$StoryItem);
            messageObject.generateThumbs(false);
            return messageObject;
        }

        public boolean isLoading() {
            return this.preloading || this.loading;
        }

        public boolean isFull() {
            return this.done;
        }

        public int getLoadedCount() {
            return this.loadedObjects.size();
        }

        public int getCount() {
            if (this.showVideos && this.showPhotos) {
                if (this.totalCount < 0) {
                    return this.messageObjects.size();
                }
                return Math.max(this.messageObjects.size(), this.totalCount);
            }
            return this.messageObjects.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$new$22(TLRPC$TL_userStories tLRPC$TL_userStories, TLRPC$TL_userStories tLRPC$TL_userStories2) {
        ArrayList<TLRPC$StoryItem> arrayList;
        int i;
        ArrayList<TLRPC$StoryItem> arrayList2;
        boolean hasUnreadStories = hasUnreadStories(tLRPC$TL_userStories.user_id);
        boolean hasUnreadStories2 = hasUnreadStories(tLRPC$TL_userStories2.user_id);
        if (hasUnreadStories != hasUnreadStories2) {
            return (hasUnreadStories2 ? 1 : 0) - (hasUnreadStories ? 1 : 0);
        }
        boolean isService = UserObject.isService(tLRPC$TL_userStories.user_id);
        boolean isService2 = UserObject.isService(tLRPC$TL_userStories2.user_id);
        if (isService != isService2) {
            return (isService2 ? 1 : 0) - (isService ? 1 : 0);
        }
        boolean isPremium = isPremium(tLRPC$TL_userStories.user_id);
        boolean isPremium2 = isPremium(tLRPC$TL_userStories2.user_id);
        if (isPremium != isPremium2) {
            return (isPremium2 ? 1 : 0) - (isPremium ? 1 : 0);
        }
        int i2 = 0;
        if (tLRPC$TL_userStories.stories.isEmpty()) {
            i = 0;
        } else {
            i = tLRPC$TL_userStories.stories.get(arrayList.size() - 1).date;
        }
        if (!tLRPC$TL_userStories2.stories.isEmpty()) {
            i2 = tLRPC$TL_userStories2.stories.get(arrayList2.size() - 1).date;
        }
        return i2 - i;
    }

    private boolean isPremium(long j) {
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        if (user == null) {
            return false;
        }
        return user.premium;
    }

    public void scheduleSort() {
        AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
        this.sortStoriesRunnable.run();
    }

    public boolean hasOnlySelfStories() {
        if (hasSelfStories()) {
            if (getDialogListStories().isEmpty()) {
                return true;
            }
            if (getDialogListStories().size() == 1 && getDialogListStories().get(0).user_id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                return true;
            }
        }
        return false;
    }

    public void sortHiddenStories() {
        sortDialogStories(this.hiddenListStories);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void loadBlocklistAtFirst() {
        if (this.lastBlocklistRequested == 0) {
            loadBlocklist(false);
        }
    }

    public void loadBlocklist(boolean z) {
        if (this.blocklistLoading) {
            if (!z || this.blocklistLoadingReset) {
                return;
            }
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.blocklistReqId, true);
            this.blocklistReqId = 0;
            this.blocklistLoadingReset = false;
            this.blocklistLoading = false;
        }
        if (!z || System.currentTimeMillis() - this.lastBlocklistRequested >= 1800000) {
            if (z || !this.blocklistFull) {
                this.blocklistLoading = true;
                this.blocklistLoadingReset = z;
                TLRPC$TL_contacts_getBlocked tLRPC$TL_contacts_getBlocked = new TLRPC$TL_contacts_getBlocked();
                tLRPC$TL_contacts_getBlocked.my_stories_from = true;
                if (z) {
                    tLRPC$TL_contacts_getBlocked.offset = 0;
                    tLRPC$TL_contacts_getBlocked.limit = 100;
                    this.blocklistFull = false;
                } else {
                    tLRPC$TL_contacts_getBlocked.offset = this.blocklist.size();
                    tLRPC$TL_contacts_getBlocked.limit = 25;
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_getBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda24
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StoriesController.this.lambda$loadBlocklist$24(tLObject, tLRPC$TL_error);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBlocklist$24(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadBlocklist$23(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBlocklist$23(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_contacts_blocked) {
            TLRPC$TL_contacts_blocked tLRPC$TL_contacts_blocked = (TLRPC$TL_contacts_blocked) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_contacts_blocked.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_contacts_blocked.chats, false);
            this.blocklist.clear();
            Iterator<TLRPC$TL_peerBlocked> it = tLRPC$TL_contacts_blocked.blocked.iterator();
            while (it.hasNext()) {
                this.blocklist.add(Long.valueOf(DialogObject.getPeerDialogId(it.next().peer_id)));
            }
            this.blocklistCount = Math.max(this.blocklist.size(), tLRPC$TL_contacts_blocked.count);
            this.blocklistFull = true;
        } else if (!(tLObject instanceof TLRPC$TL_contacts_blockedSlice)) {
            return;
        } else {
            TLRPC$TL_contacts_blockedSlice tLRPC$TL_contacts_blockedSlice = (TLRPC$TL_contacts_blockedSlice) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_contacts_blockedSlice.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_contacts_blockedSlice.chats, false);
            Iterator<TLRPC$TL_peerBlocked> it2 = tLRPC$TL_contacts_blockedSlice.blocked.iterator();
            while (it2.hasNext()) {
                this.blocklist.add(Long.valueOf(DialogObject.getPeerDialogId(it2.next().peer_id)));
            }
            this.blocklistCount = tLRPC$TL_contacts_blockedSlice.count;
            this.blocklistFull = this.blocklist.size() >= this.blocklistCount;
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesBlocklistUpdate, new Object[0]);
        this.blocklistLoading = false;
        this.lastBlocklistRequested = System.currentTimeMillis();
    }

    public int getBlocklistCount() {
        return this.blocklistCount;
    }

    public void updateBlockedUsers(HashSet<Long> hashSet, final Runnable runnable) {
        TLRPC$TL_contacts_setBlocked tLRPC$TL_contacts_setBlocked = new TLRPC$TL_contacts_setBlocked();
        tLRPC$TL_contacts_setBlocked.my_stories_from = true;
        tLRPC$TL_contacts_setBlocked.limit = this.blocklist.size();
        int size = this.blocklistCount - this.blocklist.size();
        this.blocklistCount = size;
        if (size < 0) {
            this.blocklistCount = 0;
        }
        this.blocklist.clear();
        Iterator<Long> it = hashSet.iterator();
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            TLRPC$InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(longValue);
            if (inputPeer != null && !(inputPeer instanceof TLRPC$TL_inputPeerEmpty)) {
                this.blocklist.add(Long.valueOf(longValue));
                tLRPC$TL_contacts_setBlocked.f1574id.add(inputPeer);
            }
        }
        this.blocklistCount += this.blocklist.size();
        tLRPC$TL_contacts_setBlocked.limit = Math.max(tLRPC$TL_contacts_setBlocked.limit, this.blocklist.size());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_setBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$updateBlockedUsers$26(runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateBlockedUsers$26(final Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.lambda$updateBlockedUsers$25(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateBlockedUsers$25(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public boolean isBlocked(TLRPC$TL_storyView tLRPC$TL_storyView) {
        if (tLRPC$TL_storyView == null) {
            return false;
        }
        if (this.blockedOverride.containsKey(tLRPC$TL_storyView.user_id)) {
            return this.blockedOverride.get(tLRPC$TL_storyView.user_id).booleanValue();
        }
        if (this.lastBlocklistRequested == 0) {
            return tLRPC$TL_storyView.blocked_my_stories_from || tLRPC$TL_storyView.blocked;
        } else if (this.blocklist.contains(Long.valueOf(tLRPC$TL_storyView.user_id))) {
            return true;
        } else {
            return tLRPC$TL_storyView.blocked_my_stories_from || tLRPC$TL_storyView.blocked;
        }
    }

    public void applyStoryViewsBlocked(TLRPC$TL_stories_storyViewsList tLRPC$TL_stories_storyViewsList) {
        if (tLRPC$TL_stories_storyViewsList == null || tLRPC$TL_stories_storyViewsList.views == null) {
            return;
        }
        for (int i = 0; i < tLRPC$TL_stories_storyViewsList.views.size(); i++) {
            TLRPC$TL_storyView tLRPC$TL_storyView = tLRPC$TL_stories_storyViewsList.views.get(i);
            if (this.blockedOverride.containsKey(tLRPC$TL_storyView.user_id)) {
                this.blockedOverride.put(tLRPC$TL_storyView.user_id, Boolean.valueOf(tLRPC$TL_storyView.blocked_my_stories_from));
            }
        }
    }

    public void updateBlockUser(long j, boolean z) {
        updateBlockUser(j, z, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateBlockUser(long j, boolean z, boolean z2) {
        TLRPC$TL_contacts_unblock tLRPC$TL_contacts_unblock;
        TLRPC$InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        if (inputPeer == null || (inputPeer instanceof TLRPC$TL_inputPeerEmpty)) {
            return;
        }
        this.blockedOverride.put(j, Boolean.valueOf(z));
        if (this.blocklist.contains(Long.valueOf(j)) != z) {
            if (z) {
                this.blocklist.add(Long.valueOf(j));
                this.blocklistCount++;
            } else {
                this.blocklist.remove(Long.valueOf(j));
                this.blocklistCount--;
            }
        }
        if (z2) {
            if (z) {
                TLRPC$TL_contacts_block tLRPC$TL_contacts_block = new TLRPC$TL_contacts_block();
                tLRPC$TL_contacts_block.my_stories_from = true;
                tLRPC$TL_contacts_block.f1571id = inputPeer;
                tLRPC$TL_contacts_unblock = tLRPC$TL_contacts_block;
            } else {
                TLRPC$TL_contacts_unblock tLRPC$TL_contacts_unblock2 = new TLRPC$TL_contacts_unblock();
                tLRPC$TL_contacts_unblock2.my_stories_from = true;
                tLRPC$TL_contacts_unblock2.f1576id = inputPeer;
                tLRPC$TL_contacts_unblock = tLRPC$TL_contacts_unblock2;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_unblock, null);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesBlocklistUpdate, new Object[0]);
    }

    public StoryLimit checkStoryLimit() {
        int i;
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            i = MessagesController.getInstance(this.currentAccount).storyExpiringLimitPremium;
        } else {
            i = MessagesController.getInstance(this.currentAccount).storyExpiringLimitDefault;
        }
        if (getMyStoriesCount() >= i) {
            return new StoryLimit(1, 0L);
        }
        if (this.storyLimitFetched) {
            return this.storyLimitCached;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.TLRPC$TL_stories_canSendStory
            public static int constructor = -1325345699;

            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i2, boolean z) {
                return TLRPC$Bool.TLdeserialize(abstractSerializedData, i2, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(constructor);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$checkStoryLimit$28(tLObject, tLRPC$TL_error);
            }
        }, 1024);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStoryLimit$28(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$checkStoryLimit$27(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStoryLimit$27(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        this.storyLimitFetched = true;
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            this.storyLimitCached = null;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesLimitUpdate, new Object[0]);
            return;
        }
        checkStoryError(tLRPC$TL_error);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean checkStoryError(org.telegram.tgnet.TLRPC$TL_error r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L95
            java.lang.String r2 = r7.text
            if (r2 == 0) goto L95
            java.lang.String r3 = "STORY_SEND_FLOOD_WEEKLY_"
            boolean r2 = r2.startsWith(r3)
            r3 = 0
            if (r2 == 0) goto L27
            java.lang.String r7 = r7.text     // Catch: java.lang.Exception -> L1e
            r2 = 24
            java.lang.String r7 = r7.substring(r2)     // Catch: java.lang.Exception -> L1e
            long r3 = java.lang.Long.parseLong(r7)     // Catch: java.lang.Exception -> L1e
        L1e:
            org.telegram.ui.Stories.StoriesController$StoryLimit r7 = new org.telegram.ui.Stories.StoriesController$StoryLimit
            r2 = 2
            r7.<init>(r2, r3)
            r6.storyLimitCached = r7
            goto L96
        L27:
            java.lang.String r2 = r7.text
            java.lang.String r5 = "STORY_SEND_FLOOD_MONTHLY_"
            boolean r2 = r2.startsWith(r5)
            if (r2 == 0) goto L46
            java.lang.String r7 = r7.text     // Catch: java.lang.Exception -> L3d
            r2 = 25
            java.lang.String r7 = r7.substring(r2)     // Catch: java.lang.Exception -> L3d
            long r3 = java.lang.Long.parseLong(r7)     // Catch: java.lang.Exception -> L3d
        L3d:
            org.telegram.ui.Stories.StoriesController$StoryLimit r7 = new org.telegram.ui.Stories.StoriesController$StoryLimit
            r2 = 3
            r7.<init>(r2, r3)
            r6.storyLimitCached = r7
            goto L96
        L46:
            java.lang.String r2 = r7.text
            java.lang.String r5 = "STORIES_TOO_MUCH"
            boolean r2 = r2.equals(r5)
            if (r2 == 0) goto L58
            org.telegram.ui.Stories.StoriesController$StoryLimit r7 = new org.telegram.ui.Stories.StoriesController$StoryLimit
            r7.<init>(r1, r3)
            r6.storyLimitCached = r7
            goto L96
        L58:
            java.lang.String r7 = r7.text
            java.lang.String r2 = "PREMIUM_ACCOUNT_REQUIRED"
            boolean r7 = r7.equals(r2)
            if (r7 == 0) goto L95
            int r7 = r6.currentAccount
            org.telegram.messenger.MessagesController r7 = org.telegram.messenger.MessagesController.getInstance(r7)
            java.lang.String r2 = r7.storiesPosting
            java.lang.String r3 = "enabled"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L96
            android.content.SharedPreferences r2 = r7.getMainSettings()
            android.content.SharedPreferences$Editor r2 = r2.edit()
            java.lang.String r3 = "premium"
            r7.storiesPosting = r3
            java.lang.String r7 = "storiesPosting"
            android.content.SharedPreferences$Editor r7 = r2.putString(r7, r3)
            r7.apply()
            int r7 = r6.currentAccount
            org.telegram.messenger.NotificationCenter r7 = org.telegram.messenger.NotificationCenter.getInstance(r7)
            int r2 = org.telegram.messenger.NotificationCenter.storiesEnabledUpdate
            java.lang.Object[] r3 = new java.lang.Object[r0]
            r7.lambda$postNotificationNameOnUIThread$1(r2, r3)
            goto L96
        L95:
            r1 = r0
        L96:
            if (r1 == 0) goto La5
            int r7 = r6.currentAccount
            org.telegram.messenger.NotificationCenter r7 = org.telegram.messenger.NotificationCenter.getInstance(r7)
            int r2 = org.telegram.messenger.NotificationCenter.storiesLimitUpdate
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r7.lambda$postNotificationNameOnUIThread$1(r2, r0)
        La5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.checkStoryError(org.telegram.tgnet.TLRPC$TL_error):boolean");
    }

    public boolean hasStoryLimit() {
        StoryLimit checkStoryLimit = checkStoryLimit();
        return checkStoryLimit != null && checkStoryLimit.active(this.currentAccount);
    }

    public void invalidateStoryLimit() {
        this.storyLimitFetched = false;
        this.storyLimitCached = null;
    }

    /* renamed from: org.telegram.ui.Stories.StoriesController$StoryLimit */
    /* loaded from: classes7.dex */
    public static class StoryLimit {
        public int type;
        public long until;

        public StoryLimit(int i, long j) {
            this.type = i;
            this.until = j;
        }

        public int getLimitReachedType() {
            int i = this.type;
            if (i != 2) {
                return i != 3 ? 14 : 16;
            }
            return 15;
        }

        public boolean active(int i) {
            int i2 = this.type;
            return !(i2 == 2 || i2 == 3) || ((long) ConnectionsManager.getInstance(i).getCurrentTime()) < this.until;
        }
    }
}
