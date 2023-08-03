package org.telegram.p043ui.Stories;

import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import androidx.collection.LongSparseArray;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.exoplayer2.util.MimeTypes;
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
import org.telegram.messenger.C3419R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
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
import org.telegram.p043ui.Stories.SelfStoryViewsPage;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.recorder.DraftsController;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p043ui.Stories.recorder.StoryUploadingService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputMedia;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_contacts_toggleStoriesHidden;
import org.telegram.tgnet.TLRPC$TL_documentAttributeHasStickers;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedPhoto;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
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
import org.telegram.tgnet.TLRPC$TL_stories_sendStory;
import org.telegram.tgnet.TLRPC$TL_stories_stories;
import org.telegram.tgnet.TLRPC$TL_stories_togglePinned;
import org.telegram.tgnet.TLRPC$TL_stories_userStories;
import org.telegram.tgnet.TLRPC$TL_storyItem;
import org.telegram.tgnet.TLRPC$TL_storyItemDeleted;
import org.telegram.tgnet.TLRPC$TL_storyItemSkipped;
import org.telegram.tgnet.TLRPC$TL_updateStory;
import org.telegram.tgnet.TLRPC$TL_updateStoryID;
import org.telegram.tgnet.TLRPC$TL_userStories;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import p033j$.util.Comparator;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Stories.StoriesController */
/* loaded from: classes6.dex */
public class StoriesController {
    public static final Comparator<TLRPC$StoryItem> storiesComparator = Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda13
        @Override // p033j$.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            int i;
            i = ((TLRPC$StoryItem) obj).date;
            return i;
        }
    });
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
    private boolean storiesReadLoaded;
    StoriesStorage storiesStorage;
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
    private final java.util.Comparator<TLRPC$TL_userStories> userStoriesComparator = new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda12
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$new$21;
            lambda$new$21 = StoriesController.this.lambda$new$21((TLRPC$TL_userStories) obj, (TLRPC$TL_userStories) obj2);
            return lambda$new$21;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteStories$14(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteStory$13(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$markStoryAsRead$17(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$processAllStoriesResponse$9() {
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
        this.sortStoriesRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda4
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
        }, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda16
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda3
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
        int i = 0;
        while (i < arrayList.size()) {
            TLRPC$TL_userStories tLRPC$TL_userStories = arrayList.get(i);
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_userStories.user_id));
            if (user != null && !user.contact) {
                arrayList.remove(i);
                i--;
            }
            int i2 = 0;
            while (i2 < tLRPC$TL_userStories.stories.size()) {
                if (tLRPC$TL_userStories.stories.get(i2) instanceof TLRPC$TL_storyItemDeleted) {
                    tLRPC$TL_userStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (tLRPC$TL_userStories.stories.isEmpty()) {
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
            tLRPC$TL_contacts_toggleStoriesHidden.f1570id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
            tLRPC$TL_contacts_toggleStoriesHidden.hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_toggleStoriesHidden, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda20
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
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getAllStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda19
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadFromServer$8(z, tLRPC$TL_stories_getAllStories, z2, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$8(final boolean z, final TLRPC$TL_stories_getAllStories tLRPC$TL_stories_getAllStories, final boolean z2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda9
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
        FileLog.m70d("StoriesController processAllStoriesResponse " + tLRPC$TL_stories_allStories.user_stories.size() + " " + z2 + " " + z);
        MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_stories_allStories.users, false);
        for (int i = 0; i < tLRPC$TL_stories_allStories.user_stories.size(); i++) {
            TLRPC$TL_userStories tLRPC$TL_userStories = tLRPC$TL_stories_allStories.user_stories.get(i);
            int i2 = 0;
            while (i2 < tLRPC$TL_userStories.stories.size()) {
                if (tLRPC$TL_userStories.stories.get(i2) instanceof TLRPC$TL_storyItemDeleted) {
                    NotificationsController.getInstance(this.currentAccount).processDeleteStory(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i2).f1553id);
                    tLRPC$TL_userStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (!tLRPC$TL_userStories.stories.isEmpty()) {
                this.allStoriesMap.put(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
                int i3 = 0;
                while (i3 < 2) {
                    ArrayList<TLRPC$TL_userStories> arrayList = i3 == 0 ? this.hiddenListStories : this.dialogListStories;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= arrayList.size()) {
                            break;
                        } else if (arrayList.get(i4).user_id == tLRPC$TL_userStories.user_id) {
                            arrayList.remove(i4);
                            break;
                        } else {
                            i4++;
                        }
                    }
                    i3++;
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
            this.storiesStorage.saveAllStories(tLRPC$TL_stories_allStories.user_stories, z3, z, new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
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
            } else if (tLRPC$TL_userStories.stories.get(i2).f1553id > tLRPC$TL_userStories.max_read_id) {
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

    public ArrayList<TLRPC$TL_userStories> getDialogListStories() {
        return this.dialogListStories;
    }

    public TLRPC$TL_userStories getStories(long j) {
        return this.allStoriesMap.get(j);
    }

    public ArrayList<UploadingStory> getUploadingStories() {
        return this.uploadingStories;
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
        return this.editingStories.get(Integer.valueOf(tLRPC$StoryItem.f1553id));
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
        if (user != null && (user.contact || user.self)) {
            this.storiesStorage.processUpdate(tLRPC$TL_updateStory);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda8
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
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.lambda$processUpdate$10(org.telegram.tgnet.TLRPC$TL_updateStory, org.telegram.tgnet.TLRPC$User):void");
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
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getUserStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$loadAllStoriesForDialog$12(j, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$12(final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda6
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
        if (user != null && (user.contact || user.self)) {
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
                } else if (tLRPC$TL_userStories.stories.get(i).f1553id == tLRPC$StoryItem.f1553id) {
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
        tLRPC$TL_stories_deleteStories.f1653id.add(Integer.valueOf(tLRPC$StoryItem.f1553id));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$deleteStory$13(tLObject, tLRPC$TL_error);
            }
        });
        this.storiesStorage.deleteStory(getSelfUserId(), tLRPC$StoryItem.f1553id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        updateDeletedStoriesInLists(getSelfUserId(), Arrays.asList(tLRPC$StoryItem));
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
                        } else if (tLRPC$TL_userStories.stories.get(i2).f1553id == tLRPC$StoryItem.f1553id) {
                            tLRPC$TL_userStories.stories.remove(i2);
                            if (tLRPC$TL_userStories.stories.isEmpty()) {
                                this.allStoriesMap.remove(getSelfUserId());
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                tLRPC$TL_stories_deleteStories.f1653id.add(Integer.valueOf(tLRPC$StoryItem.f1553id));
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$deleteStories$14(tLObject, tLRPC$TL_error);
            }
        });
        updateDeletedStoriesInLists(getSelfUserId(), arrayList);
        this.storiesStorage.deleteStories(getSelfUserId(), tLRPC$TL_stories_deleteStories.f1653id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void updateStoriesPinned(ArrayList<TLRPC$StoryItem> arrayList, boolean z, final Utilities.Callback<Boolean> callback) {
        TLRPC$TL_stories_togglePinned tLRPC$TL_stories_togglePinned = new TLRPC$TL_stories_togglePinned();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
            if (!(tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted)) {
                tLRPC$StoryItem.pinned = z;
                tLRPC$TL_stories_togglePinned.f1660id.add(Integer.valueOf(tLRPC$StoryItem.f1553id));
            }
        }
        updateStoriesInLists(getSelfUserId(), arrayList);
        tLRPC$TL_stories_togglePinned.pinned = z;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_togglePinned, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$updateStoriesPinned$16(Utilities.Callback.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStoriesPinned$16(final Utilities.Callback callback, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda2
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
        this.storiesStorage.updateStoryItem(j, tLRPC$StoryItem);
        updateStoriesInLists(j, Collections.singletonList(tLRPC$StoryItem));
    }

    public boolean markStoryAsRead(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        TLRPC$TL_userStories stories = getStories(j);
        if (stories == null) {
            stories = MessagesController.getInstance(this.currentAccount).getUserFull(j).stories;
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
            int max = Math.max(tLRPC$TL_userStories.max_read_id, Math.max(i, tLRPC$StoryItem.f1553id));
            NotificationsController.getInstance(this.currentAccount).processReadStories(j, max);
            tLRPC$TL_userStories.max_read_id = max;
            this.dialogIdToMaxReadId.put(j, max);
            if (max > i) {
                if (!z) {
                    this.storiesStorage.updateMaxReadId(j, max);
                }
                TLRPC$TL_stories_readStories tLRPC$TL_stories_readStories = new TLRPC$TL_stories_readStories();
                tLRPC$TL_stories_readStories.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
                tLRPC$TL_stories_readStories.max_id = tLRPC$StoryItem.f1553id;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_readStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda23
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda5
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
                if (tLRPC$TL_userStories.stories.get(i).f1553id > tLRPC$TL_userStories.max_read_id) {
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
                if ((i == 0 || tLRPC$TL_userStories.stories.get(i2).f1553id == i) && tLRPC$TL_userStories.stories.get(i2).f1553id > max) {
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda10
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
                arrayList.add(Integer.valueOf(tLRPC$TL_userStories.stories.get(i).f1553id));
            }
        }
        if (arrayList != null) {
            this.loadingAllStories.add(Long.valueOf(j2));
            TLRPC$TL_stories_getStoriesByID tLRPC$TL_stories_getStoriesByID = new TLRPC$TL_stories_getStoriesByID();
            tLRPC$TL_stories_getStoriesByID.f1656id = arrayList;
            tLRPC$TL_stories_getStoriesByID.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda18
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadSkippedStories$20(j2, z, tLRPC$TL_userStories, j, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$20(final long j, final boolean z, final TLRPC$TL_userStories tLRPC$TL_userStories, final long j2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda7
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
                    if (tLRPC$TL_userStories.stories.get(i2).f1553id == tLRPC$TL_stories_stories.stories.get(i).f1553id) {
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

    public void fillMessagesWithStories(LongSparseArray<ArrayList<MessageObject>> longSparseArray, Runnable runnable) {
        this.storiesStorage.fillMessagesWithStories(longSparseArray, runnable);
    }

    public void resolveStoryLink(long j, int i, Consumer<TLRPC$StoryItem> consumer) {
        TLRPC$TL_userStories stories = getStories(j);
        if (stories != null) {
            for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                if (stories.stories.get(i2).f1553id == i && !(stories.stories.get(i2) instanceof TLRPC$TL_storyItemSkipped)) {
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
        tLRPC$TL_stories_getStoriesByID.f1656id.add(Integer.valueOf(i));
        tLRPC$TL_stories_getStoriesByID.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesByID, new C67971(j2, consumer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoriesController$1 */
    /* loaded from: classes6.dex */
    public class C67971 implements RequestDelegate {
        final /* synthetic */ Consumer val$consumer;
        final /* synthetic */ long val$hash;

        C67971(long j, Consumer consumer) {
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
                    StoriesController.C67971.this.lambda$run$0(tLObject, j, consumer);
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
            if (tLRPC$TL_userStories.max_read_id < tLRPC$TL_userStories.stories.get(i).f1553id) {
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
        if (user.contact || user.self) {
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

    /* renamed from: org.telegram.ui.Stories.StoriesController$UploadingStory */
    /* loaded from: classes6.dex */
    public class UploadingStory implements NotificationCenter.NotificationCenterDelegate {
        boolean canceled;
        float convertingProgress;
        private int currentRequest;
        private long duration;
        public final boolean edit;
        final StoryEntry entry;
        String firstFramePath;
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

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$sendUploadedRequest$3(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        public UploadingStory(StoryEntry storyEntry) {
            this.edit = storyEntry.isEdit;
            this.entry = storyEntry;
            File file = storyEntry.uploadThumbFile;
            if (file != null) {
                this.firstFramePath = file.getAbsolutePath();
            }
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
                Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.UploadingStory.this.lambda$start$2(makeCacheFile);
                    }
                });
            } else {
                TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
                tLRPC$TL_message.f1542id = 1;
                String absolutePath = StoryEntry.makeCacheFile(StoriesController.this.currentAccount, true).getAbsolutePath();
                tLRPC$TL_message.attachPath = absolutePath;
                this.path = absolutePath;
                this.messageObject = new MessageObject(StoriesController.this.currentAccount, (TLRPC$Message) tLRPC$TL_message, (MessageObject) null, false, false);
                this.entry.getVideoEditedInfo(new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda4
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
            StoriesController.this.uploadingStories.remove(this);
            StoriesController.this.uploadingAndEditingStories.remove(this);
            if (this.edit) {
                StoriesController.this.editingStories.remove(Integer.valueOf(this.entry.editStoryId));
            }
            NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            StoryEntry storyEntry = this.entry;
            if (storyEntry != null) {
                storyEntry.destroy(false);
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
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString("StoryUploadError", C3419R.string.StoryUploadError));
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
            TLRPC$TL_stories_sendStory tLRPC$TL_stories_sendStory;
            CharSequence charSequence;
            List<TLRPC$InputDocument> list;
            List<TLRPC$InputDocument> list2;
            if (this.canceled) {
                return;
            }
            StoryEntry storyEntry = this.entry;
            if (storyEntry.shareUserIds != null) {
                return;
            }
            TLRPC$InputMedia tLRPC$InputMedia = null;
            if (tLRPC$InputFile != null) {
                if (storyEntry.wouldBeVideo()) {
                    TLRPC$TL_inputMediaUploadedDocument tLRPC$TL_inputMediaUploadedDocument = new TLRPC$TL_inputMediaUploadedDocument();
                    tLRPC$TL_inputMediaUploadedDocument.file = tLRPC$InputFile;
                    TLRPC$TL_documentAttributeVideo tLRPC$TL_documentAttributeVideo = new TLRPC$TL_documentAttributeVideo();
                    SendMessagesHelper.fillVideoAttribute(this.path, tLRPC$TL_documentAttributeVideo, null);
                    tLRPC$TL_documentAttributeVideo.supports_streaming = true;
                    tLRPC$TL_documentAttributeVideo.flags |= 4;
                    tLRPC$TL_documentAttributeVideo.preload_prefix_size = (int) this.firstSecondSize;
                    tLRPC$TL_inputMediaUploadedDocument.attributes.add(tLRPC$TL_documentAttributeVideo);
                    List<TLRPC$InputDocument> list3 = this.entry.stickers;
                    if (list3 != null && (!list3.isEmpty() || ((list2 = this.entry.editStickers) != null && !list2.isEmpty()))) {
                        tLRPC$TL_inputMediaUploadedDocument.flags |= 1;
                        ArrayList<TLRPC$InputDocument> arrayList = new ArrayList<>(this.entry.stickers);
                        tLRPC$TL_inputMediaUploadedDocument.stickers = arrayList;
                        List<TLRPC$InputDocument> list4 = this.entry.editStickers;
                        if (list4 != null) {
                            arrayList.addAll(list4);
                        }
                        tLRPC$TL_inputMediaUploadedDocument.attributes.add(new TLRPC$TL_documentAttributeHasStickers());
                    }
                    StoryEntry storyEntry2 = this.entry;
                    tLRPC$TL_inputMediaUploadedDocument.nosound_video = storyEntry2.muted || !storyEntry2.isVideo;
                    tLRPC$TL_inputMediaUploadedDocument.mime_type = MimeTypes.VIDEO_MP4;
                    tLRPC$InputMedia = tLRPC$TL_inputMediaUploadedDocument;
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
            }
            int i = MessagesController.getInstance(StoriesController.this.currentAccount).storyCaptionLengthLimit;
            if (this.edit) {
                TLRPC$TL_stories_editStory tLRPC$TL_stories_editStory = new TLRPC$TL_stories_editStory();
                StoryEntry storyEntry3 = this.entry;
                tLRPC$TL_stories_editStory.f1654id = storyEntry3.editStoryId;
                if (tLRPC$InputMedia != null && storyEntry3.editedMedia) {
                    tLRPC$TL_stories_editStory.flags |= 1;
                    tLRPC$TL_stories_editStory.media = tLRPC$InputMedia;
                }
                if (storyEntry3.editedCaption && (charSequence = storyEntry3.caption) != null) {
                    tLRPC$TL_stories_editStory.flags |= 2;
                    CharSequence[] charSequenceArr = {charSequence};
                    if (charSequenceArr[0].length() > i) {
                        charSequenceArr[0] = charSequenceArr[0].subSequence(0, i);
                    }
                    tLRPC$TL_stories_editStory.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr, true);
                    if (charSequenceArr[0].length() > i) {
                        charSequenceArr[0] = charSequenceArr[0].subSequence(0, i);
                    }
                    tLRPC$TL_stories_editStory.caption = charSequenceArr[0].toString();
                }
                StoryEntry storyEntry4 = this.entry;
                tLRPC$TL_stories_sendStory = tLRPC$TL_stories_editStory;
                if (storyEntry4.editedPrivacy) {
                    tLRPC$TL_stories_editStory.flags |= 4;
                    tLRPC$TL_stories_editStory.privacy_rules.addAll(storyEntry4.privacyRules);
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
                CharSequence charSequence2 = storyEntry5.caption;
                if (charSequence2 != null) {
                    tLRPC$TL_stories_sendStory2.flags |= 3;
                    CharSequence[] charSequenceArr2 = {charSequence2};
                    if (charSequenceArr2[0].length() > i) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i);
                    }
                    tLRPC$TL_stories_sendStory2.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr2, true);
                    if (charSequenceArr2[0].length() > i) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i);
                    }
                    tLRPC$TL_stories_sendStory2.caption = charSequenceArr2[0].toString();
                }
                int i2 = this.entry.period;
                if (i2 == Integer.MAX_VALUE) {
                    tLRPC$TL_stories_sendStory2.pinned = true;
                    tLRPC$TL_stories_sendStory = tLRPC$TL_stories_sendStory2;
                } else {
                    tLRPC$TL_stories_sendStory2.flags |= 8;
                    tLRPC$TL_stories_sendStory2.period = i2;
                    tLRPC$TL_stories_sendStory = tLRPC$TL_stories_sendStory2;
                }
            }
            this.currentRequest = ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tLRPC$TL_stories_sendStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.UploadingStory.this.lambda$sendUploadedRequest$5(tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$5(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject != null) {
                TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
                TLRPC$StoryItem tLRPC$StoryItem = null;
                int i = 0;
                for (int i2 = 0; i2 < tLRPC$Updates.updates.size(); i2++) {
                    if (tLRPC$Updates.updates.get(i2) instanceof TLRPC$TL_updateStory) {
                        TLRPC$StoryItem tLRPC$StoryItem2 = ((TLRPC$TL_updateStory) tLRPC$Updates.updates.get(i2)).story;
                        tLRPC$StoryItem2.attachPath = this.path;
                        tLRPC$StoryItem2.firstFramePath = this.firstFramePath;
                        tLRPC$StoryItem2.justUploaded = !this.edit;
                        int i3 = tLRPC$StoryItem2.f1553id;
                        if (tLRPC$StoryItem == null) {
                            tLRPC$StoryItem = tLRPC$StoryItem2;
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
                            tLRPC$StoryItem.privacy = StoryPrivacyBottomSheet.StoryPrivacy.toOutput(storyEntry.privacyRules);
                            tLRPC$StoryItem.pinned = this.entry.period == Integer.MAX_VALUE;
                            tLRPC$StoryItem.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                            tLRPC$StoryItem.attachPath = this.path;
                            tLRPC$StoryItem.firstFramePath = this.firstFramePath;
                            tLRPC$StoryItem.f1553id = tLRPC$TL_updateStoryID.f1668id;
                            tLRPC$StoryItem.justUploaded = !this.edit;
                        }
                    }
                }
                if (this.canceled) {
                    TLRPC$TL_stories_deleteStories tLRPC$TL_stories_deleteStories = new TLRPC$TL_stories_deleteStories();
                    tLRPC$TL_stories_deleteStories.f1653id.add(Integer.valueOf(i));
                    ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tLRPC$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda6
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                            StoriesController.UploadingStory.lambda$sendUploadedRequest$3(tLObject2, tLRPC$TL_error2);
                        }
                    });
                } else {
                    if ((i == 0 || this.edit) && tLRPC$StoryItem != null) {
                        final TLRPC$TL_updateStory tLRPC$TL_updateStory = new TLRPC$TL_updateStory();
                        tLRPC$TL_updateStory.user_id = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                        tLRPC$TL_updateStory.story = tLRPC$StoryItem;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesController.UploadingStory.this.lambda$sendUploadedRequest$4(tLRPC$TL_updateStory);
                            }
                        });
                    }
                    MessagesController.getInstance(StoriesController.this.currentAccount).processUpdateArray(tLRPC$Updates.updates, tLRPC$Updates.users, tLRPC$Updates.chats, false, tLRPC$Updates.date);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.UploadingStory.this.cleanup();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$4(TLRPC$TL_updateStory tLRPC$TL_updateStory) {
            MessagesController.getInstance(StoriesController.this.currentAccount).getStoriesController().processUpdate(tLRPC$TL_updateStory);
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
        HashMap<Long, StoriesList>[] hashMapArr = this.storiesLists;
        if (hashMapArr[i] == null) {
            hashMapArr[i] = new HashMap<>();
        }
        StoriesList storiesList = this.storiesLists[i].get(Long.valueOf(j));
        if (storiesList == null && z) {
            HashMap<Long, StoriesList> hashMap = this.storiesLists[i];
            Long valueOf = Long.valueOf(j);
            StoriesList storiesList2 = new StoriesList(this.currentAccount, j, i, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda14
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

    public void updateStoriesInLists(long j, List<TLRPC$StoryItem> list) {
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
    /* loaded from: classes6.dex */
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

        /* synthetic */ StoriesList(int i, long j, int i2, Utilities.Callback callback, C67971 c67971) {
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
            String str = "";
            for (int i = 0; i < this.messageObjects.size(); i++) {
                long id = this.messageObjects.get(i).getId();
                if (i > 0) {
                    str = str + ", ";
                }
                str = str + id;
            }
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
            this.destroyRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda8
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
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$preloadCache$3(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$3(MessagesStorage messagesStorage) {
            final ArrayList arrayList = new ArrayList();
            SQLiteCursor sQLiteCursor = null;
            try {
                SQLiteDatabase database = messagesStorage.getDatabase();
                sQLiteCursor = this.type == 0 ? database.queryFinalized(String.format(Locale.US, "SELECT data FROM profile_stories WHERE dialog_id = %d ORDER BY story_id DESC", Long.valueOf(this.userId)), new Object[0]) : database.queryFinalized("SELECT data FROM archived_stories ORDER BY story_id DESC", new Object[0]);
                while (sQLiteCursor.next()) {
                    NativeByteBuffer byteBufferValue = sQLiteCursor.byteBufferValue(0);
                    if (byteBufferValue != null) {
                        TLRPC$StoryItem TLdeserialize = TLRPC$StoryItem.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(true), true);
                        TLdeserialize.dialogId = this.userId;
                        TLdeserialize.messageId = TLdeserialize.f1553id;
                        MessageObject messageObject = new MessageObject(this.currentAccount, TLdeserialize);
                        messageObject.generateThumbs(false);
                        arrayList.add(messageObject);
                        byteBufferValue.reuse();
                    }
                }
                sQLiteCursor.dispose();
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
                    StoriesController.StoriesList.this.lambda$preloadCache$2(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$2(ArrayList arrayList) {
            this.preloading = false;
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
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda6
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
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.StoriesList.this.lambda$saveCache$8(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x008f, code lost:
            if (r2 != null) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
            org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.p043ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3(r10));
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
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
                r2 = 0
                org.telegram.SQLite.SQLiteDatabase r3 = r11.getDatabase()     // Catch: java.lang.Throwable -> L92
                int r4 = r10.type     // Catch: java.lang.Throwable -> L92
                r5 = 0
                if (r4 != 0) goto L37
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> L92
                java.lang.String r6 = "DELETE FROM profile_stories WHERE dialog_id = %d"
                java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L92
                long r8 = r10.userId     // Catch: java.lang.Throwable -> L92
                java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> L92
                r7[r5] = r8     // Catch: java.lang.Throwable -> L92
                java.lang.String r4 = java.lang.String.format(r4, r6, r7)     // Catch: java.lang.Throwable -> L92
                org.telegram.SQLite.SQLitePreparedStatement r4 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> L92
                org.telegram.SQLite.SQLitePreparedStatement r4 = r4.stepThis()     // Catch: java.lang.Throwable -> L92
                r4.dispose()     // Catch: java.lang.Throwable -> L92
                java.lang.String r4 = "REPLACE INTO profile_stories VALUES(?, ?, ?)"
                org.telegram.SQLite.SQLitePreparedStatement r2 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> L92
                goto L4a
            L37:
                java.lang.String r4 = "DELETE FROM archived_stories"
                org.telegram.SQLite.SQLitePreparedStatement r4 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> L92
                org.telegram.SQLite.SQLitePreparedStatement r4 = r4.stepThis()     // Catch: java.lang.Throwable -> L92
                r4.dispose()     // Catch: java.lang.Throwable -> L92
                java.lang.String r4 = "REPLACE INTO archived_stories VALUES(?, ?)"
                org.telegram.SQLite.SQLitePreparedStatement r2 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> L92
            L4a:
                int r3 = r0.size()     // Catch: java.lang.Throwable -> L92
                if (r5 >= r3) goto L8f
                java.lang.Object r3 = r0.get(r5)     // Catch: java.lang.Throwable -> L92
                org.telegram.messenger.MessageObject r3 = (org.telegram.messenger.MessageObject) r3     // Catch: java.lang.Throwable -> L92
                org.telegram.tgnet.TLRPC$StoryItem r3 = r3.storyItem     // Catch: java.lang.Throwable -> L92
                if (r3 != 0) goto L5b
                goto L8c
            L5b:
                org.telegram.tgnet.NativeByteBuffer r4 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> L92
                int r6 = r3.getObjectSize()     // Catch: java.lang.Throwable -> L92
                r4.<init>(r6)     // Catch: java.lang.Throwable -> L92
                r3.serializeToStream(r4)     // Catch: java.lang.Throwable -> L92
                r2.requery()     // Catch: java.lang.Throwable -> L92
                int r6 = r10.type     // Catch: java.lang.Throwable -> L92
                r7 = 2
                if (r6 != 0) goto L7e
                long r8 = r10.userId     // Catch: java.lang.Throwable -> L92
                r2.bindLong(r1, r8)     // Catch: java.lang.Throwable -> L92
                int r3 = r3.f1553id     // Catch: java.lang.Throwable -> L92
                r2.bindInteger(r7, r3)     // Catch: java.lang.Throwable -> L92
                r3 = 3
                r2.bindByteBuffer(r3, r4)     // Catch: java.lang.Throwable -> L92
                goto L86
            L7e:
                int r3 = r3.f1553id     // Catch: java.lang.Throwable -> L92
                r2.bindInteger(r1, r3)     // Catch: java.lang.Throwable -> L92
                r2.bindByteBuffer(r7, r4)     // Catch: java.lang.Throwable -> L92
            L86:
                r2.step()     // Catch: java.lang.Throwable -> L92
                r4.reuse()     // Catch: java.lang.Throwable -> L92
            L8c:
                int r5 = r5 + 1
                goto L4a
            L8f:
                if (r2 == 0) goto L9b
                goto L98
            L92:
                r0 = move-exception
                r11.checkSQLException(r0)     // Catch: java.lang.Throwable -> La4
                if (r2 == 0) goto L9b
            L98:
                r2.dispose()
            L9b:
                org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3 r11 = new org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3
                r11.<init>()
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r11)
                return
            La4:
                r11 = move-exception
                if (r2 == 0) goto Laa
                r2.dispose()
            Laa:
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.StoriesList.this.lambda$load$10(tLRPC$TL_stories_stories, arrayList, i);
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
        public /* synthetic */ void lambda$load$10(TLRPC$TL_stories_stories tLRPC$TL_stories_stories, ArrayList arrayList, int i) {
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
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TLRPC$StoryItem tLRPC$StoryItem = list.get(i);
                if (tLRPC$StoryItem != null) {
                    if (this.loadedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1553id)) || this.cachedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1553id))) {
                        this.loadedObjects.remove(Integer.valueOf(tLRPC$StoryItem.f1553id));
                        this.cachedObjects.remove(Integer.valueOf(tLRPC$StoryItem.f1553id));
                        int i2 = this.totalCount;
                        if (i2 != -1) {
                            this.totalCount = i2 - 1;
                        }
                        z = true;
                    }
                    removeObject(tLRPC$StoryItem.f1553id, true);
                }
            }
            if (z) {
                fill(true);
                saveCache();
            }
        }

        public void updateStories(List<TLRPC$StoryItem> list) {
            MessageObject messageObject;
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TLRPC$StoryItem tLRPC$StoryItem = list.get(i);
                if (tLRPC$StoryItem != null) {
                    boolean z2 = this.loadedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1553id)) || this.cachedObjects.contains(Integer.valueOf(tLRPC$StoryItem.f1553id));
                    boolean z3 = this.type == 1 ? true : tLRPC$StoryItem.pinned;
                    if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                        z3 = false;
                    }
                    if (z2 != z3) {
                        if (!z3) {
                            removeObject(tLRPC$StoryItem.f1553id, true);
                            int i2 = this.totalCount;
                            if (i2 != -1) {
                                this.totalCount = i2 - 1;
                            }
                        } else {
                            pushObject(toMessageObject(tLRPC$StoryItem), false);
                            int i3 = this.totalCount;
                            if (i3 != -1) {
                                this.totalCount = i3 + 1;
                            }
                        }
                    } else if (z2 && z3 && ((messageObject = this.messageObjectsMap.get(Integer.valueOf(tLRPC$StoryItem.f1553id))) == null || !equal(messageObject.storyItem, tLRPC$StoryItem))) {
                        this.messageObjectsMap.put(Integer.valueOf(tLRPC$StoryItem.f1553id), toMessageObject(tLRPC$StoryItem));
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
                return tLRPC$StoryItem.f1553id == tLRPC$StoryItem2.f1553id && tLRPC$StoryItem.media == tLRPC$StoryItem2.media && TextUtils.equals(tLRPC$StoryItem.caption, tLRPC$StoryItem2.caption);
            }
            return true;
        }

        private MessageObject toMessageObject(TLRPC$StoryItem tLRPC$StoryItem) {
            tLRPC$StoryItem.dialogId = this.userId;
            tLRPC$StoryItem.messageId = tLRPC$StoryItem.f1553id;
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
    public /* synthetic */ int lambda$new$21(TLRPC$TL_userStories tLRPC$TL_userStories, TLRPC$TL_userStories tLRPC$TL_userStories2) {
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
}
