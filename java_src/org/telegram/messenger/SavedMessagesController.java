package org.telegram.messenger;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.messenger.SavedMessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$DialogPeer;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_dialogPeer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputDialogPeer;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messageActionHistoryClear;
import org.telegram.tgnet.TLRPC$TL_messages_getSavedDialogs;
import org.telegram.tgnet.TLRPC$TL_messages_getSavedHistory;
import org.telegram.tgnet.TLRPC$TL_messages_messagesSlice;
import org.telegram.tgnet.TLRPC$TL_messages_reorderPinnedSavedDialogs;
import org.telegram.tgnet.TLRPC$TL_messages_savedDialogs;
import org.telegram.tgnet.TLRPC$TL_messages_savedDialogsNotModified;
import org.telegram.tgnet.TLRPC$TL_messages_savedDialogsSlice;
import org.telegram.tgnet.TLRPC$TL_savedDialog;
import org.telegram.tgnet.TLRPC$TL_updatePinnedSavedDialogs;
import org.telegram.tgnet.TLRPC$TL_updateSavedDialogPinned;
import org.telegram.tgnet.TLRPC$Update;
import org.telegram.tgnet.TLRPC$messages_Messages;
/* loaded from: classes4.dex */
public class SavedMessagesController {
    private final int currentAccount;
    private int dialogsCount;
    private int dialogsCountHidden;
    public boolean dialogsEndReached;
    private boolean dialogsLoaded;
    private boolean dialogsLoading;
    private boolean loadedCache;
    private boolean loadingCache;
    private boolean saving;
    public boolean unsupported;
    private ArrayList<SavedDialog> cachedDialogs = new ArrayList<>();
    private ArrayList<SavedDialog> loadedDialogs = new ArrayList<>();
    public ArrayList<SavedDialog> allDialogs = new ArrayList<>();
    private final Runnable saveCacheRunnable = new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            SavedMessagesController.this.saveCache();
        }
    };
    private final LongSparseArray<ArrayList<Utilities.Callback<Boolean>>> checkMessagesCallbacks = new LongSparseArray<>();

    public SavedMessagesController(int i) {
        this.currentAccount = i;
        this.unsupported = MessagesController.getMainSettings(i).getBoolean("savedMessagesUnsupported", true);
    }

    public void cleanup() {
        this.cachedDialogs.clear();
        this.loadedDialogs.clear();
        this.dialogsLoaded = false;
        this.dialogsCount = 0;
        this.dialogsCountHidden = 0;
        this.dialogsEndReached = false;
        this.loadedCache = true;
        deleteCache();
        this.unsupported = true;
        MessagesController.getMainSettings(this.currentAccount).edit().remove("savedMessagesUnsupported").apply();
    }

    private void updateAllDialogs(boolean z) {
        this.allDialogs.clear();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.cachedDialogs.size(); i++) {
            SavedDialog savedDialog = this.cachedDialogs.get(i);
            if (savedDialog.pinned && !hashSet.contains(Long.valueOf(savedDialog.dialogId)) && !savedDialog.isHidden()) {
                this.allDialogs.add(savedDialog);
                hashSet.add(Long.valueOf(savedDialog.dialogId));
            }
        }
        for (int i2 = 0; i2 < this.loadedDialogs.size(); i2++) {
            SavedDialog savedDialog2 = this.loadedDialogs.get(i2);
            if (savedDialog2.pinned && !hashSet.contains(Long.valueOf(savedDialog2.dialogId)) && !savedDialog2.isHidden()) {
                this.allDialogs.add(savedDialog2);
                hashSet.add(Long.valueOf(savedDialog2.dialogId));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < this.loadedDialogs.size(); i3++) {
            SavedDialog savedDialog3 = this.loadedDialogs.get(i3);
            if (!hashSet.contains(Long.valueOf(savedDialog3.dialogId)) && !savedDialog3.isHidden()) {
                arrayList.add(savedDialog3);
                hashSet.add(Long.valueOf(savedDialog3.dialogId));
            }
        }
        if (!this.dialogsEndReached) {
            for (int i4 = 0; i4 < this.cachedDialogs.size(); i4++) {
                SavedDialog savedDialog4 = this.cachedDialogs.get(i4);
                if (!hashSet.contains(Long.valueOf(savedDialog4.dialogId)) && !savedDialog4.isHidden()) {
                    arrayList.add(savedDialog4);
                    hashSet.add(Long.valueOf(savedDialog4.dialogId));
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda16
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$updateAllDialogs$0;
                lambda$updateAllDialogs$0 = SavedMessagesController.lambda$updateAllDialogs$0((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
                return lambda$updateAllDialogs$0;
            }
        });
        this.allDialogs.addAll(arrayList);
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.savedMessagesDialogsUpdate, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updateAllDialogs$0(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog2.getDate() - savedDialog.getDate();
    }

    public int getAllCount() {
        if (this.dialogsEndReached) {
            return this.allDialogs.size();
        }
        if (this.dialogsLoaded) {
            return this.dialogsCount - this.dialogsCountHidden;
        }
        return this.cachedDialogs.size();
    }

    public int getLoadedCount() {
        return this.loadedDialogs.size();
    }

    public int getPinnedCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.allDialogs.size(); i2++) {
            if (this.allDialogs.get(i2).pinned) {
                i++;
            }
        }
        return i;
    }

    public SavedDialog findSavedDialog(long j) {
        return findSavedDialog(this.allDialogs, j);
    }

    public SavedDialog findSavedDialog(ArrayList<SavedDialog> arrayList, long j) {
        for (int i = 0; i < arrayList.size(); i++) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.dialogId == j) {
                return savedDialog;
            }
        }
        return null;
    }

    public ArrayList<SavedDialog> searchDialogs(String str) {
        String str2;
        ArrayList<SavedDialog> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        String translitSafe = AndroidUtilities.translitSafe(str.toLowerCase());
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            String str3 = null;
            long j = savedDialog.dialogId;
            if (j == UserObject.ANONYMOUS) {
                str2 = LocaleController.getString(C3632R.string.AnonymousForward);
            } else if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                str2 = LocaleController.getString(C3632R.string.MyNotes);
                str3 = LocaleController.getString(C3632R.string.SavedMessages);
            } else if (savedDialog.dialogId >= 0) {
                str2 = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(savedDialog.dialogId)));
            } else {
                TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-savedDialog.dialogId));
                str2 = chat != null ? chat.title : "";
            }
            if (str2 != null) {
                String translitSafe2 = AndroidUtilities.translitSafe(str2.toLowerCase());
                if (!translitSafe2.startsWith(translitSafe)) {
                    if (!translitSafe2.contains(" " + translitSafe)) {
                        if (str3 != null) {
                            String translitSafe3 = AndroidUtilities.translitSafe(str3.toLowerCase());
                            if (!translitSafe3.startsWith(translitSafe)) {
                                if (!translitSafe3.contains(" " + translitSafe)) {
                                }
                            }
                            arrayList.add(savedDialog);
                        }
                    }
                }
                arrayList.add(savedDialog);
            }
        }
        return arrayList;
    }

    public int getMessagesCount(long j) {
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            if (savedDialog.dialogId == j) {
                return savedDialog.messagesCount;
            }
        }
        return 0;
    }

    public boolean containsDialog(long j) {
        for (int i = 0; i < this.allDialogs.size(); i++) {
            if (this.allDialogs.get(i).dialogId == j) {
                return true;
            }
        }
        return false;
    }

    public void preloadDialogs() {
        if (this.dialogsLoaded) {
            return;
        }
        loadDialogs();
    }

    public void loadDialogs() {
        SavedDialog savedDialog;
        if (this.dialogsLoading || this.dialogsEndReached || this.loadingCache) {
            return;
        }
        if (!this.loadedCache) {
            loadCache(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SavedMessagesController.this.loadDialogs();
                }
            });
            return;
        }
        this.dialogsLoading = true;
        TLRPC$TL_messages_getSavedDialogs tLRPC$TL_messages_getSavedDialogs = new TLRPC$TL_messages_getSavedDialogs();
        if (this.loadedDialogs.isEmpty()) {
            savedDialog = null;
        } else {
            ArrayList<SavedDialog> arrayList = this.loadedDialogs;
            savedDialog = arrayList.get(arrayList.size() - 1);
        }
        if (savedDialog != null) {
            tLRPC$TL_messages_getSavedDialogs.offset_id = savedDialog.top_message_id;
            tLRPC$TL_messages_getSavedDialogs.offset_date = savedDialog.getDate();
            tLRPC$TL_messages_getSavedDialogs.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(savedDialog.dialogId);
        } else {
            tLRPC$TL_messages_getSavedDialogs.offset_id = Integer.MAX_VALUE;
            tLRPC$TL_messages_getSavedDialogs.offset_date = 0;
            tLRPC$TL_messages_getSavedDialogs.offset_peer = new TLRPC$TL_inputPeerEmpty();
        }
        tLRPC$TL_messages_getSavedDialogs.limit = 20;
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.allDialogs.subList(Math.min(this.loadedDialogs.size(), this.allDialogs.size()), Math.min(this.loadedDialogs.size() + tLRPC$TL_messages_getSavedDialogs.limit, this.allDialogs.size())));
        for (int i = 0; i < arrayList2.size(); i++) {
            SavedDialog savedDialog2 = (SavedDialog) arrayList2.get(i);
            long calcHash = MediaDataController.calcHash(tLRPC$TL_messages_getSavedDialogs.hash, savedDialog2.pinned ? 1L : 0L);
            tLRPC$TL_messages_getSavedDialogs.hash = calcHash;
            long calcHash2 = MediaDataController.calcHash(calcHash, Math.abs(savedDialog2.dialogId));
            tLRPC$TL_messages_getSavedDialogs.hash = calcHash2;
            long calcHash3 = MediaDataController.calcHash(calcHash2, savedDialog2.top_message_id);
            tLRPC$TL_messages_getSavedDialogs.hash = calcHash3;
            tLRPC$TL_messages_getSavedDialogs.hash = MediaDataController.calcHash(calcHash3, savedDialog2.getDate());
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getSavedDialogs, new RequestDelegate() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SavedMessagesController.this.lambda$loadDialogs$2(arrayList2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogs$2(final ArrayList arrayList, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$loadDialogs$1(tLObject, arrayList, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadDialogs$1(TLObject tLObject, ArrayList arrayList, TLRPC$TL_error tLRPC$TL_error) {
        boolean z;
        boolean z2;
        boolean z3 = this.unsupported;
        if (tLObject instanceof TLRPC$TL_messages_savedDialogs) {
            this.dialogsLoaded = true;
            TLRPC$TL_messages_savedDialogs tLRPC$TL_messages_savedDialogs = (TLRPC$TL_messages_savedDialogs) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_messages_savedDialogs.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_messages_savedDialogs.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$TL_messages_savedDialogs.users, tLRPC$TL_messages_savedDialogs.chats, true, true);
            MessagesStorage.getInstance(this.currentAccount).putMessages(tLRPC$TL_messages_savedDialogs.messages, false, true, false, 0, false, 3, 0L);
            for (int i = 0; i < tLRPC$TL_messages_savedDialogs.dialogs.size(); i++) {
                SavedDialog fromTL = SavedDialog.fromTL(this.currentAccount, tLRPC$TL_messages_savedDialogs.dialogs.get(i), tLRPC$TL_messages_savedDialogs.messages);
                int i2 = 0;
                while (true) {
                    if (i2 >= this.cachedDialogs.size()) {
                        break;
                    } else if (this.cachedDialogs.get(i2).dialogId == fromTL.dialogId) {
                        fromTL.messagesCount = this.cachedDialogs.get(i2).messagesCount;
                        this.cachedDialogs.get(i2).pinned = fromTL.pinned;
                        break;
                    } else {
                        i2++;
                    }
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= this.loadedDialogs.size()) {
                        z2 = false;
                        break;
                    } else if (this.loadedDialogs.get(i3).dialogId == fromTL.dialogId) {
                        z2 = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z2) {
                    this.loadedDialogs.add(fromTL);
                    if (fromTL.isHidden()) {
                        this.dialogsCountHidden++;
                    }
                }
            }
            this.dialogsEndReached = true;
            this.dialogsCount = tLRPC$TL_messages_savedDialogs.dialogs.size();
            updateAllDialogs(true);
            saveCacheSchedule();
            this.unsupported = false;
        } else if (tLObject instanceof TLRPC$TL_messages_savedDialogsSlice) {
            this.dialogsLoaded = true;
            TLRPC$TL_messages_savedDialogsSlice tLRPC$TL_messages_savedDialogsSlice = (TLRPC$TL_messages_savedDialogsSlice) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_messages_savedDialogsSlice.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_messages_savedDialogsSlice.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$TL_messages_savedDialogsSlice.users, tLRPC$TL_messages_savedDialogsSlice.chats, true, true);
            MessagesStorage.getInstance(this.currentAccount).putMessages(tLRPC$TL_messages_savedDialogsSlice.messages, false, true, false, 0, false, 3, 0L);
            for (int i4 = 0; i4 < tLRPC$TL_messages_savedDialogsSlice.dialogs.size(); i4++) {
                SavedDialog fromTL2 = SavedDialog.fromTL(this.currentAccount, tLRPC$TL_messages_savedDialogsSlice.dialogs.get(i4), tLRPC$TL_messages_savedDialogsSlice.messages);
                int i5 = 0;
                while (true) {
                    if (i5 >= this.cachedDialogs.size()) {
                        break;
                    } else if (this.cachedDialogs.get(i5).dialogId == fromTL2.dialogId) {
                        fromTL2.messagesCount = this.cachedDialogs.get(i5).messagesCount;
                        this.cachedDialogs.get(i5).pinned = fromTL2.pinned;
                        break;
                    } else {
                        i5++;
                    }
                }
                int i6 = 0;
                while (true) {
                    if (i6 >= this.loadedDialogs.size()) {
                        z = false;
                        break;
                    } else if (this.loadedDialogs.get(i6).dialogId == fromTL2.dialogId) {
                        z = true;
                        break;
                    } else {
                        i6++;
                    }
                }
                if (!z) {
                    this.loadedDialogs.add(fromTL2);
                    if (fromTL2.isHidden()) {
                        this.dialogsCountHidden++;
                    }
                }
            }
            this.dialogsCount = tLRPC$TL_messages_savedDialogsSlice.count;
            this.dialogsEndReached = getPinnedCount() + this.loadedDialogs.size() >= this.dialogsCount || tLRPC$TL_messages_savedDialogsSlice.dialogs.size() == 0;
            updateAllDialogs(true);
            saveCacheSchedule();
            this.unsupported = false;
        } else if (tLObject instanceof TLRPC$TL_messages_savedDialogsNotModified) {
            this.dialogsLoaded = true;
            this.loadedDialogs.addAll(arrayList);
            this.dialogsCount = ((TLRPC$TL_messages_savedDialogsNotModified) tLObject).count;
            this.dialogsCountHidden = 0;
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                if (((SavedDialog) arrayList.get(i7)).isHidden()) {
                    this.dialogsCountHidden++;
                }
            }
            this.dialogsEndReached = this.loadedDialogs.size() >= this.dialogsCount;
            this.unsupported = false;
        } else if (tLRPC$TL_error != null) {
            this.dialogsLoaded = true;
            if ("SAVED_DIALOGS_UNSUPPORTED".equals(tLRPC$TL_error.text)) {
                this.unsupported = true;
            }
        }
        if (this.unsupported != z3) {
            MessagesController.getMainSettings(this.currentAccount).edit().putBoolean("savedMessagesUnsupported", this.unsupported).apply();
        }
        this.dialogsLoading = false;
    }

    public boolean updateSavedDialogs(ArrayList<TLRPC$Message> arrayList) {
        boolean z;
        boolean z2;
        if (arrayList == null) {
            return false;
        }
        LongSparseArray longSparseArray = new LongSparseArray();
        LongSparseArray longSparseArray2 = new LongSparseArray();
        HashSet<Long> hashSet = new HashSet<>();
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$Message tLRPC$Message = arrayList.get(i);
            long savedDialogId = MessageObject.getSavedDialogId(clientUserId, tLRPC$Message);
            if (savedDialogId == clientUserId || (tLRPC$Message.f1626id >= 0 && (tLRPC$Message.send_state == 0 || tLRPC$Message.fwd_from == null))) {
                TLRPC$Message tLRPC$Message2 = (TLRPC$Message) longSparseArray.get(savedDialogId);
                if (tLRPC$Message2 == null || tLRPC$Message2.f1626id < tLRPC$Message.f1626id) {
                    longSparseArray.put(savedDialogId, tLRPC$Message);
                }
                Integer num = (Integer) longSparseArray2.get(savedDialogId);
                longSparseArray2.put(savedDialogId, Integer.valueOf((num == null ? 0 : num.intValue()) + 1));
            }
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            long keyAt = longSparseArray.keyAt(i2);
            TLRPC$Message tLRPC$Message3 = (TLRPC$Message) longSparseArray.valueAt(i2);
            Integer num2 = (Integer) longSparseArray2.get(keyAt);
            int i3 = 0;
            while (true) {
                if (i3 >= this.cachedDialogs.size()) {
                    z = false;
                    break;
                }
                SavedDialog savedDialog = this.cachedDialogs.get(i3);
                if (savedDialog.dialogId == keyAt) {
                    int i4 = savedDialog.top_message_id;
                    int i5 = tLRPC$Message3.f1626id;
                    if (i4 < i5 || (i5 < 0 && tLRPC$Message3.date > savedDialog.getDate())) {
                        MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message3, false, false);
                        savedDialog.message = messageObject;
                        savedDialog.top_message_id = messageObject.getId();
                        z3 = true;
                    }
                    hashSet.add(Long.valueOf(savedDialog.dialogId));
                    z = true;
                } else {
                    i3++;
                }
            }
            if (!z) {
                SavedDialog fromMessage = SavedDialog.fromMessage(this.currentAccount, tLRPC$Message3);
                if (num2 != null) {
                    fromMessage.messagesCount = num2.intValue();
                }
                this.cachedDialogs.add(fromMessage);
                z3 = true;
            }
            int i6 = 0;
            while (true) {
                if (i6 >= this.loadedDialogs.size()) {
                    z2 = false;
                    break;
                }
                SavedDialog savedDialog2 = this.loadedDialogs.get(i6);
                if (savedDialog2.dialogId == keyAt) {
                    int i7 = savedDialog2.top_message_id;
                    int i8 = tLRPC$Message3.f1626id;
                    if (i7 < i8 || (i8 < 0 && tLRPC$Message3.date > savedDialog2.getDate())) {
                        MessageObject messageObject2 = new MessageObject(this.currentAccount, tLRPC$Message3, false, false);
                        savedDialog2.message = messageObject2;
                        savedDialog2.top_message_id = messageObject2.getId();
                        z3 = true;
                    }
                    hashSet.add(Long.valueOf(savedDialog2.dialogId));
                    z2 = true;
                } else {
                    i6++;
                }
            }
            if (!z2) {
                SavedDialog fromMessage2 = SavedDialog.fromMessage(this.currentAccount, tLRPC$Message3);
                if (num2 != null) {
                    fromMessage2.messagesCount = num2.intValue();
                }
                this.loadedDialogs.add(fromMessage2);
                z3 = true;
            }
        }
        if (!hashSet.isEmpty()) {
            updateDialogsCount(hashSet);
        }
        return z3;
    }

    public boolean updateSavedDialog(TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message == null) {
            return false;
        }
        long savedDialogId = MessageObject.getSavedDialogId(UserConfig.getInstance(this.currentAccount).getClientUserId(), tLRPC$Message);
        for (int i = 0; i < this.allDialogs.size(); i++) {
            SavedDialog savedDialog = this.allDialogs.get(i);
            if (savedDialog.dialogId == savedDialogId) {
                MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message, false, false);
                savedDialog.message = messageObject;
                savedDialog.top_message_id = messageObject.getId();
                return true;
            }
        }
        return false;
    }

    public boolean updatedDialogCount(long j, int i) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.allDialogs.size()) {
                break;
            }
            SavedDialog savedDialog = this.allDialogs.get(i2);
            if (savedDialog.dialogId != j) {
                i2++;
            } else if (savedDialog.messagesCount != i) {
                savedDialog.messagesCount = i;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r0 == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
        if (r0 == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(long r5, org.telegram.tgnet.TLRPC$messages_Messages r7) {
        /*
            r4 = this;
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r0 = r7.messages
            boolean r0 = r4.updateSavedDialogs(r0)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto Lc
            r0 = r1
            goto Ld
        Lc:
            r0 = r2
        Ld:
            boolean r3 = r7 instanceof org.telegram.tgnet.TLRPC$TL_messages_messagesSlice
            if (r3 == 0) goto L1e
            int r7 = r7.count
            boolean r5 = r4.updatedDialogCount(r5, r7)
            if (r5 != 0) goto L1b
            if (r0 == 0) goto L1c
        L1b:
            r1 = r2
        L1c:
            r0 = r1
            goto L31
        L1e:
            boolean r3 = r7 instanceof org.telegram.tgnet.TLRPC$TL_messages_messages
            if (r3 == 0) goto L31
            java.util.ArrayList<org.telegram.tgnet.TLRPC$Message> r7 = r7.messages
            int r7 = r7.size()
            boolean r5 = r4.updatedDialogCount(r5, r7)
            if (r5 != 0) goto L1b
            if (r0 == 0) goto L1c
            goto L1b
        L31:
            if (r0 == 0) goto L3b
            org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda1 r5 = new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda1
            r5.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r5)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SavedMessagesController.update(long, org.telegram.tgnet.TLRPC$messages_Messages):void");
    }

    public void updateDeleted(LongSparseArray<ArrayList<Integer>> longSparseArray) {
        ArrayList<SavedDialog> arrayList = new ArrayList<>();
        boolean z = false;
        for (int i = 0; i < longSparseArray.size(); i++) {
            long keyAt = longSparseArray.keyAt(i);
            ArrayList<Integer> valueAt = longSparseArray.valueAt(i);
            int i2 = 0;
            for (int i3 = 0; i3 < valueAt.size(); i3++) {
                i2 = Math.max(i2, valueAt.get(i3).intValue());
            }
            SavedDialog savedDialog = null;
            int i4 = 0;
            while (true) {
                if (i4 >= this.allDialogs.size()) {
                    break;
                } else if (this.allDialogs.get(i4).dialogId == keyAt) {
                    savedDialog = this.allDialogs.get(i4);
                    break;
                } else {
                    i4++;
                }
            }
            if (savedDialog != null) {
                int max = Math.max(0, savedDialog.messagesCount - valueAt.size());
                int i5 = savedDialog.messagesCount;
                if (max != i5) {
                    savedDialog.messagesCount = Math.max(0, i5 - valueAt.size());
                    z = true;
                }
                if (savedDialog.messagesCount <= 0) {
                    removeDialog(savedDialog.dialogId);
                } else if (savedDialog.top_message_id <= i2) {
                    arrayList.add(savedDialog);
                }
                z = true;
            }
        }
        if (z) {
            if (!arrayList.isEmpty()) {
                updateDialogsLastMessage(arrayList);
            } else {
                update();
            }
        }
    }

    private void invalidate() {
        if (this.dialogsLoaded && this.loadedDialogs.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.loadedDialogs.size(); i++) {
            SavedDialog savedDialog = this.loadedDialogs.get(i);
            SavedDialog savedDialog2 = null;
            int i2 = 0;
            while (true) {
                if (i2 >= this.cachedDialogs.size()) {
                    break;
                }
                SavedDialog savedDialog3 = this.cachedDialogs.get(i2);
                if (savedDialog3.dialogId == savedDialog.dialogId) {
                    savedDialog2 = savedDialog3;
                    break;
                }
                i2++;
            }
            if (savedDialog2 == null && !savedDialog.pinned) {
                this.cachedDialogs.add(savedDialog);
            }
        }
        this.loadedDialogs.clear();
        this.dialogsLoaded = false;
        this.dialogsCount = 0;
        this.dialogsEndReached = false;
        update();
        loadDialogs();
    }

    public void deleteDialog(long j) {
        this.dialogsCount -= removeDialog(j);
        update();
    }

    public void deleteDialogs(ArrayList<Long> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            this.dialogsCount -= removeDialog(arrayList.get(i).longValue());
        }
        update();
    }

    private int removeDialog(long j) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.allDialogs.size()) {
            if (this.allDialogs.get(i2).dialogId == j) {
                this.allDialogs.remove(i2);
                i3++;
                i2--;
            }
            i2++;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.loadedDialogs.size()) {
            if (this.loadedDialogs.get(i4).dialogId == j) {
                this.loadedDialogs.remove(i4);
                i5++;
                i4--;
            }
            i4++;
        }
        while (i < this.cachedDialogs.size()) {
            if (this.cachedDialogs.get(i).dialogId == j) {
                this.cachedDialogs.remove(i);
                i--;
            }
            i++;
        }
        return Math.max(i3, i5);
    }

    public void update() {
        updateAllDialogs(true);
        saveCacheSchedule();
    }

    public boolean updatePinned(ArrayList<Long> arrayList, boolean z) {
        int i;
        ArrayList<Long> currentPinnedOrder = getCurrentPinnedOrder(this.allDialogs);
        ArrayList<Long> arrayList2 = new ArrayList<>(currentPinnedOrder);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            long longValue = arrayList.get(size).longValue();
            if (z && !arrayList2.contains(Long.valueOf(longValue))) {
                arrayList2.add(0, Long.valueOf(longValue));
            } else if (!z) {
                arrayList2.remove(Long.valueOf(longValue));
            }
        }
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            i = MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitPremium;
        } else {
            i = MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitDefault;
        }
        if (arrayList2.size() > i) {
            return false;
        }
        if (!sameOrder(currentPinnedOrder, arrayList2)) {
            updatePinnedOrderToServer(arrayList2);
        }
        return true;
    }

    public boolean updatePinnedOrder(ArrayList<Long> arrayList) {
        int i;
        ArrayList<Long> currentPinnedOrder = getCurrentPinnedOrder(this.allDialogs);
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            i = MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitPremium;
        } else {
            i = MessagesController.getInstance(this.currentAccount).savedDialogsPinnedLimitDefault;
        }
        if (arrayList.size() > i) {
            return false;
        }
        if (sameOrder(currentPinnedOrder, arrayList)) {
            return true;
        }
        updatePinnedOrderToServer(arrayList);
        return true;
    }

    private void updatePinnedOrderToServer(ArrayList<Long> arrayList) {
        boolean updatePinnedOrder = updatePinnedOrder(this.loadedDialogs, arrayList);
        boolean updatePinnedOrder2 = updatePinnedOrder(this.cachedDialogs, arrayList);
        if (updatePinnedOrder || updatePinnedOrder2) {
            TLRPC$TL_messages_reorderPinnedSavedDialogs tLRPC$TL_messages_reorderPinnedSavedDialogs = new TLRPC$TL_messages_reorderPinnedSavedDialogs();
            tLRPC$TL_messages_reorderPinnedSavedDialogs.force = true;
            for (int i = 0; i < arrayList.size(); i++) {
                long longValue = arrayList.get(i).longValue();
                TLRPC$TL_inputDialogPeer tLRPC$TL_inputDialogPeer = new TLRPC$TL_inputDialogPeer();
                TLRPC$InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(longValue);
                tLRPC$TL_inputDialogPeer.peer = inputPeer;
                if (inputPeer != null) {
                    tLRPC$TL_messages_reorderPinnedSavedDialogs.order.add(tLRPC$TL_inputDialogPeer);
                }
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_reorderPinnedSavedDialogs, null);
            update();
        }
    }

    public void processUpdate(TLRPC$Update tLRPC$Update) {
        if (processUpdateInternal(tLRPC$Update)) {
            update();
        }
    }

    private boolean processUpdateInternal(TLRPC$Update tLRPC$Update) {
        if (tLRPC$Update instanceof TLRPC$TL_updateSavedDialogPinned) {
            TLRPC$TL_updateSavedDialogPinned tLRPC$TL_updateSavedDialogPinned = (TLRPC$TL_updateSavedDialogPinned) tLRPC$Update;
            TLRPC$DialogPeer tLRPC$DialogPeer = tLRPC$TL_updateSavedDialogPinned.peer;
            if (tLRPC$DialogPeer instanceof TLRPC$TL_dialogPeer) {
                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC$TL_dialogPeer) tLRPC$DialogPeer).peer);
                ArrayList[] arrayListArr = {this.loadedDialogs, this.cachedDialogs};
                boolean z = false;
                for (int i = 0; i < 2; i++) {
                    for (int i2 = 0; i2 < arrayListArr[i].size(); i2++) {
                        SavedDialog savedDialog = (SavedDialog) arrayListArr[i].get(i2);
                        if (savedDialog.dialogId == peerDialogId) {
                            boolean z2 = savedDialog.pinned;
                            boolean z3 = tLRPC$TL_updateSavedDialogPinned.pinned;
                            if (z2 != z3) {
                                savedDialog.pinned = z3;
                                z = true;
                            }
                        }
                    }
                }
                return z;
            }
            return false;
        } else if (tLRPC$Update instanceof TLRPC$TL_updatePinnedSavedDialogs) {
            TLRPC$TL_updatePinnedSavedDialogs tLRPC$TL_updatePinnedSavedDialogs = (TLRPC$TL_updatePinnedSavedDialogs) tLRPC$Update;
            ArrayList<Long> arrayList = new ArrayList<>(tLRPC$TL_updatePinnedSavedDialogs.order.size());
            for (int i3 = 0; i3 < tLRPC$TL_updatePinnedSavedDialogs.order.size(); i3++) {
                TLRPC$DialogPeer tLRPC$DialogPeer2 = tLRPC$TL_updatePinnedSavedDialogs.order.get(i3);
                if (tLRPC$DialogPeer2 instanceof TLRPC$TL_dialogPeer) {
                    arrayList.add(Long.valueOf(DialogObject.getPeerDialogId(((TLRPC$TL_dialogPeer) tLRPC$DialogPeer2).peer)));
                }
            }
            return updatePinnedOrder(this.loadedDialogs, arrayList) || updatePinnedOrder(this.cachedDialogs, arrayList);
        } else {
            return false;
        }
    }

    private ArrayList<Long> getCurrentPinnedOrder(ArrayList<SavedDialog> arrayList) {
        ArrayList<Long> arrayList2 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.pinned) {
                arrayList2.add(Long.valueOf(savedDialog.dialogId));
            }
        }
        return arrayList2;
    }

    private boolean sameOrder(ArrayList<Long> arrayList, ArrayList<Long> arrayList2) {
        if (arrayList.size() != arrayList2.size()) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            if (!Objects.equals(arrayList.get(i), arrayList2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private boolean updatePinnedOrder(ArrayList<SavedDialog> arrayList, ArrayList<Long> arrayList2) {
        if (sameOrder(arrayList2, getCurrentPinnedOrder(arrayList))) {
            return false;
        }
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        while (i < arrayList.size()) {
            SavedDialog savedDialog = arrayList.get(i);
            if (savedDialog.pinned) {
                savedDialog.pinned = false;
                arrayList3.add(savedDialog);
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        arrayList.addAll(arrayList3);
        ArrayList arrayList4 = new ArrayList();
        int i2 = 0;
        while (i2 < arrayList.size()) {
            SavedDialog savedDialog2 = arrayList.get(i2);
            int indexOf = arrayList2.indexOf(Long.valueOf(savedDialog2.dialogId));
            if (indexOf >= 0) {
                savedDialog2.pinnedOrder = indexOf;
                savedDialog2.pinned = true;
                arrayList4.add(savedDialog2);
                arrayList.remove(i2);
                i2--;
            }
            i2++;
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda15
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$updatePinnedOrder$3;
                lambda$updatePinnedOrder$3 = SavedMessagesController.lambda$updatePinnedOrder$3((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
                return lambda$updatePinnedOrder$3;
            }
        });
        Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda17
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$updatePinnedOrder$4;
                lambda$updatePinnedOrder$4 = SavedMessagesController.lambda$updatePinnedOrder$4((SavedMessagesController.SavedDialog) obj, (SavedMessagesController.SavedDialog) obj2);
                return lambda$updatePinnedOrder$4;
            }
        });
        arrayList.addAll(0, arrayList4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updatePinnedOrder$3(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog2.getDate() - savedDialog.getDate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$updatePinnedOrder$4(SavedDialog savedDialog, SavedDialog savedDialog2) {
        return savedDialog.pinnedOrder - savedDialog2.pinnedOrder;
    }

    private void updateDialogsCount(final HashSet<Long> hashSet) {
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$updateDialogsCount$6(messagesStorage, hashSet, clientUserId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        if (r1 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
        r1.dispose();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
        org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda5(r9, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateDialogsCount$6(org.telegram.messenger.MessagesStorage r10, java.util.HashSet r11, long r12) {
        /*
            r9 = this;
            org.telegram.SQLite.SQLiteDatabase r10 = r10.getDatabase()
            androidx.collection.LongSparseArray r0 = new androidx.collection.LongSparseArray
            r0.<init>()
            r1 = 0
            java.util.Iterator r11 = r11.iterator()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
        Le:
            boolean r2 = r11.hasNext()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r2 == 0) goto L4a
            java.lang.Object r2 = r11.next()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.Long r2 = (java.lang.Long) r2     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            long r2 = r2.longValue()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.String r4 = "SELECT COUNT(*) FROM messages_topics WHERE uid = ? AND topic_id = ?"
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.Long r6 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r7 = 0
            r5[r7] = r6     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r6 = 1
            java.lang.Long r8 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r5[r6] = r8     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            org.telegram.SQLite.SQLiteCursor r1 = r10.queryFinalized(r4, r5)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            boolean r4 = r1.next()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            if (r4 == 0) goto L46
            int r4 = r1.intValue(r7)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            r0.put(r2, r4)     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
        L46:
            r1.dispose()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L4f
            goto Le
        L4a:
            if (r1 == 0) goto L58
            goto L55
        L4d:
            r10 = move-exception
            goto L61
        L4f:
            r10 = move-exception
            org.telegram.messenger.FileLog.m102e(r10)     // Catch: java.lang.Throwable -> L4d
            if (r1 == 0) goto L58
        L55:
            r1.dispose()
        L58:
            org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda5 r10 = new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda5
            r10.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r10)
            return
        L61:
            if (r1 == 0) goto L66
            r1.dispose()
        L66:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SavedMessagesController.lambda$updateDialogsCount$6(org.telegram.messenger.MessagesStorage, java.util.HashSet, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsCount$5(LongSparseArray longSparseArray) {
        boolean z = false;
        for (int i = 0; i < longSparseArray.size(); i++) {
            long keyAt = longSparseArray.keyAt(i);
            int intValue = ((Integer) longSparseArray.valueAt(i)).intValue();
            SavedDialog findSavedDialog = findSavedDialog(keyAt);
            if (findSavedDialog != null && findSavedDialog.messagesCount != intValue) {
                findSavedDialog.messagesCount = intValue;
                z = true;
            }
        }
        if (z) {
            update();
        }
    }

    private void loadCache(final Runnable runnable) {
        if (this.loadingCache) {
            return;
        }
        this.loadingCache = true;
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$loadCache$8(messagesStorage, clientUserId, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x014e, code lost:
        if (r18 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0178, code lost:
        if (r18 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x017a, code lost:
        r18.dispose();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017d, code lost:
        org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda7(r31, r5, r6, r8, r7, r35));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018d, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$loadCache$8(org.telegram.messenger.MessagesStorage r32, long r33, final java.lang.Runnable r35) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SavedMessagesController.lambda$loadCache$8(org.telegram.messenger.MessagesStorage, long, java.lang.Runnable):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCache$7(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, Runnable runnable) {
        this.loadingCache = false;
        this.loadedCache = true;
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList3);
        this.cachedDialogs.clear();
        this.cachedDialogs.addAll(arrayList4);
        updateAllDialogs(true);
        if (runnable != null) {
            runnable.run();
        }
    }

    private void updateDialogsLastMessage(final ArrayList<SavedDialog> arrayList) {
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$updateDialogsLastMessage$10(messagesStorage, arrayList, clientUserId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c6, code lost:
        if (r11 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e0, code lost:
        r4 = r6;
        r5 = r10;
        org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda6(r19, r4, r5, r9, r7, r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ee, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$updateDialogsLastMessage$10(org.telegram.messenger.MessagesStorage r20, java.util.ArrayList r21, long r22) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SavedMessagesController.lambda$updateDialogsLastMessage$10(org.telegram.messenger.MessagesStorage, java.util.ArrayList, long):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDialogsLastMessage$9(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, LongSparseArray longSparseArray) {
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList3);
        for (int i = 0; i < arrayList4.size(); i++) {
            removeDialog(((Long) arrayList4.get(i)).longValue());
        }
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            long keyAt = longSparseArray.keyAt(i2);
            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC$Message) longSparseArray.valueAt(i2), null, null, null, null, null, false, false, 0L, false, false, true);
            for (int i3 = 0; i3 < this.loadedDialogs.size(); i3++) {
                SavedDialog savedDialog = this.loadedDialogs.get(i3);
                if (savedDialog.dialogId == keyAt) {
                    savedDialog.top_message_id = messageObject.getId();
                    savedDialog.message = messageObject;
                }
            }
            for (int i4 = 0; i4 < this.cachedDialogs.size(); i4++) {
                SavedDialog savedDialog2 = this.cachedDialogs.get(i4);
                if (savedDialog2.dialogId == keyAt) {
                    savedDialog2.top_message_id = messageObject.getId();
                    savedDialog2.message = messageObject;
                }
            }
        }
        update();
    }

    private void saveCacheSchedule() {
        AndroidUtilities.cancelRunOnUIThread(this.saveCacheRunnable);
        AndroidUtilities.runOnUIThread(this.saveCacheRunnable, 450L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCache() {
        if (this.saving) {
            return;
        }
        this.saving = true;
        final ArrayList arrayList = new ArrayList(this.allDialogs);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$saveCache$12(messagesStorage, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006c, code lost:
        if (r0 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$saveCache$12(org.telegram.messenger.MessagesStorage r7, java.util.ArrayList r8) {
        /*
            r6 = this;
            org.telegram.SQLite.SQLiteDatabase r7 = r7.getDatabase()
            r0 = 0
            java.lang.String r1 = "DELETE FROM saved_dialogs"
            org.telegram.SQLite.SQLitePreparedStatement r1 = r7.executeFast(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            org.telegram.SQLite.SQLitePreparedStatement r1 = r1.stepThis()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r1.dispose()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            java.lang.String r1 = "REPLACE INTO saved_dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?)"
            org.telegram.SQLite.SQLitePreparedStatement r0 = r7.executeFast(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r7 = 0
            r1 = r7
        L1a:
            int r2 = r8.size()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r1 >= r2) goto L62
            java.lang.Object r2 = r8.get(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            org.telegram.messenger.SavedMessagesController$SavedDialog r2 = (org.telegram.messenger.SavedMessagesController.SavedDialog) r2     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r0.requery()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            long r3 = r2.dialogId     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r5 = 1
            r0.bindLong(r5, r3)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 2
            int r4 = r2.getDate()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r0.bindInteger(r3, r4)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 3
            int r4 = r2.top_message_id     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r0.bindInteger(r3, r4)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 4
            boolean r4 = r2.pinned     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            if (r4 == 0) goto L44
            r4 = r1
            goto L46
        L44:
            r4 = 999(0x3e7, float:1.4E-42)
        L46:
            r0.bindInteger(r3, r4)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 5
            r0.bindInteger(r3, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 6
            r0.bindInteger(r3, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 7
            r0.bindInteger(r3, r7)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r3 = 8
            int r2 = r2.messagesCount     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r0.bindInteger(r3, r2)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            r0.step()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            int r1 = r1 + 1
            goto L1a
        L62:
            r0.dispose()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L68
            goto L6e
        L66:
            r7 = move-exception
            goto L7a
        L68:
            r7 = move-exception
            org.telegram.messenger.FileLog.m102e(r7)     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L71
        L6e:
            r0.dispose()
        L71:
            org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda2 r7 = new org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda2
            r7.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r7)
            return
        L7a:
            if (r0 == 0) goto L7f
            r0.dispose()
        L7f:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SavedMessagesController.lambda$saveCache$12(org.telegram.messenger.MessagesStorage, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveCache$11() {
        this.saving = false;
    }

    private void deleteCache() {
        if (this.saving) {
            return;
        }
        this.saving = true;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$deleteCache$14(messagesStorage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteCache$14(MessagesStorage messagesStorage) {
        try {
            messagesStorage.getDatabase().executeFast("DELETE FROM saved_dialogs").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$deleteCache$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteCache$13() {
        this.saving = false;
        this.loadedCache = false;
    }

    /* loaded from: classes4.dex */
    public static class SavedDialog {
        public long dialogId;
        private int localDate;
        public MessageObject message;
        public int messagesCount;
        public boolean pinned;
        private int pinnedOrder;
        public int top_message_id;

        public int getDate() {
            TLRPC$Message tLRPC$Message;
            MessageObject messageObject = this.message;
            if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null) {
                return this.localDate;
            }
            if ((tLRPC$Message.flags & LiteMode.FLAG_CHAT_SCALE) != 0) {
                return tLRPC$Message.edit_date;
            }
            return tLRPC$Message.date;
        }

        public boolean isHidden() {
            TLRPC$Message tLRPC$Message;
            MessageObject messageObject = this.message;
            return (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || !(tLRPC$Message.action instanceof TLRPC$TL_messageActionHistoryClear)) ? false : true;
        }

        public static SavedDialog fromMessage(int i, TLRPC$Message tLRPC$Message) {
            SavedDialog savedDialog = new SavedDialog();
            savedDialog.dialogId = MessageObject.getSavedDialogId(UserConfig.getInstance(i).getClientUserId(), tLRPC$Message);
            savedDialog.pinned = false;
            savedDialog.top_message_id = tLRPC$Message.f1626id;
            savedDialog.message = new MessageObject(i, tLRPC$Message, null, null, null, null, null, false, false, 0L, false, false, true);
            return savedDialog;
        }

        public static SavedDialog fromTL(int i, TLRPC$TL_savedDialog tLRPC$TL_savedDialog, ArrayList<TLRPC$Message> arrayList) {
            TLRPC$Message tLRPC$Message;
            SavedDialog savedDialog = new SavedDialog();
            savedDialog.dialogId = DialogObject.getPeerDialogId(tLRPC$TL_savedDialog.peer);
            savedDialog.pinned = tLRPC$TL_savedDialog.pinned;
            savedDialog.top_message_id = tLRPC$TL_savedDialog.top_message;
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    tLRPC$Message = null;
                    break;
                }
                tLRPC$Message = arrayList.get(i2);
                if (savedDialog.top_message_id == tLRPC$Message.f1626id) {
                    break;
                }
                i2++;
            }
            TLRPC$Message tLRPC$Message2 = tLRPC$Message;
            if (tLRPC$Message2 != null) {
                savedDialog.message = new MessageObject(i, tLRPC$Message2, null, null, null, null, null, false, false, 0L, false, false, true);
            }
            return savedDialog;
        }
    }

    public static void openSavedMessages() {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", UserConfig.getInstance(lastFragment.getCurrentAccount()).getClientUserId());
        lastFragment.presentFragment(new ChatActivity(bundle));
    }

    public void hasSavedMessages(final long j, Utilities.Callback<Boolean> callback) {
        if (callback == null) {
            return;
        }
        SavedDialog findSavedDialog = findSavedDialog(j);
        if (findSavedDialog != null && findSavedDialog.messagesCount > 0) {
            callback.run(Boolean.TRUE);
            return;
        }
        ArrayList<Utilities.Callback<Boolean>> arrayList = this.checkMessagesCallbacks.get(j);
        if (arrayList != null) {
            arrayList.add(callback);
            return;
        }
        ArrayList<Utilities.Callback<Boolean>> arrayList2 = new ArrayList<>();
        arrayList2.add(callback);
        this.checkMessagesCallbacks.put(j, arrayList2);
        TLRPC$TL_messages_getSavedHistory tLRPC$TL_messages_getSavedHistory = new TLRPC$TL_messages_getSavedHistory();
        tLRPC$TL_messages_getSavedHistory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tLRPC$TL_messages_getSavedHistory.limit = 1;
        tLRPC$TL_messages_getSavedHistory.hash = 0L;
        tLRPC$TL_messages_getSavedHistory.offset_id = Integer.MAX_VALUE;
        tLRPC$TL_messages_getSavedHistory.offset_date = Integer.MAX_VALUE;
        tLRPC$TL_messages_getSavedHistory.add_offset = -1;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getSavedHistory, new RequestDelegate() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SavedMessagesController.this.lambda$hasSavedMessages$16(j, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasSavedMessages$16(final long j, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SavedMessagesController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                SavedMessagesController.this.lambda$hasSavedMessages$15(tLObject, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasSavedMessages$15(TLObject tLObject, long j) {
        if (tLObject instanceof TLRPC$messages_Messages) {
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            int size = tLRPC$messages_Messages.messages.size();
            if (tLRPC$messages_Messages instanceof TLRPC$TL_messages_messagesSlice) {
                size = ((TLRPC$TL_messages_messagesSlice) tLRPC$messages_Messages).count;
            }
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$messages_Messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$messages_Messages.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            boolean z = size > 0;
            if (size > 0 && !updatedDialogCount(j, size) && !tLRPC$messages_Messages.messages.isEmpty()) {
                SavedDialog fromMessage = SavedDialog.fromMessage(this.currentAccount, tLRPC$messages_Messages.messages.get(0));
                fromMessage.messagesCount = size;
                this.cachedDialogs.add(fromMessage);
                update();
            }
            ArrayList<Utilities.Callback<Boolean>> arrayList = this.checkMessagesCallbacks.get(j);
            this.checkMessagesCallbacks.remove(j);
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).run(Boolean.valueOf(z));
                }
            }
        }
    }
}
