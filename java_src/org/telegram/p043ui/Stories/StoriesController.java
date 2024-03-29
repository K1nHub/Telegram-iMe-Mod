package org.telegram.p043ui.Stories;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.collection.LongSparseArray;
import com.google.android.exoplayer2.util.Consumer;
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
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
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
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.StatisticActivity;
import org.telegram.p043ui.Stories.SelfStoryViewsPage;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.recorder.DraftsController;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.p043ui.Stories.recorder.StoryUploadingService;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_contacts_block;
import org.telegram.tgnet.TLRPC$TL_contacts_blocked;
import org.telegram.tgnet.TLRPC$TL_contacts_blockedSlice;
import org.telegram.tgnet.TLRPC$TL_contacts_getBlocked;
import org.telegram.tgnet.TLRPC$TL_contacts_setBlocked;
import org.telegram.tgnet.TLRPC$TL_contacts_unblock;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_inputPeerSelf;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageMediaUnsupported;
import org.telegram.tgnet.TLRPC$TL_messages_chats;
import org.telegram.tgnet.TLRPC$TL_peerBlocked;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmpty;
import org.telegram.tgnet.TLRPC$TL_updateStoryID;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$messages_Chats;
import org.telegram.tgnet.p042tl.TL_stories$PeerStories;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import org.telegram.tgnet.p042tl.TL_stories$StoryView;
import org.telegram.tgnet.p042tl.TL_stories$StoryViews;
import org.telegram.tgnet.p042tl.TL_stories$StoryViewsList;
import org.telegram.tgnet.p042tl.TL_stories$TL_peerStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
import org.telegram.tgnet.p042tl.TL_stories$TL_storiesStealthMode;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_allStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_allStoriesNotModified;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_canSendStory;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_deleteStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getAllStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getPeerStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getPinnedStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getStoriesArchive;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getStoriesByID;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_peerStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_readStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_sendReaction;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_stories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_togglePeerStoriesHidden;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_togglePinned;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyItem;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyItemDeleted;
import org.telegram.tgnet.p042tl.TL_stories$TL_storyItemSkipped;
import org.telegram.tgnet.p042tl.TL_stories$TL_updateStory;
import p033j$.util.Comparator;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Stories.StoriesController */
/* loaded from: classes6.dex */
public class StoriesController {
    public static final Comparator<TL_stories$StoryItem> storiesComparator = Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda21
        @Override // p033j$.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            int i;
            i = ((TL_stories$StoryItem) obj).date;
            return i;
        }
    });
    private int blocklistCount;
    private int blocklistReqId;
    private final int currentAccount;
    private final DraftsController draftsController;
    boolean hasMore;
    private boolean isBarEnabled;
    private boolean isChannelsAvatarsEnabled;
    private boolean isContactsAvatarsEnabled;
    private boolean isEnabled;
    private boolean isProfileAvatarEnabled;
    private boolean loadedSendAs;
    boolean loadingFromDatabase;
    private boolean loadingFromServer;
    private boolean loadingFromServerHidden;
    private boolean loadingSendAs;
    SharedPreferences mainSettings;
    public final ArrayList<TLRPC$InputPeer> sendAs;
    final Runnable sortStoriesRunnable;
    String state;
    private String stateHidden;
    private TL_stories$TL_storiesStealthMode stealthMode;
    private boolean storiesReadLoaded;
    StoriesStorage storiesStorage;
    private StoryLimit storyLimitCached;
    private boolean storyLimitFetched;
    private int totalStoriesCount;
    private int totalStoriesCountHidden;
    private final LongSparseArray<ArrayList<UploadingStory>> uploadingStoriesByDialogId = new LongSparseArray<>();
    private final LongSparseArray<ArrayList<UploadingStory>> uploadingAndEditingStories = new LongSparseArray<>();
    private final LongSparseArray<HashMap<Integer, UploadingStory>> editingStories = new LongSparseArray<>();
    public LongSparseIntArray dialogIdToMaxReadId = new LongSparseIntArray();
    private ArrayList<TL_stories$PeerStories> dialogListStories = new ArrayList<>();
    private ArrayList<TL_stories$PeerStories> hiddenListStories = new ArrayList<>();
    private LongSparseArray<TL_stories$PeerStories> allStoriesMap = new LongSparseArray<>();
    private LongSparseIntArray loadingDialogsStories = new LongSparseIntArray();
    final LongSparseArray<ViewsForPeerStoriesRequester> pollingViewsForSelfStoriesRequester = new LongSparseArray<>();
    public LongSparseArray<SparseArray<SelfStoryViewsPage.ViewsModel>> selfViewsModel = new LongSparseArray<>();
    private boolean hasMoreHidden = true;
    private boolean firstLoad = true;
    HashSet<Long> allStoriesLoading = new HashSet<>();
    HashSet<Long> loadingAllStories = new HashSet<>();
    LongSparseArray<TL_stories$StoryItem> resolvedStories = new LongSparseArray<>();
    private final HashMap<Long, StoriesList>[] storiesLists = new HashMap[3];
    private final java.util.Comparator<TL_stories$PeerStories> peerStoriesComparator = new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda20
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$new$22;
            lambda$new$22 = StoriesController.this.lambda$new$22((TL_stories$PeerStories) obj, (TL_stories$PeerStories) obj2);
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

    public boolean isContactsAvatarsEnabled() {
        return this.isEnabled && this.isContactsAvatarsEnabled;
    }

    public boolean isChannelsAvatarsEnabled() {
        return this.isEnabled && this.isChannelsAvatarsEnabled;
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

    public void setContactsAvatarsEnabled(boolean z) {
        this.isContactsAvatarsEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesContactsAvatarsEnabled(), z).apply();
    }

    public void setProfileAvatarEnabled(boolean z) {
        this.isProfileAvatarEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesProfileAvatarEnabled(), z).apply();
    }

    public void setChannelsAvatarsEnabled(boolean z) {
        this.isChannelsAvatarsEnabled = z;
        this.mainSettings.edit().putBoolean(TelegramPreferenceKeys.User.isStoriesChannelsAvatarsEnabled(), z).apply();
    }

    public void restoreBackup(Backup backup) {
        Boolean bool = Boolean.TRUE;
        setEnabled(bool.equals(backup.isStoriesEnabled()));
        setBarEnabled(bool.equals(backup.isStoriesBarEnabled()));
        setContactsAvatarsEnabled(bool.equals(backup.isStoriesAvatarsEnabled()));
        setProfileAvatarEnabled(bool.equals(backup.isStoriesProfileAvatarEnabled()));
    }

    public StoriesController(final int i) {
        this.state = "";
        ArrayList<TLRPC$InputPeer> arrayList = new ArrayList<>();
        this.sendAs = arrayList;
        arrayList.add(new TLRPC$TL_inputPeerSelf());
        this.loadingSendAs = false;
        this.loadedSendAs = false;
        this.currentAccount = i;
        this.storiesStorage = new StoriesStorage(i);
        SharedPreferences mainSettings = MessagesController.getInstance(i).getMainSettings();
        this.mainSettings = mainSettings;
        this.isEnabled = mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesEnabled(), TelegramPreferenceKeys.User.Default.isStoriesEnabled());
        this.isBarEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesBarEnabled(), TelegramPreferenceKeys.User.Default.isStoriesBarEnabled());
        this.isContactsAvatarsEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesContactsAvatarsEnabled(), TelegramPreferenceKeys.User.Default.isStoriesContactsAvatarsEnabled());
        this.isChannelsAvatarsEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesChannelsAvatarsEnabled(), TelegramPreferenceKeys.User.Default.isStoriesChannelsAvatarsEnabled());
        this.isProfileAvatarEnabled = this.mainSettings.getBoolean(TelegramPreferenceKeys.User.isStoriesProfileAvatarEnabled(), TelegramPreferenceKeys.User.Default.isStoriesProfileAvatarEnabled());
        this.state = this.mainSettings.getString("last_stories_state", "");
        this.stateHidden = this.mainSettings.getString("last_stories_state_hidden", "");
        this.totalStoriesCountHidden = this.mainSettings.getInt("total_stores_hidden", 0);
        this.totalStoriesCount = this.mainSettings.getInt("total_stores", 0);
        this.storiesReadLoaded = this.mainSettings.getBoolean("read_loaded", false);
        this.stealthMode = readStealthMode(this.mainSettings.getString("stories_stealth_mode", null));
        this.storiesStorage.getMaxReadIds(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                StoriesController.this.lambda$new$1((LongSparseIntArray) obj);
            }
        });
        this.sortStoriesRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda7
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

    private TL_stories$TL_storiesStealthMode readStealthMode(String str) {
        if (str == null) {
            return null;
        }
        SerializedData serializedData = new SerializedData(Utilities.hexToBytes(str));
        try {
            return TL_stories$TL_storiesStealthMode.TLdeserialize(serializedData, serializedData.readInt32(true), true);
        } catch (Throwable th) {
            FileLog.m102e(th);
            return null;
        }
    }

    private void writeStealthMode(TL_stories$TL_storiesStealthMode tL_stories$TL_storiesStealthMode) {
        SharedPreferences.Editor edit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        if (tL_stories$TL_storiesStealthMode == null) {
            edit.remove("stories_stealth_mode").apply();
            return;
        }
        SerializedData serializedData = new SerializedData(tL_stories$TL_storiesStealthMode.getObjectSize());
        tL_stories$TL_storiesStealthMode.serializeToStream(serializedData);
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
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.tl.TL_stories$TL_stories_getAllReadPeerStories
            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$Updates.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(-1688541191);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda26
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda6
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

    private void sortDialogStories(ArrayList<TL_stories$PeerStories> arrayList) {
        fixDeletedAndNonContactsStories(arrayList);
        Collections.sort(arrayList, this.peerStoriesComparator);
    }

    private void fixDeletedAndNonContactsStories(ArrayList<TL_stories$PeerStories> arrayList) {
        boolean z;
        TLRPC$User user;
        int i = 0;
        while (i < arrayList.size()) {
            TL_stories$PeerStories tL_stories$PeerStories = arrayList.get(i);
            long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
            if (peerDialogId <= 0 || (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId))) == null || isContactOrService(user)) {
                z = false;
            } else {
                arrayList.remove(i);
                i--;
                z = true;
            }
            int i2 = 0;
            while (i2 < tL_stories$PeerStories.stories.size()) {
                if (tL_stories$PeerStories.stories.get(i2) instanceof TL_stories$TL_storyItemDeleted) {
                    tL_stories$PeerStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (!z && tL_stories$PeerStories.stories.isEmpty() && !hasUploadingStories(peerDialogId)) {
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
        if (j == 0) {
            return false;
        }
        if (hasUploadingStories(j) || isLastUploadingFailed(j)) {
            return true;
        }
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        if (tL_stories$PeerStories == null) {
            tL_stories$PeerStories = getStoriesFromFullPeer(j);
        }
        return (tL_stories$PeerStories == null || tL_stories$PeerStories.stories.isEmpty()) ? false : true;
    }

    public TL_stories$PeerStories getStoriesFromFullPeer(long j) {
        if (j > 0) {
            TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull == null) {
                return null;
            }
            return userFull.stories;
        }
        TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
        if (chatFull == null) {
            return null;
        }
        return chatFull.stories;
    }

    public boolean hasStories() {
        ArrayList<TL_stories$PeerStories> arrayList = this.dialogListStories;
        return (arrayList != null && arrayList.size() > 0) || hasSelfStories();
    }

    public void loadStories() {
        if (this.firstLoad) {
            this.loadingFromDatabase = true;
            this.storiesStorage.getAllStories(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda1
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    StoriesController.this.lambda$loadStories$5((TL_stories$TL_stories_allStories) obj);
                }
            });
        } else {
            loadFromServer(false);
            loadFromServer(true);
        }
        this.firstLoad = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStories$5(TL_stories$TL_stories_allStories tL_stories$TL_stories_allStories) {
        this.loadingFromDatabase = false;
        if (tL_stories$TL_stories_allStories != null) {
            processAllStoriesResponse(tL_stories$TL_stories_allStories, false, true, false);
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
        ArrayList<TL_stories$PeerStories> arrayList;
        ArrayList<TL_stories$PeerStories> arrayList2;
        TL_stories$PeerStories tL_stories$PeerStories;
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
                tL_stories$PeerStories = null;
                break;
            } else if (DialogObject.getPeerDialogId(arrayList.get(i).peer) == j) {
                tL_stories$PeerStories = arrayList.remove(i);
                break;
            } else {
                i++;
            }
        }
        if (tL_stories$PeerStories != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList2.size()) {
                    z4 = false;
                    break;
                } else if (DialogObject.getPeerDialogId(arrayList2.get(i2).peer) == j) {
                    z4 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z4) {
                arrayList2.add(0, tL_stories$PeerStories);
                AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
                this.sortStoriesRunnable.run();
            }
        }
        if (z3) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        if (z2) {
            if (j >= 0) {
                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                user.stories_hidden = z;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(Collections.singletonList(user), null, false, true);
                MessagesController.getInstance(this.currentAccount).putUser(user, false);
            } else {
                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
                chat.stories_hidden = z;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(null, Collections.singletonList(chat), false, true);
                MessagesController.getInstance(this.currentAccount).putChat(chat, false);
            }
            TL_stories$TL_stories_togglePeerStoriesHidden tL_stories$TL_stories_togglePeerStoriesHidden = new TL_stories$TL_stories_togglePeerStoriesHidden();
            tL_stories$TL_stories_togglePeerStoriesHidden.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            tL_stories$TL_stories_togglePeerStoriesHidden.hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_togglePeerStoriesHidden, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda36
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
            final TL_stories$TL_stories_getAllStories tL_stories$TL_stories_getAllStories = new TL_stories$TL_stories_getAllStories();
            String str = z ? this.stateHidden : this.state;
            boolean z3 = z ? this.hasMoreHidden : this.hasMore;
            if (!TextUtils.isEmpty(str)) {
                tL_stories$TL_stories_getAllStories.state = str;
                tL_stories$TL_stories_getAllStories.flags |= 1;
            }
            if (!z3 || TextUtils.isEmpty(str)) {
                z2 = false;
            } else {
                tL_stories$TL_stories_getAllStories.next = true;
            }
            tL_stories$TL_stories_getAllStories.include_hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getAllStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda34
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadFromServer$8(z, tL_stories$TL_stories_getAllStories, z2, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$8(final boolean z, final TL_stories$TL_stories_getAllStories tL_stories$TL_stories_getAllStories, final boolean z2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadFromServer$7(z, tL_stories$TL_stories_getAllStories, tLObject, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$7(boolean z, TL_stories$TL_stories_getAllStories tL_stories$TL_stories_getAllStories, TLObject tLObject, boolean z2) {
        if (z) {
            this.loadingFromServerHidden = false;
        } else {
            this.loadingFromServer = false;
        }
        FileLog.m105d("StoriesController loaded stories from server state=" + tL_stories$TL_stories_getAllStories.state + " more=" + tL_stories$TL_stories_getAllStories.next + "  " + tLObject);
        if (tLObject instanceof TL_stories$TL_stories_allStories) {
            TL_stories$TL_stories_allStories tL_stories$TL_stories_allStories = (TL_stories$TL_stories_allStories) tLObject;
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_stories$TL_stories_allStories.users, null, true, true);
            if (!z) {
                this.totalStoriesCount = tL_stories$TL_stories_allStories.count;
                this.hasMore = tL_stories$TL_stories_allStories.has_more;
                this.state = tL_stories$TL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state", this.state).putBoolean("last_stories_has_more", this.hasMore).putInt("total_stores", this.totalStoriesCount).apply();
            } else {
                this.totalStoriesCountHidden = tL_stories$TL_stories_allStories.count;
                this.hasMoreHidden = tL_stories$TL_stories_allStories.has_more;
                this.stateHidden = tL_stories$TL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).putBoolean("last_stories_has_more_hidden", this.hasMoreHidden).putInt("total_stores_hidden", this.totalStoriesCountHidden).apply();
            }
            processAllStoriesResponse(tL_stories$TL_stories_allStories, z, false, z2);
        } else if (tLObject instanceof TL_stories$TL_stories_allStoriesNotModified) {
            if (!z) {
                this.hasMore = this.mainSettings.getBoolean("last_stories_has_more", false);
                this.state = ((TL_stories$TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state", this.state).apply();
            } else {
                this.hasMoreHidden = this.mainSettings.getBoolean("last_stories_has_more_hidden", false);
                this.stateHidden = ((TL_stories$TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).apply();
            }
            if (z ? this.hasMoreHidden : this.hasMore) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            }
        }
    }

    private void processAllStoriesResponse(TL_stories$TL_stories_allStories tL_stories$TL_stories_allStories, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            if (!z) {
                this.dialogListStories.clear();
            } else {
                this.hiddenListStories.clear();
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < tL_stories$TL_stories_allStories.peer_stories.size(); i++) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(DialogObject.getPeerDialogId(tL_stories$TL_stories_allStories.peer_stories.get(i).peer));
            }
            FileLog.m105d("StoriesController cache=" + z2 + " hidden=" + z + " processAllStoriesResponse {" + ((Object) sb) + "}");
        }
        MessagesController.getInstance(this.currentAccount).putUsers(tL_stories$TL_stories_allStories.users, z2);
        MessagesController.getInstance(this.currentAccount).putChats(tL_stories$TL_stories_allStories.chats, z2);
        for (int i2 = 0; i2 < tL_stories$TL_stories_allStories.peer_stories.size(); i2++) {
            TL_stories$PeerStories tL_stories$PeerStories = tL_stories$TL_stories_allStories.peer_stories.get(i2);
            long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
            int i3 = 0;
            while (i3 < tL_stories$PeerStories.stories.size()) {
                if (tL_stories$PeerStories.stories.get(i3) instanceof TL_stories$TL_storyItemDeleted) {
                    NotificationsController.getInstance(this.currentAccount).processDeleteStory(peerDialogId, tL_stories$PeerStories.stories.get(i3).f1763id);
                    tL_stories$PeerStories.stories.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (!tL_stories$PeerStories.stories.isEmpty()) {
                this.allStoriesMap.put(peerDialogId, tL_stories$PeerStories);
                int i4 = 0;
                while (i4 < 2) {
                    ArrayList<TL_stories$PeerStories> arrayList = i4 == 0 ? this.hiddenListStories : this.dialogListStories;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= arrayList.size()) {
                            break;
                        } else if (DialogObject.getPeerDialogId(arrayList.get(i5).peer) == peerDialogId) {
                            arrayList.remove(i5);
                            break;
                        } else {
                            i5++;
                        }
                    }
                    i4++;
                }
                if (peerDialogId > 0) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                    if (user != null) {
                        if (user.stories_hidden) {
                            addUserToHiddenList(tL_stories$PeerStories);
                        } else {
                            this.dialogListStories.add(tL_stories$PeerStories);
                            preloadUserStories(tL_stories$PeerStories);
                        }
                    }
                } else {
                    TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
                    if (chat != null) {
                        if (chat.stories_hidden) {
                            addUserToHiddenList(tL_stories$PeerStories);
                        } else {
                            this.dialogListStories.add(tL_stories$PeerStories);
                            preloadUserStories(tL_stories$PeerStories);
                        }
                    }
                }
            } else {
                this.allStoriesMap.remove(peerDialogId);
            }
        }
        if (!z2) {
            this.storiesStorage.saveAllStories(tL_stories$TL_stories_allStories.peer_stories, z3, z, new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.lambda$processAllStoriesResponse$9();
                }
            });
        }
        sortUserStories();
    }

    private void addUserToHiddenList(TL_stories$PeerStories tL_stories$PeerStories) {
        long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        if (peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.hiddenListStories.size(); i++) {
            if (DialogObject.getPeerDialogId(this.hiddenListStories.get(i).peer) == peerDialogId) {
                z = true;
            }
        }
        if (!z) {
            this.hiddenListStories.add(tL_stories$PeerStories);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void sortUserStories() {
        AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
        this.sortStoriesRunnable.run();
    }

    public void preloadUserStories(TL_stories$PeerStories tL_stories$PeerStories) {
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= tL_stories$PeerStories.stories.size()) {
                break;
            } else if (tL_stories$PeerStories.stories.get(i2).f1763id > tL_stories$PeerStories.max_read_id) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (tL_stories$PeerStories.stories.isEmpty()) {
            return;
        }
        long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        preloadStory(peerDialogId, tL_stories$PeerStories.stories.get(i));
        if (i > 0) {
            preloadStory(peerDialogId, tL_stories$PeerStories.stories.get(i - 1));
        }
        if (i < tL_stories$PeerStories.stories.size() - 1) {
            preloadStory(peerDialogId, tL_stories$PeerStories.stories.get(i + 1));
        }
    }

    private void preloadStory(long j, TL_stories$StoryItem tL_stories$StoryItem) {
        ArrayList<TLRPC$PhotoSize> arrayList;
        if (tL_stories$StoryItem.attachPath == null && DownloadController.getInstance(this.currentAccount).canPreloadStories()) {
            TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
            boolean z = tLRPC$MessageMedia != null && MessageObject.isVideoDocument(tLRPC$MessageMedia.getDocument());
            tL_stories$StoryItem.dialogId = j;
            if (z) {
                TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tL_stories$StoryItem.media.getDocument().thumbs, 1000);
                FileLoader.getInstance(this.currentAccount).loadFile(tL_stories$StoryItem.media.getDocument(), tL_stories$StoryItem, 0, 1);
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForDocument(closestPhotoSizeWithSize, tL_stories$StoryItem.media.getDocument()), tL_stories$StoryItem, "jpg", 0, 1);
                return;
            }
            TLRPC$MessageMedia tLRPC$MessageMedia2 = tL_stories$StoryItem.media;
            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia2 == null ? null : tLRPC$MessageMedia2.photo;
            if (tLRPC$Photo == null || (arrayList = tLRPC$Photo.sizes) == null) {
                return;
            }
            FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), tLRPC$Photo), tL_stories$StoryItem, "jpg", 0, 1);
        }
    }

    public void uploadStory(StoryEntry storyEntry, boolean z) {
        boolean z2;
        boolean z3;
        UploadingStory uploadingStory = new UploadingStory(storyEntry);
        if (z) {
            long j = uploadingStory.dialogId;
            if (storyEntry.isEdit) {
                HashMap<Integer, UploadingStory> hashMap = this.editingStories.get(j);
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                    this.editingStories.put(j, hashMap);
                }
                hashMap.put(Integer.valueOf(storyEntry.editStoryId), uploadingStory);
            } else {
                addUploadingStoryToList(j, uploadingStory, this.uploadingStoriesByDialogId);
            }
            addUploadingStoryToList(j, uploadingStory, this.uploadingAndEditingStories);
            if (j != UserConfig.getInstance(this.currentAccount).clientUserId) {
                int i = 0;
                while (true) {
                    z2 = true;
                    if (i >= this.dialogListStories.size()) {
                        z3 = false;
                        break;
                    } else if (DialogObject.getPeerDialogId(this.dialogListStories.get(i).peer) == j) {
                        this.dialogListStories.add(0, this.dialogListStories.remove(i));
                        z3 = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z3) {
                    for (int i2 = 0; i2 < this.hiddenListStories.size(); i2++) {
                        if (DialogObject.getPeerDialogId(this.hiddenListStories.get(i2).peer) == j) {
                            this.hiddenListStories.add(0, this.hiddenListStories.remove(i2));
                            break;
                        }
                    }
                }
                z2 = z3;
                if (!z2) {
                    TL_stories$TL_peerStories tL_stories$TL_peerStories = new TL_stories$TL_peerStories();
                    tL_stories$TL_peerStories.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                    this.allStoriesMap.put(j, tL_stories$TL_peerStories);
                    this.dialogListStories.add(0, tL_stories$TL_peerStories);
                    loadAllStoriesForDialog(j);
                }
            }
        }
        uploadingStory.start();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    private void addUploadingStoryToList(long j, UploadingStory uploadingStory, LongSparseArray<ArrayList<UploadingStory>> longSparseArray) {
        ArrayList<UploadingStory> arrayList = longSparseArray.get(j);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            longSparseArray.put(j, arrayList);
        }
        arrayList.add(uploadingStory);
    }

    public void putUploadingDrafts(ArrayList<StoryEntry> arrayList) {
        Iterator<StoryEntry> it = arrayList.iterator();
        while (it.hasNext()) {
            UploadingStory uploadingStory = new UploadingStory(it.next());
            addUploadingStoryToList(uploadingStory.dialogId, uploadingStory, this.uploadingStoriesByDialogId);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public ArrayList<TL_stories$PeerStories> getDialogListStories() {
        return this.dialogListStories;
    }

    public TL_stories$PeerStories getStories(long j) {
        return this.allStoriesMap.get(j);
    }

    public ArrayList<UploadingStory> getUploadingStories(long j) {
        return this.uploadingStoriesByDialogId.get(j);
    }

    public boolean isLastUploadingFailed(long j) {
        ArrayList<UploadingStory> arrayList = this.uploadingStoriesByDialogId.get(j);
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        return arrayList.get(arrayList.size() - 1).failed;
    }

    public ArrayList<UploadingStory> getUploadingAndEditingStories(long j) {
        return this.uploadingAndEditingStories.get(j);
    }

    public int getMyStoriesCount() {
        ArrayList<TL_stories$StoryItem> arrayList;
        int size = this.uploadingAndEditingStories.size();
        TL_stories$PeerStories stories = getStories(getSelfUserId());
        return (stories == null || (arrayList = stories.stories) == null) ? size : size + arrayList.size();
    }

    public UploadingStory findEditingStory(long j, TL_stories$StoryItem tL_stories$StoryItem) {
        HashMap<Integer, UploadingStory> hashMap;
        if (tL_stories$StoryItem == null || (hashMap = this.editingStories.get(j)) == null || hashMap.isEmpty()) {
            return null;
        }
        return hashMap.get(Integer.valueOf(tL_stories$StoryItem.f1763id));
    }

    public UploadingStory getEditingStory(long j) {
        HashMap<Integer, UploadingStory> hashMap = this.editingStories.get(j);
        if (hashMap == null || hashMap.isEmpty()) {
            return null;
        }
        Collection<UploadingStory> values = hashMap.values();
        if (values.isEmpty()) {
            return null;
        }
        return values.iterator().next();
    }

    private void applyNewStories(TL_stories$PeerStories tL_stories$PeerStories) {
        long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        this.allStoriesMap.put(peerDialogId, tL_stories$PeerStories);
        if (peerDialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            applyToList(tL_stories$PeerStories);
            if (user != null && !user.stories_hidden) {
                preloadUserStories(tL_stories$PeerStories);
            }
        }
        FileLog.m105d("StoriesController applyNewStories " + peerDialogId);
        updateStoriesInLists(peerDialogId, tL_stories$PeerStories.stories);
    }

    public static TL_stories$StoryItem applyStoryUpdate(TL_stories$StoryItem tL_stories$StoryItem, TL_stories$StoryItem tL_stories$StoryItem2) {
        if (tL_stories$StoryItem2 == null) {
            return tL_stories$StoryItem;
        }
        if (tL_stories$StoryItem != null && tL_stories$StoryItem2.min) {
            tL_stories$StoryItem.pinned = tL_stories$StoryItem2.pinned;
            tL_stories$StoryItem.isPublic = tL_stories$StoryItem2.isPublic;
            tL_stories$StoryItem.close_friends = tL_stories$StoryItem2.close_friends;
            int i = tL_stories$StoryItem2.date;
            if (i != 0) {
                tL_stories$StoryItem.date = i;
            }
            int i2 = tL_stories$StoryItem2.expire_date;
            if (i2 != 0) {
                tL_stories$StoryItem.expire_date = i2;
            }
            tL_stories$StoryItem.caption = tL_stories$StoryItem2.caption;
            tL_stories$StoryItem.entities = tL_stories$StoryItem2.entities;
            TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem2.media;
            if (tLRPC$MessageMedia != null) {
                tL_stories$StoryItem.media = tLRPC$MessageMedia;
            }
            return tL_stories$StoryItem;
        }
        return tL_stories$StoryItem2;
    }

    public void processUpdate(final TL_stories$TL_updateStory tL_stories$TL_updateStory) {
        final TLRPC$User tLRPC$User;
        if (tL_stories$TL_updateStory.story == null) {
            return;
        }
        final long peerDialogId = DialogObject.getPeerDialogId(tL_stories$TL_updateStory.peer);
        int i = (peerDialogId > 0L ? 1 : (peerDialogId == 0L ? 0 : -1));
        if (i == 0) {
            FileLog.m105d("StoriesController can't update story dialogId == 0");
            return;
        }
        if (i > 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            if (user != null && (isContactOrService(user) || user.self)) {
                this.storiesStorage.processUpdate(tL_stories$TL_updateStory);
            }
            tLRPC$User = user;
        } else {
            this.storiesStorage.processUpdate(tL_stories$TL_updateStory);
            tLRPC$User = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$processUpdate$10(peerDialogId, tL_stories$TL_updateStory, tLRPC$User);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$10(long j, TL_stories$TL_updateStory tL_stories$TL_updateStory, TLRPC$User tLRPC$User) {
        boolean z;
        boolean z2;
        boolean z3;
        FileLog.m105d("StoriesController update stories for dialog " + j);
        updateStoriesInLists(j, Collections.singletonList(tL_stories$TL_updateStory.story));
        updateStoriesForFullPeer(j, Collections.singletonList(tL_stories$TL_updateStory.story));
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        ArrayList arrayList = new ArrayList();
        int i = this.totalStoriesCount;
        boolean z4 = true;
        if (tL_stories$PeerStories != null) {
            TL_stories$StoryItem tL_stories$StoryItem = tL_stories$TL_updateStory.story;
            if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                NotificationsController.getInstance(this.currentAccount).processDeleteStory(j, tL_stories$StoryItem.f1763id);
            }
            int i2 = 0;
            while (true) {
                if (i2 >= tL_stories$PeerStories.stories.size()) {
                    z = false;
                    break;
                } else if (tL_stories$PeerStories.stories.get(i2).f1763id != tL_stories$StoryItem.f1763id) {
                    i2++;
                } else if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                    tL_stories$PeerStories.stories.remove(i2);
                    FileLog.m105d("StoriesController remove story id=" + tL_stories$StoryItem.f1763id);
                    z = true;
                } else {
                    TL_stories$StoryItem tL_stories$StoryItem2 = tL_stories$PeerStories.stories.get(i2);
                    tL_stories$StoryItem = applyStoryUpdate(tL_stories$StoryItem2, tL_stories$StoryItem);
                    arrayList.add(tL_stories$StoryItem);
                    tL_stories$PeerStories.stories.set(i2, tL_stories$StoryItem);
                    if (tL_stories$StoryItem.attachPath == null) {
                        tL_stories$StoryItem.attachPath = tL_stories$StoryItem2.attachPath;
                    }
                    if (tL_stories$StoryItem.firstFramePath == null) {
                        tL_stories$StoryItem.firstFramePath = tL_stories$StoryItem2.firstFramePath;
                    }
                    FileLog.m105d("StoriesController update story id=" + tL_stories$StoryItem.f1763id);
                    z2 = false;
                    z = true;
                }
            }
            z2 = z;
            if (z) {
                z3 = false;
            } else if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                FileLog.m105d("StoriesController can't add new story DELETED");
                return;
            } else if (StoriesUtilities.isExpired(this.currentAccount, tL_stories$StoryItem)) {
                FileLog.m105d("StoriesController can't add new story isExpired");
                return;
            } else if (j > 0 && (tLRPC$User == null || (!tLRPC$User.self && !isContactOrService(tLRPC$User)))) {
                FileLog.m105d("StoriesController can't add new story user is not contact");
                return;
            } else {
                arrayList.add(tL_stories$StoryItem);
                tL_stories$PeerStories.stories.add(tL_stories$StoryItem);
                FileLog.m105d("StoriesController add new story id=" + tL_stories$StoryItem.f1763id + " total stories count " + tL_stories$PeerStories.stories.size());
                preloadStory(j, tL_stories$StoryItem);
                applyToList(tL_stories$PeerStories);
                z3 = true;
                z2 = true;
            }
            if (!z2) {
                z4 = z3;
            } else if (tL_stories$PeerStories.stories.isEmpty() && !hasUploadingStories(j)) {
                this.dialogListStories.remove(tL_stories$PeerStories);
                this.hiddenListStories.remove(tL_stories$PeerStories);
                this.allStoriesMap.remove(DialogObject.getPeerDialogId(tL_stories$PeerStories.peer));
                this.totalStoriesCount--;
            } else {
                Collections.sort(tL_stories$PeerStories.stories, storiesComparator);
            }
        } else {
            TL_stories$StoryItem tL_stories$StoryItem3 = tL_stories$TL_updateStory.story;
            if (tL_stories$StoryItem3 instanceof TL_stories$TL_storyItemDeleted) {
                FileLog.m105d("StoriesController can't add user " + j + " with new story DELETED");
                return;
            } else if (StoriesUtilities.isExpired(this.currentAccount, tL_stories$StoryItem3)) {
                FileLog.m105d("StoriesController can't add user " + j + " with new story isExpired");
                return;
            } else if (j > 0 && (tLRPC$User == null || (!tLRPC$User.self && !isContactOrService(tLRPC$User)))) {
                FileLog.m105d("StoriesController can't add user cause is not contact");
                return;
            } else {
                TL_stories$TL_peerStories tL_stories$TL_peerStories = new TL_stories$TL_peerStories();
                tL_stories$TL_peerStories.peer = tL_stories$TL_updateStory.peer;
                tL_stories$TL_peerStories.stories.add(tL_stories$TL_updateStory.story);
                FileLog.m105d("StoriesController add new user with story id=" + tL_stories$TL_updateStory.story.f1763id);
                applyNewStories(tL_stories$TL_peerStories);
                this.totalStoriesCount = this.totalStoriesCount + 1;
                loadAllStoriesForDialog(j);
            }
        }
        if (i != this.totalStoriesCount) {
            this.mainSettings.edit().putInt("total_stores", this.totalStoriesCount).apply();
        }
        fixDeletedAndNonContactsStories(this.dialogListStories);
        fixDeletedAndNonContactsStories(this.hiddenListStories);
        if (z4) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void updateStoriesForFullPeer(long j, List<TL_stories$StoryItem> list) {
        TL_stories$PeerStories tL_stories$PeerStories;
        boolean z;
        if (j > 0) {
            TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull == null) {
                return;
            }
            if (userFull.stories == null) {
                TL_stories$TL_peerStories tL_stories$TL_peerStories = new TL_stories$TL_peerStories();
                userFull.stories = tL_stories$TL_peerStories;
                tL_stories$TL_peerStories.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                userFull.stories.max_read_id = getMaxStoriesReadId(j);
            }
            tL_stories$PeerStories = userFull.stories;
        } else {
            TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
            if (chatFull == null) {
                return;
            }
            if (chatFull.stories == null) {
                TL_stories$TL_peerStories tL_stories$TL_peerStories2 = new TL_stories$TL_peerStories();
                chatFull.stories = tL_stories$TL_peerStories2;
                tL_stories$TL_peerStories2.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                chatFull.stories.max_read_id = getMaxStoriesReadId(j);
            }
            tL_stories$PeerStories = chatFull.stories;
        }
        for (int i = 0; i < list.size(); i++) {
            TL_stories$StoryItem tL_stories$StoryItem = list.get(i);
            int i2 = 0;
            while (true) {
                z = true;
                if (i2 >= tL_stories$PeerStories.stories.size()) {
                    z = false;
                    break;
                } else if (tL_stories$PeerStories.stories.get(i2).f1763id != tL_stories$StoryItem.f1763id) {
                    i2++;
                } else if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                    tL_stories$PeerStories.stories.remove(i2);
                } else {
                    TL_stories$StoryItem tL_stories$StoryItem2 = tL_stories$PeerStories.stories.get(i2);
                    tL_stories$StoryItem = applyStoryUpdate(tL_stories$StoryItem2, tL_stories$StoryItem);
                    tL_stories$PeerStories.stories.set(i2, tL_stories$StoryItem);
                    if (tL_stories$StoryItem.attachPath == null) {
                        tL_stories$StoryItem.attachPath = tL_stories$StoryItem2.attachPath;
                    }
                    if (tL_stories$StoryItem.firstFramePath == null) {
                        tL_stories$StoryItem.firstFramePath = tL_stories$StoryItem2.firstFramePath;
                    }
                    FileLog.m105d("StoriesController update story for full peer storyId=" + tL_stories$StoryItem.f1763id);
                }
            }
            if (!z) {
                if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                    FileLog.m105d("StoriesController story is not found, but already deleted storyId=" + tL_stories$StoryItem.f1763id);
                } else {
                    FileLog.m105d(" StoriesController add new story for full peer storyId=" + tL_stories$StoryItem.f1763id);
                    tL_stories$PeerStories.stories.add(tL_stories$StoryItem);
                }
            }
        }
    }

    private boolean isContactOrService(TLRPC$User tLRPC$User) {
        return tLRPC$User != null && (tLRPC$User.contact || tLRPC$User.f1751id == MessagesController.getInstance(this.currentAccount).storiesChangelogUserId);
    }

    private void applyToList(TL_stories$PeerStories tL_stories$PeerStories) {
        TLRPC$Chat chat;
        boolean z;
        boolean z2;
        long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        TLRPC$User tLRPC$User = null;
        if (peerDialogId > 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            if (user == null) {
                FileLog.m105d("StoriesController can't apply story user == null");
                return;
            } else {
                tLRPC$User = user;
                chat = null;
            }
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
            if (chat == null) {
                FileLog.m105d("StoriesController can't apply story chat == null");
                return;
            }
        }
        int i = 0;
        while (true) {
            z = true;
            if (i >= this.dialogListStories.size()) {
                z2 = false;
                break;
            } else if (DialogObject.getPeerDialogId(this.dialogListStories.get(i).peer) == peerDialogId) {
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
                break;
            } else if (DialogObject.getPeerDialogId(this.hiddenListStories.get(i2).peer) == peerDialogId) {
                this.hiddenListStories.remove(i2);
                z2 = true;
                break;
            } else {
                i2++;
            }
        }
        if ((tLRPC$User == null || !tLRPC$User.stories_hidden) && (chat == null || !chat.stories_hidden)) {
            z = false;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("StoriesController move user stories to first hidden=" + z + " did=" + peerDialogId);
        }
        if (z) {
            this.hiddenListStories.add(0, tL_stories$PeerStories);
        } else {
            this.dialogListStories.add(0, tL_stories$PeerStories);
        }
        if (!z2) {
            loadAllStoriesForDialog(peerDialogId);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void loadAllStoriesForDialog(final long j) {
        if (this.allStoriesLoading.contains(Long.valueOf(j))) {
            return;
        }
        this.allStoriesLoading.add(Long.valueOf(j));
        FileLog.m105d("StoriesController loadAllStoriesForDialog " + j);
        TL_stories$TL_stories_getPeerStories tL_stories$TL_stories_getPeerStories = new TL_stories$TL_stories_getPeerStories();
        tL_stories$TL_stories_getPeerStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getPeerStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda31
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$loadAllStoriesForDialog$12(j, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$12(final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda10
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
        TL_stories$TL_stories_peerStories tL_stories$TL_stories_peerStories = (TL_stories$TL_stories_peerStories) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tL_stories$TL_stories_peerStories.users, false);
        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        TL_stories$PeerStories tL_stories$PeerStories = tL_stories$TL_stories_peerStories.stories;
        this.allStoriesMap.put(DialogObject.getPeerDialogId(tL_stories$PeerStories.peer), tL_stories$PeerStories);
        if (user != null && (isContactOrService(user) || user.self)) {
            applyToList(tL_stories$PeerStories);
            this.storiesStorage.putPeerStories(tL_stories$PeerStories);
        }
        FileLog.m105d("StoriesController processAllStoriesResponse dialogId=" + j + " overwrite stories " + tL_stories$TL_stories_peerStories.stories.stories.size());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public boolean hasSelfStories() {
        long j = UserConfig.getInstance(this.currentAccount).clientUserId;
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        return ((tL_stories$PeerStories == null || tL_stories$PeerStories.stories.isEmpty()) && Utilities.isNullOrEmpty(this.uploadingStoriesByDialogId.get(j))) ? false : true;
    }

    public int getSelfStoriesCount() {
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(UserConfig.getInstance(this.currentAccount).clientUserId);
        return (tL_stories$PeerStories != null ? 0 + tL_stories$PeerStories.stories.size() : 0) + this.uploadingStoriesByDialogId.size();
    }

    public void deleteStory(long j, TL_stories$StoryItem tL_stories$StoryItem) {
        TLRPC$ChatFull tLRPC$ChatFull;
        TLRPC$UserFull tLRPC$UserFull;
        if (tL_stories$StoryItem == null || (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted)) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            TL_stories$PeerStories tL_stories$PeerStories = null;
            if (i == 0) {
                tLRPC$ChatFull = null;
                tL_stories$PeerStories = this.allStoriesMap.get(j);
                tLRPC$UserFull = null;
            } else if (j >= 0) {
                tLRPC$UserFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
                if (tLRPC$UserFull != null) {
                    tLRPC$ChatFull = null;
                    tL_stories$PeerStories = tLRPC$UserFull.stories;
                } else {
                    tLRPC$ChatFull = null;
                }
            } else {
                TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
                if (chatFull != null) {
                    TL_stories$PeerStories tL_stories$PeerStories2 = chatFull.stories;
                    tLRPC$UserFull = null;
                    tL_stories$PeerStories = tL_stories$PeerStories2;
                    tLRPC$ChatFull = chatFull;
                } else {
                    tLRPC$ChatFull = chatFull;
                    tLRPC$UserFull = null;
                }
            }
            if (tL_stories$PeerStories != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= tL_stories$PeerStories.stories.size()) {
                        break;
                    } else if (tL_stories$PeerStories.stories.get(i2).f1763id == tL_stories$StoryItem.f1763id) {
                        tL_stories$PeerStories.stories.remove(i2);
                        if (tL_stories$PeerStories.stories.size() == 0) {
                            if (!hasUploadingStories(j)) {
                                this.allStoriesMap.remove(j);
                                this.dialogListStories.remove(tL_stories$PeerStories);
                                this.hiddenListStories.remove(tL_stories$PeerStories);
                            }
                            if (j > 0) {
                                TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                                if (user != null) {
                                    user.stories_unavailable = true;
                                }
                            } else {
                                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
                                if (chat != null) {
                                    chat.stories_unavailable = true;
                                }
                            }
                        }
                    } else {
                        i2++;
                    }
                }
            }
            if (tLRPC$ChatFull != null) {
                MessagesStorage.getInstance(this.currentAccount).updateChatInfo(tLRPC$ChatFull, false);
            }
            if (tLRPC$UserFull != null) {
                MessagesStorage.getInstance(this.currentAccount).updateUserInfo(tLRPC$UserFull, false);
            }
        }
        TL_stories$TL_stories_deleteStories tL_stories$TL_stories_deleteStories = new TL_stories$TL_stories_deleteStories();
        tL_stories$TL_stories_deleteStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stories$TL_stories_deleteStories.f1772id.add(Integer.valueOf(tL_stories$StoryItem.f1763id));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda28
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$deleteStory$13(tLObject, tLRPC$TL_error);
            }
        });
        this.storiesStorage.deleteStory(j, tL_stories$StoryItem.f1763id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        updateDeletedStoriesInLists(j, Arrays.asList(tL_stories$StoryItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$13(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda5(this));
        }
    }

    public void deleteStories(long j, ArrayList<TL_stories$StoryItem> arrayList) {
        if (arrayList == null) {
            return;
        }
        TL_stories$TL_stories_deleteStories tL_stories$TL_stories_deleteStories = new TL_stories$TL_stories_deleteStories();
        TLRPC$InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stories$TL_stories_deleteStories.peer = inputPeer;
        if (inputPeer == null) {
            return;
        }
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories$StoryItem tL_stories$StoryItem = arrayList.get(i);
            if (!(tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted)) {
                if (tL_stories$PeerStories != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= tL_stories$PeerStories.stories.size()) {
                            break;
                        } else if (tL_stories$PeerStories.stories.get(i2).f1763id == tL_stories$StoryItem.f1763id) {
                            tL_stories$PeerStories.stories.remove(i2);
                            if (tL_stories$PeerStories.stories.isEmpty()) {
                                this.allStoriesMap.remove(j);
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                tL_stories$TL_stories_deleteStories.f1772id.add(Integer.valueOf(tL_stories$StoryItem.f1763id));
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda27
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$deleteStories$14(tLObject, tLRPC$TL_error);
            }
        });
        updateDeletedStoriesInLists(j, arrayList);
        this.storiesStorage.deleteStories(j, tL_stories$TL_stories_deleteStories.f1772id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStories$14(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda5(this));
    }

    public void updateStoriesPinned(long j, ArrayList<TL_stories$StoryItem> arrayList, boolean z, final Utilities.Callback<Boolean> callback) {
        TL_stories$TL_stories_togglePinned tL_stories$TL_stories_togglePinned = new TL_stories$TL_stories_togglePinned();
        TL_stories$PeerStories stories = getStories(j);
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories$StoryItem tL_stories$StoryItem = arrayList.get(i);
            if (!(tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted)) {
                tL_stories$StoryItem.pinned = z;
                tL_stories$TL_stories_togglePinned.f1781id.add(Integer.valueOf(tL_stories$StoryItem.f1763id));
                if (stories != null) {
                    for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                        if (stories.stories.get(i2).f1763id == tL_stories$StoryItem.f1763id) {
                            stories.stories.get(i2).pinned = z;
                            this.storiesStorage.updateStoryItem(j, tL_stories$StoryItem);
                        }
                    }
                }
            }
        }
        FileLog.m105d("StoriesController updateStoriesPinned");
        updateStoriesInLists(j, arrayList);
        updateStoriesForFullPeer(j, arrayList);
        tL_stories$TL_stories_togglePinned.pinned = z;
        tL_stories$TL_stories_togglePinned.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_togglePinned, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$updateStoriesPinned$16(Utilities.Callback.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStoriesPinned$16(final Utilities.Callback callback, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda4
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

    public void updateStoryItem(long j, TL_stories$StoryItem tL_stories$StoryItem) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("StoriesController updateStoryItem ");
        sb.append(j);
        sb.append(" ");
        if (tL_stories$StoryItem == null) {
            str = "null";
        } else {
            str = tL_stories$StoryItem.f1763id + "@" + tL_stories$StoryItem.dialogId;
        }
        sb.append(str);
        FileLog.m105d(sb.toString());
        this.storiesStorage.updateStoryItem(j, tL_stories$StoryItem);
        updateStoriesInLists(j, Collections.singletonList(tL_stories$StoryItem));
        updateStoriesForFullPeer(j, Collections.singletonList(tL_stories$StoryItem));
    }

    public boolean markStoryAsRead(long j, TL_stories$StoryItem tL_stories$StoryItem) {
        TL_stories$PeerStories stories = getStories(j);
        if (stories == null) {
            stories = getStoriesFromFullPeer(j);
        }
        return markStoryAsRead(stories, tL_stories$StoryItem, false);
    }

    public boolean markStoryAsRead(TL_stories$PeerStories tL_stories$PeerStories, TL_stories$StoryItem tL_stories$StoryItem, boolean z) {
        if (tL_stories$StoryItem != null && tL_stories$PeerStories != null) {
            long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
            if (tL_stories$StoryItem.justUploaded) {
                tL_stories$StoryItem.justUploaded = false;
            }
            int i = this.dialogIdToMaxReadId.get(peerDialogId);
            int max = Math.max(tL_stories$PeerStories.max_read_id, Math.max(i, tL_stories$StoryItem.f1763id));
            NotificationsController.getInstance(this.currentAccount).processReadStories(peerDialogId, max);
            tL_stories$PeerStories.max_read_id = max;
            this.dialogIdToMaxReadId.put(peerDialogId, max);
            if (max > i) {
                if (!z) {
                    this.storiesStorage.updateMaxReadId(peerDialogId, max);
                }
                TL_stories$TL_stories_readStories tL_stories$TL_stories_readStories = new TL_stories$TL_stories_readStories();
                tL_stories$TL_stories_readStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(peerDialogId);
                tL_stories$TL_stories_readStories.max_id = tL_stories$StoryItem.f1763id;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_readStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda37
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StoriesController.lambda$markStoryAsRead$17(tLObject, tLRPC$TL_error);
                    }
                });
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesReadUpdated, new Object[0]);
                return true;
            }
        }
        return false;
    }

    public int getMaxStoriesReadId(long j) {
        TL_stories$PeerStories stories = getStories(j);
        if (stories == null) {
            stories = getStoriesFromFullPeer(j);
        }
        if (stories != null) {
            return Math.max(stories.max_read_id, this.dialogIdToMaxReadId.get(j, 0));
        }
        return this.dialogIdToMaxReadId.get(j, 0);
    }

    public void markStoriesAsReadFromServer(final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda9
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
        TL_stories$PeerStories stories = getStories(j);
        if (stories != null && i > stories.max_read_id) {
            stories.max_read_id = i;
            Collections.sort(this.dialogListStories, this.peerStoriesComparator);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public boolean hasUnreadStories(long j) {
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        if (tL_stories$PeerStories == null) {
            tL_stories$PeerStories = getStoriesFromFullPeer(j);
        }
        if (tL_stories$PeerStories == null) {
            return false;
        }
        if (j != UserConfig.getInstance(this.currentAccount).getClientUserId() || Utilities.isNullOrEmpty(this.uploadingStoriesByDialogId.get(j))) {
            for (int i = 0; i < tL_stories$PeerStories.stories.size(); i++) {
                TL_stories$StoryItem tL_stories$StoryItem = tL_stories$PeerStories.stories.get(i);
                if (tL_stories$StoryItem != null && tL_stories$StoryItem.f1763id > tL_stories$PeerStories.max_read_id) {
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
        if (j == 0) {
            return 0;
        }
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        if (tL_stories$PeerStories == null) {
            tL_stories$PeerStories = getStoriesFromFullPeer(j);
        }
        if (tL_stories$PeerStories == null) {
            return 0;
        }
        if (j != UserConfig.getInstance(this.currentAccount).getClientUserId() || Utilities.isNullOrEmpty(this.uploadingStoriesByDialogId.get(j))) {
            int max = Math.max(tL_stories$PeerStories.max_read_id, this.dialogIdToMaxReadId.get(j, 0));
            boolean z = false;
            for (int i2 = 0; i2 < tL_stories$PeerStories.stories.size(); i2++) {
                if ((i == 0 || tL_stories$PeerStories.stories.get(i2).f1763id == i) && tL_stories$PeerStories.stories.get(i2).f1763id > max) {
                    if (tL_stories$PeerStories.stories.get(i2).close_friends) {
                        return 2;
                    }
                    z = true;
                }
            }
            return (!isLastUploadingFailed(j) && z) ? 1 : 0;
        }
        return 1;
    }

    public boolean hasUploadingStories(long j) {
        ArrayList<UploadingStory> arrayList = this.uploadingStoriesByDialogId.get(j);
        HashMap<Integer, UploadingStory> hashMap = this.editingStories.get(j);
        return ((arrayList == null || arrayList.isEmpty()) && (hashMap == null || hashMap.isEmpty())) ? false : true;
    }

    public void cleanup() {
        this.storiesReadLoaded = false;
        this.stateHidden = "";
        this.state = "";
        this.mainSettings.edit().putBoolean("stories_loaded", false).remove("last_stories_state").putBoolean("stories_loaded_hidden", false).remove("last_stories_state_hidden").putBoolean("read_loaded", false).apply();
        final DraftsController draftsController = this.draftsController;
        Objects.requireNonNull(draftsController);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.this.cleanup();
            }
        });
        loadStories();
        loadStoriesRead();
    }

    public void pollViewsForSelfStories(long j, boolean z) {
        ViewsForPeerStoriesRequester viewsForPeerStoriesRequester = this.pollingViewsForSelfStoriesRequester.get(j);
        if (viewsForPeerStoriesRequester == null) {
            viewsForPeerStoriesRequester = new ViewsForPeerStoriesRequester(this, j, this.currentAccount);
            this.pollingViewsForSelfStoriesRequester.put(j, viewsForPeerStoriesRequester);
        }
        viewsForPeerStoriesRequester.start(z);
    }

    public void stopAllPollers() {
        for (int i = 0; i < this.pollingViewsForSelfStoriesRequester.size(); i++) {
            this.pollingViewsForSelfStoriesRequester.valueAt(i).start(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadSkippedStories(long j) {
        loadSkippedStories(getStories(j), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadSkippedStories(final TL_stories$PeerStories tL_stories$PeerStories, final boolean z) {
        if (tL_stories$PeerStories == null) {
            return;
        }
        final long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        final long j = peerDialogId * (z ? -1 : 1);
        if (this.loadingAllStories.contains(Long.valueOf(j))) {
            return;
        }
        ArrayList<Integer> arrayList = null;
        for (int i = 0; i < tL_stories$PeerStories.stories.size(); i++) {
            if (tL_stories$PeerStories.stories.get(i) instanceof TL_stories$TL_storyItemSkipped) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(Integer.valueOf(tL_stories$PeerStories.stories.get(i).f1763id));
            }
        }
        if (arrayList != null) {
            this.loadingAllStories.add(Long.valueOf(j));
            TL_stories$TL_stories_getStoriesByID tL_stories$TL_stories_getStoriesByID = new TL_stories$TL_stories_getStoriesByID();
            tL_stories$TL_stories_getStoriesByID.f1776id = arrayList;
            tL_stories$TL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(peerDialogId);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda32
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.this.lambda$loadSkippedStories$20(j, z, tL_stories$PeerStories, peerDialogId, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$20(final long j, final boolean z, final TL_stories$PeerStories tL_stories$PeerStories, final long j2, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadSkippedStories$19(j, z, tL_stories$PeerStories, j2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$19(long j, boolean z, TL_stories$PeerStories tL_stories$PeerStories, long j2, TLObject tLObject) {
        this.loadingAllStories.remove(Long.valueOf(j));
        if (!z) {
            tL_stories$PeerStories = getStories(j2);
        }
        if (tL_stories$PeerStories == null) {
            return;
        }
        if (tLObject instanceof TL_stories$TL_stories_stories) {
            TL_stories$TL_stories_stories tL_stories$TL_stories_stories = (TL_stories$TL_stories_stories) tLObject;
            for (int i = 0; i < tL_stories$TL_stories_stories.stories.size(); i++) {
                for (int i2 = 0; i2 < tL_stories$PeerStories.stories.size(); i2++) {
                    if (tL_stories$PeerStories.stories.get(i2).f1763id == tL_stories$TL_stories_stories.stories.get(i).f1763id) {
                        tL_stories$PeerStories.stories.set(i2, tL_stories$TL_stories_stories.stories.get(i));
                        preloadStory(j2, tL_stories$TL_stories_stories.stories.get(i));
                    }
                }
            }
            if (!z) {
                this.storiesStorage.updateStories(tL_stories$PeerStories);
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

    public void resolveStoryLink(long j, int i, Consumer<TL_stories$StoryItem> consumer) {
        TL_stories$PeerStories stories = getStories(j);
        if (stories != null) {
            for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                if (stories.stories.get(i2).f1763id == i && !(stories.stories.get(i2) instanceof TL_stories$TL_storyItemSkipped)) {
                    consumer.accept(stories.stories.get(i2));
                    return;
                }
            }
        }
        long j2 = (i + j) << 12;
        TL_stories$StoryItem tL_stories$StoryItem = this.resolvedStories.get(j2);
        if (tL_stories$StoryItem != null) {
            consumer.accept(tL_stories$StoryItem);
            return;
        }
        TL_stories$TL_stories_getStoriesByID tL_stories$TL_stories_getStoriesByID = new TL_stories$TL_stories_getStoriesByID();
        tL_stories$TL_stories_getStoriesByID.f1776id.add(Integer.valueOf(i));
        tL_stories$TL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getStoriesByID, new C72881(j2, consumer));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.StoriesController$1 */
    /* loaded from: classes6.dex */
    public class C72881 implements RequestDelegate {
        final /* synthetic */ Consumer val$consumer;
        final /* synthetic */ long val$hash;

        C72881(long j, Consumer consumer) {
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
                    StoriesController.C72881.this.lambda$run$0(tLObject, j, consumer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(TLObject tLObject, long j, Consumer consumer) {
            TL_stories$StoryItem tL_stories$StoryItem;
            if (tLObject != null) {
                TL_stories$TL_stories_stories tL_stories$TL_stories_stories = (TL_stories$TL_stories_stories) tLObject;
                MessagesController.getInstance(StoriesController.this.currentAccount).putUsers(tL_stories$TL_stories_stories.users, false);
                MessagesController.getInstance(StoriesController.this.currentAccount).putChats(tL_stories$TL_stories_stories.chats, false);
                if (tL_stories$TL_stories_stories.stories.size() > 0) {
                    tL_stories$StoryItem = tL_stories$TL_stories_stories.stories.get(0);
                    StoriesController.this.resolvedStories.put(j, tL_stories$StoryItem);
                    consumer.accept(tL_stories$StoryItem);
                }
            }
            tL_stories$StoryItem = null;
            consumer.accept(tL_stories$StoryItem);
        }
    }

    public ArrayList<TL_stories$PeerStories> getHiddenList() {
        return this.hiddenListStories;
    }

    public int getUnreadStoriesCount(long j) {
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        for (int i = 0; i < tL_stories$PeerStories.stories.size(); i++) {
            if (tL_stories$PeerStories.max_read_id < tL_stories$PeerStories.stories.get(i).f1763id) {
                return tL_stories$PeerStories.stories.size() - i;
            }
        }
        return 0;
    }

    public int getTotalStoriesCount(boolean z) {
        return z ? this.hasMoreHidden ? Math.max(1, this.totalStoriesCountHidden) : this.hiddenListStories.size() : this.hasMore ? Math.max(1, this.totalStoriesCount) : this.dialogListStories.size();
    }

    public void putStories(long j, TL_stories$PeerStories tL_stories$PeerStories) {
        this.allStoriesMap.put(j, tL_stories$PeerStories);
        if (j > 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            if (isContactOrService(user) || user.self) {
                this.storiesStorage.putPeerStories(tL_stories$PeerStories);
                applyToList(tL_stories$PeerStories);
            }
        } else if (ChatObject.isInChat(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)))) {
            this.storiesStorage.putPeerStories(tL_stories$PeerStories);
            applyToList(tL_stories$PeerStories);
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
            } else if (DialogObject.getPeerDialogId(this.dialogListStories.get(i).peer) == j) {
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
            } else if (DialogObject.getPeerDialogId(this.hiddenListStories.get(i2).peer) == j) {
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

    private void checkExpireStories(ArrayList<TL_stories$PeerStories> arrayList) {
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories$PeerStories tL_stories$PeerStories = arrayList.get(i);
            long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
            int i2 = 0;
            while (i2 < tL_stories$PeerStories.stories.size()) {
                if (StoriesUtilities.isExpired(this.currentAccount, tL_stories$PeerStories.stories.get(i2))) {
                    tL_stories$PeerStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (tL_stories$PeerStories.stories.isEmpty() && !hasUploadingStories(peerDialogId)) {
                this.allStoriesMap.remove(peerDialogId);
                arrayList.remove(tL_stories$PeerStories);
                z = true;
            }
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public void checkExpiredStories(long j) {
        TL_stories$PeerStories stories = getStories(j);
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
        if (!stories.stories.isEmpty() || hasUnreadStories(j)) {
            return;
        }
        this.dialogListStories.remove(stories);
        this.hiddenListStories.remove(stories);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public boolean hasLoadingStories() {
        return this.loadingDialogsStories.size() > 0;
    }

    public TL_stories$TL_storiesStealthMode getStealthMode() {
        return this.stealthMode;
    }

    public void setStealthMode(TL_stories$TL_storiesStealthMode tL_stories$TL_storiesStealthMode) {
        this.stealthMode = tL_stories$TL_storiesStealthMode;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.stealthModeChanged, new Object[0]);
        writeStealthMode(tL_stories$TL_storiesStealthMode);
    }

    public void setStoryReaction(long j, TL_stories$StoryItem tL_stories$StoryItem, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (tL_stories$StoryItem == null) {
            return;
        }
        TL_stories$TL_stories_sendReaction tL_stories$TL_stories_sendReaction = new TL_stories$TL_stories_sendReaction();
        tL_stories$TL_stories_sendReaction.story_id = tL_stories$StoryItem.f1763id;
        tL_stories$TL_stories_sendReaction.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        if (visibleReaction == null) {
            tL_stories$TL_stories_sendReaction.reaction = new TLRPC$TL_reactionEmpty();
            tL_stories$StoryItem.flags &= -32769;
            tL_stories$StoryItem.sent_reaction = null;
        } else if (visibleReaction.documentId != 0) {
            TLRPC$TL_reactionCustomEmoji tLRPC$TL_reactionCustomEmoji = new TLRPC$TL_reactionCustomEmoji();
            tLRPC$TL_reactionCustomEmoji.document_id = visibleReaction.documentId;
            tL_stories$TL_stories_sendReaction.reaction = tLRPC$TL_reactionCustomEmoji;
            tL_stories$StoryItem.flags |= LiteMode.FLAG_CHAT_SCALE;
            tL_stories$StoryItem.sent_reaction = tLRPC$TL_reactionCustomEmoji;
        } else if (visibleReaction.emojicon != null) {
            TLRPC$TL_reactionEmoji tLRPC$TL_reactionEmoji = new TLRPC$TL_reactionEmoji();
            tLRPC$TL_reactionEmoji.emoticon = visibleReaction.emojicon;
            tL_stories$TL_stories_sendReaction.reaction = tLRPC$TL_reactionEmoji;
            tL_stories$StoryItem.flags |= LiteMode.FLAG_CHAT_SCALE;
            tL_stories$StoryItem.sent_reaction = tLRPC$TL_reactionEmoji;
        }
        updateStoryItem(j, tL_stories$StoryItem);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_sendReaction, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda35
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$setStoryReaction$21(tLObject, tLRPC$TL_error);
            }
        });
    }

    public void updateStoryReaction(long j, int i, TLRPC$Reaction tLRPC$Reaction) {
        TL_stories$StoryItem findStory = findStory(j, i);
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

    private TL_stories$StoryItem findStory(long j, int i) {
        TL_stories$PeerStories tL_stories$PeerStories = this.allStoriesMap.get(j);
        if (tL_stories$PeerStories != null) {
            for (int i2 = 0; i2 < tL_stories$PeerStories.stories.size(); i2++) {
                if (tL_stories$PeerStories.stories.get(i2).f1763id == i) {
                    return tL_stories$PeerStories.stories.get(i2);
                }
            }
            return null;
        }
        return null;
    }

    public void onPremiumChanged() {
        this.selfViewsModel.clear();
    }

    public void updateStoriesFromFullPeer(long j, TL_stories$PeerStories tL_stories$PeerStories) {
        TL_stories$PeerStories tL_stories$PeerStories2;
        if (tL_stories$PeerStories == null || (tL_stories$PeerStories2 = this.allStoriesMap.get(j)) == null) {
            return;
        }
        FileLog.m105d("StoriesController update stories from full peer " + j);
        tL_stories$PeerStories2.stories.clear();
        tL_stories$PeerStories2.stories.addAll(tL_stories$PeerStories.stories);
    }

    /* renamed from: org.telegram.ui.Stories.StoriesController$UploadingStory */
    /* loaded from: classes6.dex */
    public class UploadingStory implements NotificationCenter.NotificationCenterDelegate {
        boolean canceled;
        float convertingProgress;
        private int currentRequest;
        long dialogId;
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
            if (storyEntry.isEdit) {
                this.dialogId = storyEntry.editStoryPeerId;
                return;
            }
            TLRPC$InputPeer tLRPC$InputPeer = storyEntry.peer;
            if (tLRPC$InputPeer == null || (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerSelf)) {
                this.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
            } else {
                this.dialogId = DialogObject.getPeerDialogId(tLRPC$InputPeer);
            }
        }

        private void startForeground() {
            Intent intent = new Intent(ApplicationLoader.applicationContext, StoryUploadingService.class);
            intent.putExtra("path", this.path);
            intent.putExtra("currentAccount", StoriesController.this.currentAccount);
            try {
                ApplicationLoader.applicationContext.startService(intent);
            } catch (Throwable th) {
                FileLog.m102e(th);
            }
        }

        public void start() {
            StoryEntry storyEntry = this.entry;
            if ((storyEntry.isEdit || (storyEntry.isRepost && storyEntry.repostMedia != null)) && !storyEntry.editedMedia && storyEntry.round == null) {
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
                tLRPC$TL_message.f1626id = 1;
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
            HashMap hashMap;
            ArrayList arrayList;
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadProgressChanged);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileNewChunkAvailable);
            if (!this.failed && (arrayList = (ArrayList) StoriesController.this.uploadingStoriesByDialogId.get(this.dialogId)) != null) {
                arrayList.remove(this);
            }
            ArrayList arrayList2 = (ArrayList) StoriesController.this.uploadingAndEditingStories.get(this.dialogId);
            if (arrayList2 != null) {
                arrayList2.remove(this);
            }
            if (this.edit && (hashMap = (HashMap) StoriesController.this.editingStories.get(this.dialogId)) != null) {
                hashMap.remove(Integer.valueOf(this.entry.editStoryId));
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
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString("StoryUploadError", C3632R.string.StoryUploadError));
                cleanup();
            } else if (i == NotificationCenter.fileUploadProgressChanged && ((String) objArr[0]).equals(this.path)) {
                float min = Math.min(1.0f, ((float) ((Long) objArr[1]).longValue()) / ((float) ((Long) objArr[2]).longValue()));
                this.uploadProgress = min;
                this.progress = (this.convertingProgress * 0.3f) + (min * 0.7f);
                NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryProgress, this.path, Float.valueOf(this.progress));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0256  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0157  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0164  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0174  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void sendUploadedRequest(org.telegram.tgnet.TLRPC$InputFile r10) {
            /*
                Method dump skipped, instructions count: 921
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.UploadingStory.sendUploadedRequest(org.telegram.tgnet.TLRPC$InputFile):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$7(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject != null) {
                this.failed = false;
                TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
                int i = 0;
                final TL_stories$StoryItem tL_stories$StoryItem = null;
                for (int i2 = 0; i2 < tLRPC$Updates.updates.size(); i2++) {
                    if (tLRPC$Updates.updates.get(i2) instanceof TL_stories$TL_updateStory) {
                        TL_stories$StoryItem tL_stories$StoryItem2 = ((TL_stories$TL_updateStory) tLRPC$Updates.updates.get(i2)).story;
                        tL_stories$StoryItem2.attachPath = this.path;
                        tL_stories$StoryItem2.firstFramePath = this.firstFramePath;
                        tL_stories$StoryItem2.justUploaded = !this.edit;
                        int i3 = tL_stories$StoryItem2.f1763id;
                        if (tL_stories$StoryItem == null) {
                            tL_stories$StoryItem = tL_stories$StoryItem2;
                        } else {
                            tL_stories$StoryItem.media = tL_stories$StoryItem2.media;
                        }
                        i = i3;
                    }
                    if (tLRPC$Updates.updates.get(i2) instanceof TLRPC$TL_updateStoryID) {
                        TLRPC$TL_updateStoryID tLRPC$TL_updateStoryID = (TLRPC$TL_updateStoryID) tLRPC$Updates.updates.get(i2);
                        if (tL_stories$StoryItem == null) {
                            tL_stories$StoryItem = new TL_stories$TL_storyItem();
                            int currentTime = ConnectionsManager.getInstance(StoriesController.this.currentAccount).getCurrentTime();
                            tL_stories$StoryItem.date = currentTime;
                            StoryEntry storyEntry = this.entry;
                            int i4 = storyEntry.period;
                            if (i4 == Integer.MAX_VALUE) {
                                i4 = 86400;
                            }
                            tL_stories$StoryItem.expire_date = currentTime + i4;
                            tL_stories$StoryItem.parsedPrivacy = null;
                            tL_stories$StoryItem.privacy = StoryPrivacyBottomSheet.StoryPrivacy.toOutput(storyEntry.privacyRules);
                            tL_stories$StoryItem.pinned = this.entry.period == Integer.MAX_VALUE;
                            tL_stories$StoryItem.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                            tL_stories$StoryItem.attachPath = this.path;
                            tL_stories$StoryItem.firstFramePath = this.firstFramePath;
                            tL_stories$StoryItem.f1763id = tLRPC$TL_updateStoryID.f1744id;
                            tL_stories$StoryItem.justUploaded = !this.edit;
                        }
                    }
                }
                final long j = this.dialogId;
                if (this.canceled) {
                    TL_stories$TL_stories_deleteStories tL_stories$TL_stories_deleteStories = new TL_stories$TL_stories_deleteStories();
                    TLRPC$InputPeer inputPeer = MessagesController.getInstance(StoriesController.this.currentAccount).getInputPeer(this.dialogId);
                    tL_stories$TL_stories_deleteStories.peer = inputPeer;
                    if (inputPeer != null) {
                        tL_stories$TL_stories_deleteStories.f1772id.add(Integer.valueOf(i));
                        ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tL_stories$TL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda8
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                                StoriesController.UploadingStory.this.lambda$sendUploadedRequest$3(tLObject2, tLRPC$TL_error2);
                            }
                        });
                    }
                } else {
                    if ((i == 0 || this.edit) && tL_stories$StoryItem != null) {
                        final TL_stories$TL_updateStory tL_stories$TL_updateStory = new TL_stories$TL_updateStory();
                        tL_stories$TL_updateStory.peer = MessagesController.getInstance(StoriesController.this.currentAccount).getPeer(j);
                        tL_stories$TL_updateStory.story = tL_stories$StoryItem;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesController.UploadingStory.this.lambda$sendUploadedRequest$4(tL_stories$TL_updateStory);
                            }
                        });
                    }
                    TLRPC$MessageMedia tLRPC$MessageMedia = tL_stories$StoryItem.media;
                    if (tLRPC$MessageMedia != null && tL_stories$StoryItem.attachPath != null) {
                        if (tLRPC$MessageMedia.document != null) {
                            FileLoader.getInstance(StoriesController.this.currentAccount).setLocalPathTo(tL_stories$StoryItem.media.document, tL_stories$StoryItem.attachPath);
                        } else {
                            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia.photo;
                            if (tLRPC$Photo != null) {
                                FileLoader.getInstance(StoriesController.this.currentAccount).setLocalPathTo(FileLoader.getClosestPhotoSizeWithSize(tLRPC$Photo.sizes, Integer.MAX_VALUE), tL_stories$StoryItem.attachPath);
                            }
                        }
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoriesController.UploadingStory.this.lambda$sendUploadedRequest$5(j, tL_stories$StoryItem);
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
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda5(StoriesController.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$4(TL_stories$TL_updateStory tL_stories$TL_updateStory) {
            MessagesController.getInstance(StoriesController.this.currentAccount).getStoriesController().processUpdate(tL_stories$TL_updateStory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$5(long j, TL_stories$StoryItem tL_stories$StoryItem) {
            this.entryDestroyed = true;
            if (this.entry.isError) {
                StoriesController.this.getDraftsController().delete(this.entry);
            }
            StoryEntry storyEntry = this.entry;
            storyEntry.isError = false;
            storyEntry.error = null;
            StoriesController.this.getDraftsController().saveForEdit(this.entry, j, tL_stories$StoryItem);
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
            StoryEntry storyEntry2;
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
                    i = i2;
                    SendMessagesHelper.prepareSendingVideo(AccountInstance.getInstance(StoriesController.this.currentAccount), this.path, null, longValue, null, null, null, null, entities, 0, null, !storyEntry2.silent, this.entry.scheduleDate, false, false, charSequence2, null);
                } else {
                    i = i2;
                    SendMessagesHelper.prepareSendingPhoto(AccountInstance.getInstance(StoriesController.this.currentAccount), this.path, null, null, longValue, null, null, null, null, entities, null, null, 0, null, null, !storyEntry.silent, this.entry.scheduleDate, false, charSequence2, null);
                }
                i2 = i + 1;
                z = true;
            }
            this.putMessages = z;
        }

        public void cancel() {
            if (this.failed) {
                StoriesController.this.getDraftsController().delete(this.entry);
                ((ArrayList) StoriesController.this.uploadingStoriesByDialogId.get(this.dialogId)).remove(this);
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
        HashMap<Long, StoriesList>[] hashMapArr = this.storiesLists;
        if (hashMapArr[i] == null) {
            hashMapArr[i] = new HashMap<>();
        }
        StoriesList storiesList = this.storiesLists[i].get(Long.valueOf(j));
        if (storiesList == null && z) {
            HashMap<Long, StoriesList> hashMap = this.storiesLists[i];
            Long valueOf = Long.valueOf(j);
            StoriesList storiesList2 = new StoriesList(this.currentAccount, j, i, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda22
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

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemIds(List<TL_stories$StoryItem> list) {
        if (list == null) {
            return "null";
        }
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                str = str + list.get(i).f1763id + "@" + list.get(i).dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemMessageIds(List<MessageObject> list) {
        TL_stories$StoryItem tL_stories$StoryItem;
        if (list == null) {
            return "null";
        }
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                str = list.get(i).storyItem == null ? str + "null" : str + tL_stories$StoryItem.f1763id + "@" + tL_stories$StoryItem.dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    public void updateStoriesInLists(long j, List<TL_stories$StoryItem> list) {
        FileLog.m105d("updateStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
        StoriesList storiesList = getStoriesList(j, 0, false);
        StoriesList storiesList2 = getStoriesList(j, 1, false);
        if (storiesList != null) {
            storiesList.updateStories(list);
        }
        if (storiesList2 != null) {
            storiesList2.updateStories(list);
        }
    }

    public void updateDeletedStoriesInLists(long j, List<TL_stories$StoryItem> list) {
        FileLog.m105d("updateDeletedStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
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
            hashMapArr[i].remove(Long.valueOf(storiesList.dialogId));
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoriesController$StoriesList */
    /* loaded from: classes6.dex */
    public static class StoriesList {
        private static HashMap<Integer, Long> lastLoadTime;
        private final SortedSet<Integer> cachedObjects;
        public final int currentAccount;
        private Runnable destroyRunnable;
        public final long dialogId;
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

        /* synthetic */ StoriesList(int i, long j, int i2, Utilities.Callback callback, C72881 c72881) {
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
            this.dialogId = j;
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
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010c, code lost:
            if (r7 == null) goto L57;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$preloadCache$3(org.telegram.messenger.MessagesStorage r18) {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesController.StoriesList.lambda$preloadCache$3(org.telegram.messenger.MessagesStorage):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$2(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
            FileLog.m105d("StoriesList " + this.type + "{" + this.dialogId + "} preloadCache {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            this.preloading = false;
            MessagesController.getInstance(this.currentAccount).putUsers(arrayList2, true);
            MessagesController.getInstance(this.currentAccount).putChats(arrayList3, true);
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
                messagesStorage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d", Long.valueOf(this.dialogId), Integer.valueOf(this.type))).stepThis().dispose();
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
        /* JADX WARN: Code restructure failed: missing block: B:11:0x00a9, code lost:
            if (r2 != null) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x00b5, code lost:
            org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.p043ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3(r10));
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x00bd, code lost:
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
                long r3 = r10.dialogId
                r2.append(r3)
                java.lang.String r3 = "} saveCache {"
                r2.append(r3)
                java.lang.String r3 = org.telegram.p043ui.Stories.StoriesController.access$600(r0)
                r2.append(r3)
                java.lang.String r3 = "}"
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                org.telegram.messenger.FileLog.m105d(r2)
                r2 = 0
                org.telegram.SQLite.SQLiteDatabase r3 = r11.getDatabase()     // Catch: java.lang.Throwable -> Lac
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lac
                java.lang.String r5 = "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d"
                r6 = 2
                java.lang.Object[] r7 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> Lac
                long r8 = r10.dialogId     // Catch: java.lang.Throwable -> Lac
                java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.lang.Throwable -> Lac
                r9 = 0
                r7[r9] = r8     // Catch: java.lang.Throwable -> Lac
                int r8 = r10.type     // Catch: java.lang.Throwable -> Lac
                java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Lac
                r7[r1] = r8     // Catch: java.lang.Throwable -> Lac
                java.lang.String r4 = java.lang.String.format(r4, r5, r7)     // Catch: java.lang.Throwable -> Lac
                org.telegram.SQLite.SQLitePreparedStatement r4 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lac
                org.telegram.SQLite.SQLitePreparedStatement r4 = r4.stepThis()     // Catch: java.lang.Throwable -> Lac
                r4.dispose()     // Catch: java.lang.Throwable -> Lac
                java.lang.String r4 = "REPLACE INTO profile_stories VALUES(?, ?, ?, ?)"
                org.telegram.SQLite.SQLitePreparedStatement r2 = r3.executeFast(r4)     // Catch: java.lang.Throwable -> Lac
            L6c:
                int r3 = r0.size()     // Catch: java.lang.Throwable -> Lac
                if (r9 >= r3) goto La9
                java.lang.Object r3 = r0.get(r9)     // Catch: java.lang.Throwable -> Lac
                org.telegram.messenger.MessageObject r3 = (org.telegram.messenger.MessageObject) r3     // Catch: java.lang.Throwable -> Lac
                org.telegram.tgnet.tl.TL_stories$StoryItem r3 = r3.storyItem     // Catch: java.lang.Throwable -> Lac
                if (r3 != 0) goto L7d
                goto La6
            L7d:
                org.telegram.tgnet.NativeByteBuffer r4 = new org.telegram.tgnet.NativeByteBuffer     // Catch: java.lang.Throwable -> Lac
                int r5 = r3.getObjectSize()     // Catch: java.lang.Throwable -> Lac
                r4.<init>(r5)     // Catch: java.lang.Throwable -> Lac
                r3.serializeToStream(r4)     // Catch: java.lang.Throwable -> Lac
                r2.requery()     // Catch: java.lang.Throwable -> Lac
                long r7 = r10.dialogId     // Catch: java.lang.Throwable -> Lac
                r2.bindLong(r1, r7)     // Catch: java.lang.Throwable -> Lac
                int r3 = r3.f1763id     // Catch: java.lang.Throwable -> Lac
                r2.bindInteger(r6, r3)     // Catch: java.lang.Throwable -> Lac
                r3 = 3
                r2.bindByteBuffer(r3, r4)     // Catch: java.lang.Throwable -> Lac
                r3 = 4
                int r5 = r10.type     // Catch: java.lang.Throwable -> Lac
                r2.bindInteger(r3, r5)     // Catch: java.lang.Throwable -> Lac
                r2.step()     // Catch: java.lang.Throwable -> Lac
                r4.reuse()     // Catch: java.lang.Throwable -> Lac
            La6:
                int r9 = r9 + 1
                goto L6c
            La9:
                if (r2 == 0) goto Lb5
                goto Lb2
            Lac:
                r0 = move-exception
                r11.checkSQLException(r0)     // Catch: java.lang.Throwable -> Lbe
                if (r2 == 0) goto Lb5
            Lb2:
                r2.dispose()
            Lb5:
                org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3 r11 = new org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3
                r11.<init>()
                org.telegram.messenger.AndroidUtilities.runOnUIThread(r11)
                return
            Lbe:
                r11 = move-exception
                if (r2 == 0) goto Lc4
                r2.dispose()
            Lc4:
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
            return lastLoadTime == null || (l = lastLoadTime.get(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId))))) == null || System.currentTimeMillis() - l.longValue() > 120000;
        }

        private void resetCanLoad() {
            HashMap<Integer, Long> hashMap = lastLoadTime;
            if (hashMap != null) {
                hashMap.remove(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId))));
            }
        }

        public boolean load(boolean z, int i) {
            return load(z, i, Collections.emptyList());
        }

        public boolean load(List<Integer> list) {
            boolean z;
            Iterator<Integer> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (!this.messageObjectsMap.containsKey(it.next())) {
                    z = true;
                    break;
                }
            }
            return load(z, 0, list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean load(final boolean z, final int i, final List<Integer> list) {
            TL_stories$TL_stories_getStoriesArchive tL_stories$TL_stories_getStoriesArchive;
            if (this.loading || ((this.done || this.error || !canLoad()) && !z)) {
                return false;
            }
            if (this.preloading) {
                this.toLoad = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        Boolean lambda$load$9;
                        lambda$load$9 = StoriesController.StoriesList.this.lambda$load$9(z, i, list, (Integer) obj);
                        return lambda$load$9;
                    }
                };
                return false;
            }
            int i2 = this.type;
            final int i3 = -1;
            if (i2 == 0) {
                TL_stories$TL_stories_getPinnedStories tL_stories$TL_stories_getPinnedStories = new TL_stories$TL_stories_getPinnedStories();
                tL_stories$TL_stories_getPinnedStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                if (!this.loadedObjects.isEmpty()) {
                    int intValue = this.loadedObjects.last().intValue();
                    tL_stories$TL_stories_getPinnedStories.offset_id = intValue;
                    i3 = intValue;
                }
                tL_stories$TL_stories_getPinnedStories.limit = i;
                tL_stories$TL_stories_getStoriesArchive = tL_stories$TL_stories_getPinnedStories;
            } else if (i2 == 2) {
                TL_stories$TL_stories_getStoriesByID tL_stories$TL_stories_getStoriesByID = new TL_stories$TL_stories_getStoriesByID();
                tL_stories$TL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                tL_stories$TL_stories_getStoriesByID.f1776id.addAll(list);
                tL_stories$TL_stories_getStoriesArchive = tL_stories$TL_stories_getStoriesByID;
            } else {
                TL_stories$TL_stories_getStoriesArchive tL_stories$TL_stories_getStoriesArchive2 = new TL_stories$TL_stories_getStoriesArchive();
                tL_stories$TL_stories_getStoriesArchive2.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                if (!this.loadedObjects.isEmpty()) {
                    int intValue2 = this.loadedObjects.last().intValue();
                    tL_stories$TL_stories_getStoriesArchive2.offset_id = intValue2;
                    i3 = intValue2;
                }
                tL_stories$TL_stories_getStoriesArchive2.limit = i;
                tL_stories$TL_stories_getStoriesArchive = tL_stories$TL_stories_getStoriesArchive2;
            }
            FileLog.m105d("StoriesList " + this.type + "{" + this.dialogId + "} load");
            this.loading = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getStoriesArchive, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda12
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    StoriesController.StoriesList.this.lambda$load$12(i3, tLObject, tLRPC$TL_error);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$load$9(boolean z, int i, List list, Integer num) {
            return Boolean.valueOf(load(z, i, list));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$12(final int i, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            if (tLObject instanceof TL_stories$TL_stories_stories) {
                final ArrayList arrayList = new ArrayList();
                final TL_stories$TL_stories_stories tL_stories$TL_stories_stories = (TL_stories$TL_stories_stories) tLObject;
                for (int i2 = 0; i2 < tL_stories$TL_stories_stories.stories.size(); i2++) {
                    arrayList.add(toMessageObject(tL_stories$TL_stories_stories.stories.get(i2)));
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.StoriesList.this.lambda$load$10(arrayList, tL_stories$TL_stories_stories, i);
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
        public /* synthetic */ void lambda$load$10(ArrayList arrayList, TL_stories$TL_stories_stories tL_stories$TL_stories_stories, int i) {
            FileLog.m105d("StoriesList " + this.type + "{" + this.dialogId + "} loaded {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            MessagesController.getInstance(this.currentAccount).putUsers(tL_stories$TL_stories_stories.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_stories$TL_stories_stories.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_stories$TL_stories_stories.users, tL_stories$TL_stories_stories.chats, true, true);
            this.loading = false;
            this.totalCount = tL_stories$TL_stories_stories.count;
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
                lastLoadTime.put(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId))), Long.valueOf(System.currentTimeMillis()));
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

        public void updateDeletedStories(List<TL_stories$StoryItem> list) {
            FileLog.m105d("StoriesList " + this.type + "{" + this.dialogId + "} updateDeletedStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TL_stories$StoryItem tL_stories$StoryItem = list.get(i);
                if (tL_stories$StoryItem != null) {
                    if (this.loadedObjects.contains(Integer.valueOf(tL_stories$StoryItem.f1763id)) || this.cachedObjects.contains(Integer.valueOf(tL_stories$StoryItem.f1763id))) {
                        this.loadedObjects.remove(Integer.valueOf(tL_stories$StoryItem.f1763id));
                        this.cachedObjects.remove(Integer.valueOf(tL_stories$StoryItem.f1763id));
                        int i2 = this.totalCount;
                        if (i2 != -1) {
                            this.totalCount = i2 - 1;
                        }
                        z = true;
                    }
                    removeObject(tL_stories$StoryItem.f1763id, true);
                }
            }
            if (z) {
                fill(true);
                saveCache();
            }
        }

        public void updateStoryViews(List<Integer> list, ArrayList<TL_stories$StoryViews> arrayList) {
            TL_stories$StoryItem tL_stories$StoryItem;
            if (list == null || arrayList == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                int intValue = list.get(i).intValue();
                if (i >= arrayList.size()) {
                    break;
                }
                TL_stories$StoryViews tL_stories$StoryViews = arrayList.get(i);
                MessageObject messageObject = this.messageObjectsMap.get(Integer.valueOf(intValue));
                if (messageObject != null && (tL_stories$StoryItem = messageObject.storyItem) != null) {
                    tL_stories$StoryItem.views = tL_stories$StoryViews;
                    z = true;
                }
            }
            if (z) {
                saveCache();
            }
        }

        public void updateStories(List<TL_stories$StoryItem> list) {
            MessageObject messageObject;
            FileLog.m105d("StoriesList " + this.type + "{" + this.dialogId + "} updateStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TL_stories$StoryItem tL_stories$StoryItem = list.get(i);
                if (tL_stories$StoryItem != null) {
                    boolean z2 = this.loadedObjects.contains(Integer.valueOf(tL_stories$StoryItem.f1763id)) || this.cachedObjects.contains(Integer.valueOf(tL_stories$StoryItem.f1763id));
                    boolean z3 = this.type == 1 ? true : tL_stories$StoryItem.pinned;
                    if (tL_stories$StoryItem instanceof TL_stories$TL_storyItemDeleted) {
                        z3 = false;
                    }
                    if (z2 != z3) {
                        if (!z3) {
                            FileLog.m105d("StoriesList remove story " + tL_stories$StoryItem.f1763id);
                            removeObject(tL_stories$StoryItem.f1763id, true);
                            int i2 = this.totalCount;
                            if (i2 != -1) {
                                this.totalCount = i2 - 1;
                            }
                        } else {
                            FileLog.m105d("StoriesList put story " + tL_stories$StoryItem.f1763id);
                            pushObject(toMessageObject(tL_stories$StoryItem), false);
                            int i3 = this.totalCount;
                            if (i3 != -1) {
                                this.totalCount = i3 + 1;
                            }
                        }
                    } else if (z2 && z3 && ((messageObject = this.messageObjectsMap.get(Integer.valueOf(tL_stories$StoryItem.f1763id))) == null || !equal(messageObject.storyItem, tL_stories$StoryItem))) {
                        FileLog.m105d("StoriesList update story " + tL_stories$StoryItem.f1763id);
                        this.messageObjectsMap.put(Integer.valueOf(tL_stories$StoryItem.f1763id), toMessageObject(tL_stories$StoryItem));
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

        public boolean equal(TL_stories$StoryItem tL_stories$StoryItem, TL_stories$StoryItem tL_stories$StoryItem2) {
            if (tL_stories$StoryItem == null && tL_stories$StoryItem2 == null) {
                return true;
            }
            if ((tL_stories$StoryItem == null) != (tL_stories$StoryItem2 == null)) {
                return false;
            }
            if (tL_stories$StoryItem != tL_stories$StoryItem2) {
                return tL_stories$StoryItem.f1763id == tL_stories$StoryItem2.f1763id && tL_stories$StoryItem.media == tL_stories$StoryItem2.media && TextUtils.equals(tL_stories$StoryItem.caption, tL_stories$StoryItem2.caption);
            }
            return true;
        }

        private MessageObject toMessageObject(TL_stories$StoryItem tL_stories$StoryItem) {
            tL_stories$StoryItem.dialogId = this.dialogId;
            tL_stories$StoryItem.messageId = tL_stories$StoryItem.f1763id;
            MessageObject messageObject = new MessageObject(this.currentAccount, tL_stories$StoryItem);
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
    public /* synthetic */ int lambda$new$22(TL_stories$PeerStories tL_stories$PeerStories, TL_stories$PeerStories tL_stories$PeerStories2) {
        ArrayList<TL_stories$StoryItem> arrayList;
        int i;
        ArrayList<TL_stories$StoryItem> arrayList2;
        long peerDialogId = DialogObject.getPeerDialogId(tL_stories$PeerStories.peer);
        long peerDialogId2 = DialogObject.getPeerDialogId(tL_stories$PeerStories2.peer);
        boolean hasUploadingStories = hasUploadingStories(peerDialogId);
        boolean hasUploadingStories2 = hasUploadingStories(peerDialogId2);
        boolean hasUnreadStories = hasUnreadStories(peerDialogId);
        boolean hasUnreadStories2 = hasUnreadStories(peerDialogId2);
        if (hasUploadingStories != hasUploadingStories2) {
            return (hasUploadingStories2 ? 1 : 0) - (hasUploadingStories ? 1 : 0);
        } else if (hasUnreadStories != hasUnreadStories2) {
            return (hasUnreadStories2 ? 1 : 0) - (hasUnreadStories ? 1 : 0);
        } else {
            boolean isService = UserObject.isService(peerDialogId);
            boolean isService2 = UserObject.isService(peerDialogId2);
            if (isService != isService2) {
                return (isService2 ? 1 : 0) - (isService ? 1 : 0);
            }
            boolean isPremium = isPremium(peerDialogId);
            boolean isPremium2 = isPremium(peerDialogId2);
            if (isPremium != isPremium2) {
                return (isPremium2 ? 1 : 0) - (isPremium ? 1 : 0);
            }
            int i2 = 0;
            if (tL_stories$PeerStories.stories.isEmpty()) {
                i = 0;
            } else {
                i = tL_stories$PeerStories.stories.get(arrayList.size() - 1).date;
            }
            if (!tL_stories$PeerStories2.stories.isEmpty()) {
                i2 = tL_stories$PeerStories2.stories.get(arrayList2.size() - 1).date;
            }
            return i2 - i;
        }
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
            if (getDialogListStories().size() == 1 && DialogObject.getPeerDialogId(getDialogListStories().get(0).peer) == UserConfig.getInstance(this.currentAccount).clientUserId) {
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
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_getBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda29
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda13
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
                tLRPC$TL_contacts_setBlocked.f1653id.add(inputPeer);
            }
        }
        this.blocklistCount += this.blocklist.size();
        tLRPC$TL_contacts_setBlocked.limit = Math.max(tLRPC$TL_contacts_setBlocked.limit, this.blocklist.size());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_setBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.lambda$updateBlockedUsers$26(runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateBlockedUsers$26(final Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda3
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

    public boolean isBlocked(TL_stories$StoryView tL_stories$StoryView) {
        if (tL_stories$StoryView == null) {
            return false;
        }
        if (this.blockedOverride.containsKey(tL_stories$StoryView.user_id)) {
            return this.blockedOverride.get(tL_stories$StoryView.user_id).booleanValue();
        }
        if (this.lastBlocklistRequested == 0) {
            return tL_stories$StoryView.blocked_my_stories_from || tL_stories$StoryView.blocked;
        } else if (this.blocklist.contains(Long.valueOf(tL_stories$StoryView.user_id))) {
            return true;
        } else {
            return tL_stories$StoryView.blocked_my_stories_from || tL_stories$StoryView.blocked;
        }
    }

    public void applyStoryViewsBlocked(TL_stories$StoryViewsList tL_stories$StoryViewsList) {
        if (tL_stories$StoryViewsList == null || tL_stories$StoryViewsList.views == null) {
            return;
        }
        for (int i = 0; i < tL_stories$StoryViewsList.views.size(); i++) {
            TL_stories$StoryView tL_stories$StoryView = tL_stories$StoryViewsList.views.get(i);
            if (this.blockedOverride.containsKey(tL_stories$StoryView.user_id)) {
                this.blockedOverride.put(tL_stories$StoryView.user_id, Boolean.valueOf(tL_stories$StoryView.blocked_my_stories_from));
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
                tLRPC$TL_contacts_block.f1650id = inputPeer;
                tLRPC$TL_contacts_unblock = tLRPC$TL_contacts_block;
            } else {
                TLRPC$TL_contacts_unblock tLRPC$TL_contacts_unblock2 = new TLRPC$TL_contacts_unblock();
                tLRPC$TL_contacts_unblock2.my_stories_from = true;
                tLRPC$TL_contacts_unblock2.f1654id = inputPeer;
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
        TL_stories$TL_stories_canSendStory tL_stories$TL_stories_canSendStory = new TL_stories$TL_stories_canSendStory();
        tL_stories$TL_stories_canSendStory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_canSendStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda30
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$checkStoryLimit$28(tLObject, tLRPC$TL_error);
            }
        }, 1024);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStoryLimit$28(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda15
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

    public void canSendStoryFor(final long j, final Consumer<Boolean> consumer, final boolean z, final Theme.ResourcesProvider resourcesProvider) {
        TL_stories$TL_stories_canSendStory tL_stories$TL_stories_canSendStory = new TL_stories$TL_stories_canSendStory();
        tL_stories$TL_stories_canSendStory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_canSendStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda33
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$canSendStoryFor$32(z, j, consumer, resourcesProvider, tLObject, tLRPC$TL_error);
            }
        }, 1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$32(final boolean z, final long j, final Consumer consumer, final Theme.ResourcesProvider resourcesProvider, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$canSendStoryFor$31(tLRPC$TL_error, z, j, consumer, resourcesProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$31(TLRPC$TL_error tLRPC$TL_error, boolean z, final long j, final Consumer consumer, final Theme.ResourcesProvider resourcesProvider) {
        if (tLRPC$TL_error != null) {
            if (tLRPC$TL_error.text.contains("BOOSTS_REQUIRED")) {
                if (z) {
                    MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(j, new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda2
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            StoriesController.this.lambda$canSendStoryFor$30(consumer, resourcesProvider, j, (TL_stories$TL_premium_boostsStatus) obj);
                        }
                    });
                    return;
                } else {
                    consumer.accept(Boolean.FALSE);
                    return;
                }
            }
            BulletinFactory global = BulletinFactory.global();
            if (global != null) {
                global.createErrorBulletin(tLRPC$TL_error.text);
            }
            consumer.accept(Boolean.FALSE);
            return;
        }
        consumer.accept(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$30(Consumer consumer, Theme.ResourcesProvider resourcesProvider, final long j, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        if (tL_stories$TL_premium_boostsStatus == null) {
            consumer.accept(Boolean.FALSE);
            return;
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(lastFragment, lastFragment.getContext(), 18, this.currentAccount, resourcesProvider);
        limitReachedBottomSheet.setBoostsStats(tL_stories$TL_premium_boostsStatus, false);
        limitReachedBottomSheet.setDialogId(j);
        if (canPostStories(j)) {
            limitReachedBottomSheet.showStatisticButtonInLink(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.this.lambda$canSendStoryFor$29(j);
                }
            });
        }
        limitReachedBottomSheet.show();
        consumer.accept(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$29(long j) {
        long j2 = -j;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", j2);
        bundle.putBoolean("is_megagroup", chat.megagroup);
        bundle.putBoolean("start_from_boosts", true);
        bundle.putBoolean("only_boosts", true);
        StatisticActivity statisticActivity = new StatisticActivity(bundle);
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            if (StoryRecorder.isVisible()) {
                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                lastFragment.showAsSheet(statisticActivity, bottomSheetParams);
                return;
            }
            lastFragment.presentFragment(statisticActivity);
        }
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
    /* loaded from: classes6.dex */
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

    public void loadSendAs() {
        if (this.loadingSendAs || this.loadedSendAs) {
            return;
        }
        this.loadingSendAs = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLObject() { // from class: org.telegram.tgnet.tl.TL_stories$TL_stories_getChatsToSend
            @Override // org.telegram.tgnet.TLObject
            public TLObject deserializeResponse(AbstractSerializedData abstractSerializedData, int i, boolean z) {
                return TLRPC$messages_Chats.TLdeserialize(abstractSerializedData, i, z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(-1519744160);
            }
        }, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                StoriesController.this.lambda$loadSendAs$34(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSendAs$34(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                StoriesController.this.lambda$loadSendAs$33(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSendAs$33(TLObject tLObject) {
        this.sendAs.clear();
        this.sendAs.add(new TLRPC$TL_inputPeerSelf());
        if (tLObject instanceof TLRPC$TL_messages_chats) {
            ArrayList<TLRPC$Chat> arrayList = ((TLRPC$TL_messages_chats) tLObject).chats;
            MessagesController.getInstance(this.currentAccount).putChats(arrayList, false);
            Iterator<TLRPC$Chat> it = arrayList.iterator();
            while (it.hasNext()) {
                this.sendAs.add(MessagesController.getInputPeer(it.next()));
            }
        }
        this.loadingSendAs = false;
        this.loadedSendAs = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesSendAsUpdate, new Object[0]);
    }

    public boolean canEditStories(long j) {
        TLRPC$Chat chat;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        if (j >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j))) == null) {
            return false;
        }
        return chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.edit_stories);
    }

    public boolean canPostStories(long j) {
        TLRPC$Chat chat;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        if (j >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j))) == null || !ChatObject.isChannelAndNotMegaGroup(chat)) {
            return false;
        }
        return chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.post_stories);
    }

    public boolean canEditStory(TL_stories$StoryItem tL_stories$StoryItem) {
        TLRPC$Chat chat;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2;
        if (tL_stories$StoryItem == null || tL_stories$StoryItem.dialogId == getSelfUserId() || tL_stories$StoryItem.dialogId >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tL_stories$StoryItem.dialogId))) == null) {
            return false;
        }
        if (chat.creator) {
            return true;
        }
        boolean z = tL_stories$StoryItem.out;
        if (z && (tLRPC$TL_chatAdminRights2 = chat.admin_rights) != null && (tLRPC$TL_chatAdminRights2.post_stories || tLRPC$TL_chatAdminRights2.edit_stories)) {
            return true;
        }
        return (z || (tLRPC$TL_chatAdminRights = chat.admin_rights) == null || !tLRPC$TL_chatAdminRights.edit_stories) ? false : true;
    }

    public boolean canDeleteStory(TL_stories$StoryItem tL_stories$StoryItem) {
        TLRPC$Chat chat;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2;
        if (tL_stories$StoryItem == null || tL_stories$StoryItem.dialogId == getSelfUserId() || tL_stories$StoryItem.dialogId >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tL_stories$StoryItem.dialogId))) == null) {
            return false;
        }
        if (chat.creator) {
            return true;
        }
        boolean z = tL_stories$StoryItem.out;
        if (z && (tLRPC$TL_chatAdminRights2 = chat.admin_rights) != null && (tLRPC$TL_chatAdminRights2.post_stories || tLRPC$TL_chatAdminRights2.delete_stories)) {
            return true;
        }
        return (z || (tLRPC$TL_chatAdminRights = chat.admin_rights) == null || !tLRPC$TL_chatAdminRights.delete_stories) ? false : true;
    }
}
