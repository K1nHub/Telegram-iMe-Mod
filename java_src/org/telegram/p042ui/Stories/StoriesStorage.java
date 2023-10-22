package org.telegram.p042ui.Stories;

import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLiteException;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
import org.telegram.tgnet.TLRPC$PeerStories;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageReplyStoryHeader;
import org.telegram.tgnet.TLRPC$TL_stories_allStories;
import org.telegram.tgnet.TLRPC$TL_stories_getStoriesByID;
import org.telegram.tgnet.TLRPC$TL_stories_stories;
import org.telegram.tgnet.TLRPC$TL_storyItem;
import org.telegram.tgnet.TLRPC$TL_storyItemDeleted;
import org.telegram.tgnet.TLRPC$TL_storyItemSkipped;
import org.telegram.tgnet.TLRPC$TL_updateStory;
import org.telegram.tgnet.TLRPC$TL_webPageAttributeStory;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$WebPageAttribute;
/* renamed from: org.telegram.ui.Stories.StoriesStorage */
/* loaded from: classes6.dex */
public class StoriesStorage {
    int currentAccount;
    MessagesStorage storage;

    public StoriesStorage(int i) {
        this.currentAccount = i;
        this.storage = MessagesStorage.getInstance(i);
    }

    public void getAllStories(final Consumer<TLRPC$TL_stories_allStories> consumer) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$getAllStories$3(consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getAllStories$3(final com.google.android.exoplayer2.util.Consumer r19) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Stories.StoriesStorage.lambda$getAllStories$3(com.google.android.exoplayer2.util.Consumer):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getAllStories$1(TLRPC$PeerStories tLRPC$PeerStories) {
        ArrayList<TLRPC$StoryItem> arrayList = tLRPC$PeerStories.stories;
        return -arrayList.get(arrayList.size() - 1).date;
    }

    private void checkExpiredStories(long j, ArrayList<TLRPC$StoryItem> arrayList) {
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        SQLiteDatabase database = this.storage.getDatabase();
        ArrayList arrayList2 = null;
        int i = 0;
        ArrayList arrayList3 = null;
        while (i < arrayList.size()) {
            TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
            if (currentTime > arrayList.get(i).expire_date) {
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    arrayList2 = new ArrayList();
                }
                arrayList3.add(Integer.valueOf(tLRPC$StoryItem.f1635id));
                arrayList2.add(tLRPC$StoryItem);
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        if (arrayList2 != null) {
            try {
                database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)", Long.valueOf(j), TextUtils.join(", ", arrayList3))).stepThis().dispose();
            } catch (SQLiteException e) {
                FileLog.m97e(e);
            }
        }
    }

    public void putStoriesInternal(long j, TLRPC$PeerStories tLRPC$PeerStories) {
        SQLiteDatabase database = this.storage.getDatabase();
        if (tLRPC$PeerStories != null) {
            try {
                ArrayList<TLRPC$StoryItem> arrayList = tLRPC$PeerStories.stories;
                SQLitePreparedStatement executeFast = database.executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    executeFast.requery();
                    TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
                    if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                        FileLog.m99e("try write deleted story");
                    } else {
                        executeFast.bindLong(1, j);
                        executeFast.bindLong(2, tLRPC$StoryItem.f1635id);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
                        tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
                        executeFast.bindByteBuffer(3, nativeByteBuffer);
                        NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
                        if (writeLocalParams != null) {
                            executeFast.bindByteBuffer(4, writeLocalParams);
                        } else {
                            executeFast.bindNull(4);
                        }
                        if (writeLocalParams != null) {
                            writeLocalParams.reuse();
                        }
                        executeFast.step();
                        nativeByteBuffer.reuse();
                    }
                }
                executeFast.dispose();
                database.executeFast(String.format(Locale.US, "REPLACE INTO stories_counter VALUES(%d, %d, %d)", Long.valueOf(j), 0, Integer.valueOf(tLRPC$PeerStories.max_read_id))).stepThis().dispose();
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
    }

    public void putStoryInternal(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        try {
            SQLitePreparedStatement executeFast = this.storage.getDatabase().executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
            if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                FileLog.m99e("putStoryInternal: try write deleted story");
                return;
            }
            executeFast.bindLong(1, j);
            executeFast.bindLong(2, tLRPC$StoryItem.f1635id);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
            tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
            if (writeLocalParams != null) {
                executeFast.bindByteBuffer(4, writeLocalParams);
            } else {
                executeFast.bindNull(4);
            }
            if (writeLocalParams != null) {
                writeLocalParams.reuse();
            }
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void saveAllStories(final ArrayList<TLRPC$PeerStories> arrayList, final boolean z, final boolean z2, final Runnable runnable) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$saveAllStories$4(arrayList, z, z2, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveAllStories$4(ArrayList arrayList, boolean z, boolean z2, Runnable runnable) {
        SQLiteDatabase database = this.storage.getDatabase();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC$PeerStories tLRPC$PeerStories = (TLRPC$PeerStories) arrayList.get(i);
            fillSkippedStories(DialogObject.getPeerDialogId(tLRPC$PeerStories.peer), tLRPC$PeerStories);
        }
        if (!z) {
            try {
                SQLiteCursor queryFinalized = database.queryFinalized("SELECT DISTINCT dialog_id FROM stories", new Object[0]);
                ArrayList arrayList2 = new ArrayList();
                while (queryFinalized.next()) {
                    long longValue = queryFinalized.longValue(0);
                    if (longValue > 0) {
                        TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(longValue));
                        if (user == null) {
                            user = MessagesStorage.getInstance(this.currentAccount).getUser(longValue);
                        }
                        if (user == null || (user.stories_hidden == z2 && !arrayList2.contains(Long.valueOf(longValue)))) {
                            arrayList2.add(Long.valueOf(longValue));
                        }
                    } else {
                        long j = -longValue;
                        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                        if (chat == null) {
                            chat = MessagesStorage.getInstance(this.currentAccount).getChat(j);
                        }
                        if (chat == null || (chat.stories_hidden == z2 && !arrayList2.contains(Long.valueOf(longValue)))) {
                            arrayList2.add(Long.valueOf(longValue));
                        }
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m100d("StoriesStorage delete dialogs " + TextUtils.join(",", arrayList2));
                }
                database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id IN(%s)", TextUtils.join(",", arrayList2))).stepThis().dispose();
            } catch (Throwable th) {
                this.storage.checkSQLException(th);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$PeerStories tLRPC$PeerStories2 = (TLRPC$PeerStories) arrayList.get(i2);
            putStoriesInternal(DialogObject.getPeerDialogId(tLRPC$PeerStories2.peer), tLRPC$PeerStories2);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    private void fillSkippedStories(long j, TLRPC$PeerStories tLRPC$PeerStories) {
        if (tLRPC$PeerStories != null) {
            try {
                ArrayList<TLRPC$StoryItem> arrayList = tLRPC$PeerStories.stories;
                for (int i = 0; i < arrayList.size(); i++) {
                    if (arrayList.get(i) instanceof TLRPC$TL_storyItemSkipped) {
                        TLRPC$StoryItem storyInternal = getStoryInternal(j, arrayList.get(i).f1635id);
                        if (storyInternal instanceof TLRPC$TL_storyItem) {
                            arrayList.set(i, storyInternal);
                        }
                    }
                }
            } catch (Exception e) {
                FileLog.m97e(e);
            }
        }
    }

    private TLRPC$StoryItem getStoryInternal(long j, int i) {
        TLRPC$StoryItem tLRPC$StoryItem = null;
        try {
            SQLiteCursor queryFinalized = this.storage.getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(i)), new Object[0]);
            if (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                NativeByteBuffer byteBufferValue2 = queryFinalized.byteBufferValue(1);
                if (byteBufferValue != null) {
                    tLRPC$StoryItem = TLRPC$StoryItem.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(true), true);
                    tLRPC$StoryItem.dialogId = j;
                    byteBufferValue.reuse();
                }
                if (tLRPC$StoryItem != null) {
                    StoryCustomParamsHelper.readLocalParams(tLRPC$StoryItem, byteBufferValue2);
                }
                if (byteBufferValue2 != null) {
                    byteBufferValue2.reuse();
                }
            }
            queryFinalized.dispose();
        } catch (SQLiteException e) {
            FileLog.m97e(e);
        }
        return tLRPC$StoryItem;
    }

    public void updateStoryItem(final long j, final TLRPC$StoryItem tLRPC$StoryItem) {
        if (j == 0) {
            return;
        }
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$updateStoryItem$7(j, tLRPC$StoryItem);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateStoryItemInternal */
    public void lambda$updateStoryItem$7(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        if (j == 0 || tLRPC$StoryItem == null) {
            return;
        }
        if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
            FileLog.m99e("StoriesStorage: try write deleted story");
        }
        if (StoriesUtilities.isExpired(this.currentAccount, tLRPC$StoryItem)) {
            FileLog.m99e("StoriesStorage: try write expired story");
        }
        try {
            SQLitePreparedStatement executeFast = this.storage.getDatabase().executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
            executeFast.requery();
            executeFast.bindLong(1, j);
            executeFast.bindLong(2, tLRPC$StoryItem.f1635id);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
            tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
            if (writeLocalParams != null) {
                executeFast.bindByteBuffer(4, writeLocalParams);
            } else {
                executeFast.bindNull(4);
            }
            if (writeLocalParams != null) {
                writeLocalParams.reuse();
            }
            executeFast.step();
            nativeByteBuffer.reuse();
        } catch (Exception e) {
            FileLog.m97e(e);
        }
    }

    public void updateMaxReadId(final long j, final int i) {
        TLRPC$PeerStories tLRPC$PeerStories;
        TLRPC$PeerStories tLRPC$PeerStories2;
        if (j > 0) {
            TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull != null && (tLRPC$PeerStories2 = userFull.stories) != null) {
                tLRPC$PeerStories2.max_read_id = i;
                this.storage.updateUserInfo(userFull, false);
            }
        } else {
            TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
            if (chatFull != null && (tLRPC$PeerStories = chatFull.stories) != null) {
                tLRPC$PeerStories.max_read_id = i;
                this.storage.updateChatInfo(chatFull, false);
            }
        }
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$updateMaxReadId$8(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMaxReadId$8(long j, int i) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "REPLACE INTO stories_counter VALUES(%d, 0, %d)", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void processUpdate(final TLRPC$TL_updateStory tLRPC$TL_updateStory) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$processUpdate$9(tLRPC$TL_updateStory);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cb A[Catch: all -> 0x00f7, TryCatch #0 {all -> 0x00f7, blocks: (B:3:0x0006, B:5:0x0017, B:7:0x0039, B:9:0x0043, B:11:0x0053, B:14:0x0059, B:23:0x00ae, B:25:0x00cb, B:27:0x00d1, B:17:0x007f, B:19:0x0083), top: B:32:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processUpdate$9(org.telegram.tgnet.TLRPC$TL_updateStory r12) {
        /*
            r11 = this;
            org.telegram.messenger.MessagesStorage r0 = r11.storage
            org.telegram.SQLite.SQLiteDatabase r0 = r0.getDatabase()
            org.telegram.tgnet.TLRPC$Peer r1 = r12.peer     // Catch: java.lang.Throwable -> Lf7
            long r1 = org.telegram.messenger.DialogObject.getPeerDialogId(r1)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.tgnet.TLRPC$StoryItem r12 = r12.story     // Catch: java.lang.Throwable -> Lf7
            int r3 = r12.f1635id     // Catch: java.lang.Throwable -> Lf7
            boolean r4 = r12 instanceof org.telegram.tgnet.TLRPC$TL_storyItemDeleted     // Catch: java.lang.Throwable -> Lf7
            r5 = 2
            r6 = 1
            r7 = 0
            if (r4 == 0) goto L7f
            java.util.Locale r12 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r4 = "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d"
            java.lang.Object[] r8 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> Lf7
            java.lang.Long r9 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> Lf7
            r8[r7] = r9     // Catch: java.lang.Throwable -> Lf7
            java.lang.Integer r9 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lf7
            r8[r6] = r9     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r4 = java.lang.String.format(r12, r4, r8)     // Catch: java.lang.Throwable -> Lf7
            java.lang.Object[] r8 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLiteCursor r4 = r0.queryFinalized(r4, r8)     // Catch: java.lang.Throwable -> Lf7
            boolean r8 = r4.next()     // Catch: java.lang.Throwable -> Lf7
            if (r8 == 0) goto L58
            org.telegram.tgnet.NativeByteBuffer r8 = r4.byteBufferValue(r7)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.tgnet.NativeByteBuffer r9 = r4.byteBufferValue(r6)     // Catch: java.lang.Throwable -> Lf7
            if (r8 == 0) goto L51
            int r10 = r8.readInt32(r6)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.tgnet.TLRPC$StoryItem r10 = org.telegram.tgnet.TLRPC$StoryItem.TLdeserialize(r8, r10, r6)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.p042ui.Stories.StoryCustomParamsHelper.readLocalParams(r10, r9)     // Catch: java.lang.Throwable -> Lf7
            r8.reuse()     // Catch: java.lang.Throwable -> Lf7
        L51:
            if (r9 == 0) goto L56
            r9.reuse()     // Catch: java.lang.Throwable -> Lf7
        L56:
            r8 = r6
            goto L59
        L58:
            r8 = r7
        L59:
            r4.dispose()     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r4 = "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d"
            java.lang.Object[] r9 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> Lf7
            java.lang.Long r10 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> Lf7
            r9[r7] = r10     // Catch: java.lang.Throwable -> Lf7
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lf7
            r9[r6] = r3     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r12 = java.lang.String.format(r12, r4, r9)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLitePreparedStatement r12 = r0.executeFast(r12)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLitePreparedStatement r12 = r12.stepThis()     // Catch: java.lang.Throwable -> Lf7
            r12.dispose()     // Catch: java.lang.Throwable -> Lf7
            if (r8 == 0) goto Lad
            r12 = -1
            goto Lae
        L7f:
            boolean r4 = r12 instanceof org.telegram.tgnet.TLRPC$TL_storyItem     // Catch: java.lang.Throwable -> Lf7
            if (r4 == 0) goto Lad
            r11.lambda$updateStoryItem$7(r1, r12)     // Catch: java.lang.Throwable -> Lf7
            java.util.Locale r12 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r4 = "SELECT story_id FROM stories WHERE dialog_id = %d AND story_id = %d"
            java.lang.Object[] r8 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> Lf7
            java.lang.Long r9 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> Lf7
            r8[r7] = r9     // Catch: java.lang.Throwable -> Lf7
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lf7
            r8[r6] = r3     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r12 = java.lang.String.format(r12, r4, r8)     // Catch: java.lang.Throwable -> Lf7
            java.lang.Object[] r3 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLiteCursor r12 = r0.queryFinalized(r12, r3)     // Catch: java.lang.Throwable -> Lf7
            boolean r3 = r12.next()     // Catch: java.lang.Throwable -> Lf7
            r12.dispose()     // Catch: java.lang.Throwable -> Lf7
            if (r3 != 0) goto Lad
            r12 = r6
            goto Lae
        Lad:
            r12 = r7
        Lae:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lf7
            r3.<init>()     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r4 = "SELECT count, max_read FROM stories_counter WHERE dialog_id = "
            r3.append(r4)     // Catch: java.lang.Throwable -> Lf7
            r3.append(r1)     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lf7
            java.lang.Object[] r4 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLiteCursor r3 = r0.queryFinalized(r3, r4)     // Catch: java.lang.Throwable -> Lf7
            boolean r4 = r3.next()     // Catch: java.lang.Throwable -> Lf7
            if (r4 == 0) goto Ld0
            int r4 = r3.intValue(r6)     // Catch: java.lang.Throwable -> Lf7
            goto Ld1
        Ld0:
            r4 = r7
        Ld1:
            r3.dispose()     // Catch: java.lang.Throwable -> Lf7
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r8 = "UPDATE stories_counter SET count = %d WHERE dialog_id = %d"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> Lf7
            int r4 = r4 + r12
            java.lang.Integer r12 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lf7
            r5[r7] = r12     // Catch: java.lang.Throwable -> Lf7
            java.lang.Long r12 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Throwable -> Lf7
            r5[r6] = r12     // Catch: java.lang.Throwable -> Lf7
            java.lang.String r12 = java.lang.String.format(r3, r8, r5)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLitePreparedStatement r12 = r0.executeFast(r12)     // Catch: java.lang.Throwable -> Lf7
            org.telegram.SQLite.SQLitePreparedStatement r12 = r12.stepThis()     // Catch: java.lang.Throwable -> Lf7
            r12.dispose()     // Catch: java.lang.Throwable -> Lf7
            goto Lfd
        Lf7:
            r12 = move-exception
            org.telegram.messenger.MessagesStorage r0 = r11.storage
            r0.checkSQLException(r12)
        Lfd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Stories.StoriesStorage.lambda$processUpdate$9(org.telegram.tgnet.TLRPC$TL_updateStory):void");
    }

    public void updateStories(final TLRPC$PeerStories tLRPC$PeerStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$updateStories$10(tLRPC$PeerStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStories$10(TLRPC$PeerStories tLRPC$PeerStories) {
        for (int i = 0; i < tLRPC$PeerStories.stories.size(); i++) {
            lambda$updateStoryItem$7(DialogObject.getPeerDialogId(tLRPC$PeerStories.peer), tLRPC$PeerStories.stories.get(i));
        }
    }

    public void deleteStory(final long j, final int i) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$deleteStory$11(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$11(long j, int i) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void deleteStories(final long j, final ArrayList<Integer> arrayList) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$deleteStories$12(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStories$12(ArrayList arrayList, long j) {
        SQLiteDatabase database = this.storage.getDatabase();
        try {
            database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)", Long.valueOf(j), TextUtils.join(", ", arrayList))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void fillMessagesWithStories(LongSparseArray<ArrayList<MessageObject>> longSparseArray, final Runnable runnable, int i) {
        if (runnable == null) {
            return;
        }
        if (longSparseArray == null) {
            runnable.run();
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < longSparseArray.size()) {
            long keyAt = longSparseArray.keyAt(i2);
            ArrayList<MessageObject> valueAt = longSparseArray.valueAt(i2);
            int i3 = 0;
            while (i3 < valueAt.size()) {
                MessageObject messageObject = valueAt.get(i3);
                TLRPC$StoryItem storyInternal = getStoryInternal(keyAt, getStoryId(messageObject));
                if (storyInternal != null && !(storyInternal instanceof TLRPC$TL_storyItemSkipped)) {
                    applyStory(this.currentAccount, keyAt, messageObject, storyInternal);
                    arrayList.add(messageObject);
                    valueAt.remove(i3);
                    i3--;
                    if (valueAt.isEmpty()) {
                        longSparseArray.removeAt(i2);
                        i2--;
                    }
                }
                i3++;
            }
            i2++;
        }
        lambda$fillMessagesWithStories$13(arrayList);
        if (!longSparseArray.isEmpty()) {
            final int[] iArr = {longSparseArray.size()};
            for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
                final long keyAt2 = longSparseArray.keyAt(i4);
                final ArrayList<MessageObject> valueAt2 = longSparseArray.valueAt(i4);
                TLRPC$TL_stories_getStoriesByID tLRPC$TL_stories_getStoriesByID = new TLRPC$TL_stories_getStoriesByID();
                tLRPC$TL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(keyAt2);
                for (int i5 = 0; i5 < valueAt2.size(); i5++) {
                    tLRPC$TL_stories_getStoriesByID.f1743id.add(Integer.valueOf(getStoryId(valueAt2.get(i5))));
                }
                int sendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda16
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StoriesStorage.this.lambda$fillMessagesWithStories$14(valueAt2, keyAt2, iArr, runnable, tLObject, tLRPC$TL_error);
                    }
                });
                if (i != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(sendRequest, i);
                }
            }
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillMessagesWithStories$14(final ArrayList arrayList, long j, int[] iArr, Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        boolean z;
        if (tLObject != null) {
            TLRPC$TL_stories_stories tLRPC$TL_stories_stories = (TLRPC$TL_stories_stories) tLObject;
            for (int i = 0; i < arrayList.size(); i++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i);
                int i2 = 0;
                while (true) {
                    if (i2 >= tLRPC$TL_stories_stories.stories.size()) {
                        z = false;
                        break;
                    } else if (tLRPC$TL_stories_stories.stories.get(i2).f1635id == getStoryId(messageObject)) {
                        applyStory(this.currentAccount, j, messageObject, tLRPC$TL_stories_stories.stories.get(i2));
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    TLRPC$TL_storyItemDeleted tLRPC$TL_storyItemDeleted = new TLRPC$TL_storyItemDeleted();
                    tLRPC$TL_storyItemDeleted.f1635id = getStoryId(messageObject);
                    applyStory(this.currentAccount, j, messageObject, tLRPC$TL_storyItemDeleted);
                }
                this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesStorage.this.lambda$fillMessagesWithStories$13(arrayList);
                    }
                });
            }
        }
        iArr[0] = iArr[0] - 1;
        if (iArr[0] == 0) {
            runnable.run();
        }
    }

    public static void applyStory(int i, long j, MessageObject messageObject, TLRPC$StoryItem tLRPC$StoryItem) {
        TLRPC$WebPage tLRPC$WebPage;
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader = tLRPC$Message.reply_to;
        if ((tLRPC$MessageReplyHeader instanceof TLRPC$TL_messageReplyStoryHeader) && tLRPC$MessageReplyHeader.story_id == tLRPC$StoryItem.f1635id) {
            tLRPC$Message.replyStory = checkExpiredStateLocal(i, j, tLRPC$StoryItem);
        }
        int i2 = messageObject.type;
        if (i2 == 23 || i2 == 24) {
            MessageMediaStoryFull messageMediaStoryFull = new MessageMediaStoryFull();
            messageMediaStoryFull.user_id = DialogObject.getPeerDialogId(messageObject.messageOwner.media.peer);
            TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
            messageMediaStoryFull.peer = tLRPC$MessageMedia.peer;
            messageMediaStoryFull.f1625id = tLRPC$MessageMedia.f1625id;
            messageMediaStoryFull.storyItem = checkExpiredStateLocal(i, j, tLRPC$StoryItem);
            TLRPC$Message tLRPC$Message2 = messageObject.messageOwner;
            messageMediaStoryFull.via_mention = tLRPC$Message2.media.via_mention;
            tLRPC$Message2.media = messageMediaStoryFull;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia2 = messageObject.messageOwner.media;
        if (tLRPC$MessageMedia2 == null || (tLRPC$WebPage = tLRPC$MessageMedia2.webpage) == null || tLRPC$WebPage.attributes == null) {
            return;
        }
        for (int i3 = 0; i3 < messageObject.messageOwner.media.webpage.attributes.size(); i3++) {
            TLRPC$WebPageAttribute tLRPC$WebPageAttribute = messageObject.messageOwner.media.webpage.attributes.get(i3);
            if ((tLRPC$WebPageAttribute instanceof TLRPC$TL_webPageAttributeStory) && ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).f1760id == tLRPC$StoryItem.f1635id) {
                tLRPC$WebPageAttribute.flags |= 1;
                ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).storyItem = checkExpiredStateLocal(i, j, tLRPC$StoryItem);
            }
        }
    }

    private static int getStoryId(MessageObject messageObject) {
        TLRPC$WebPage tLRPC$WebPage;
        int i = messageObject.type;
        if (i == 23 || i == 24) {
            return messageObject.messageOwner.media.f1625id;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
        if (tLRPC$MessageMedia != null && (tLRPC$WebPage = tLRPC$MessageMedia.webpage) != null && tLRPC$WebPage.attributes != null) {
            for (int i2 = 0; i2 < messageObject.messageOwner.media.webpage.attributes.size(); i2++) {
                TLRPC$WebPageAttribute tLRPC$WebPageAttribute = messageObject.messageOwner.media.webpage.attributes.get(i2);
                if (tLRPC$WebPageAttribute instanceof TLRPC$TL_webPageAttributeStory) {
                    return ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).f1760id;
                }
            }
        }
        return messageObject.messageOwner.reply_to.story_id;
    }

    /* renamed from: updateMessagesWithStories */
    public void lambda$fillMessagesWithStories$13(List<MessageObject> list) {
        try {
            SQLiteDatabase database = this.storage.getDatabase();
            if (list.isEmpty()) {
                return;
            }
            SQLitePreparedStatement executeFast = database.executeFast("UPDATE messages_v2 SET replydata = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement executeFast2 = database.executeFast("UPDATE messages_topics SET replydata = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement executeFast3 = database.executeFast("UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement executeFast4 = database.executeFast("UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?");
            for (int i = 0; i < list.size(); i++) {
                MessageObject messageObject = list.get(i);
                int i2 = 0;
                while (i2 < 2) {
                    if (messageObject.messageOwner.replyStory != null) {
                        SQLitePreparedStatement sQLitePreparedStatement = i2 == 0 ? executeFast : executeFast2;
                        if (sQLitePreparedStatement != null) {
                            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(messageObject.messageOwner.replyStory.getObjectSize());
                            messageObject.messageOwner.replyStory.serializeToStream(nativeByteBuffer);
                            sQLitePreparedStatement.requery();
                            sQLitePreparedStatement.bindByteBuffer(1, nativeByteBuffer);
                            sQLitePreparedStatement.bindInteger(2, messageObject.getId());
                            sQLitePreparedStatement.bindLong(3, messageObject.getDialogId());
                            sQLitePreparedStatement.step();
                        }
                    } else {
                        SQLitePreparedStatement sQLitePreparedStatement2 = i2 == 0 ? executeFast3 : executeFast4;
                        if (sQLitePreparedStatement2 != null) {
                            NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(messageObject.messageOwner.getObjectSize());
                            messageObject.messageOwner.serializeToStream(nativeByteBuffer2);
                            sQLitePreparedStatement2.requery();
                            sQLitePreparedStatement2.bindByteBuffer(1, nativeByteBuffer2);
                            sQLitePreparedStatement2.bindInteger(2, messageObject.getId());
                            sQLitePreparedStatement2.bindLong(3, messageObject.getDialogId());
                            sQLitePreparedStatement2.step();
                        }
                    }
                    i2++;
                }
            }
            executeFast.dispose();
            executeFast2.dispose();
            executeFast3.dispose();
            executeFast4.dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public static TLRPC$StoryItem checkExpiredStateLocal(int i, long j, TLRPC$StoryItem tLRPC$StoryItem) {
        if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
            return tLRPC$StoryItem;
        }
        int currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
        int i2 = tLRPC$StoryItem.expire_date;
        boolean z = true;
        if (i2 <= 0 ? currentTime - tLRPC$StoryItem.date <= 86400 : currentTime <= i2) {
            z = false;
        }
        if (tLRPC$StoryItem.pinned || !z || j == 0 || j == UserConfig.getInstance(i).clientUserId) {
            return tLRPC$StoryItem;
        }
        TLRPC$TL_storyItemDeleted tLRPC$TL_storyItemDeleted = new TLRPC$TL_storyItemDeleted();
        tLRPC$TL_storyItemDeleted.f1635id = tLRPC$StoryItem.f1635id;
        return tLRPC$TL_storyItemDeleted;
    }

    public void getMaxReadIds(final Consumer<LongSparseIntArray> consumer) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$getMaxReadIds$16(consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMaxReadIds$16(final Consumer consumer) {
        SQLiteDatabase database = this.storage.getDatabase();
        final LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
        try {
            SQLiteCursor queryFinalized = database.queryFinalized("SELECT dialog_id, max_read FROM stories_counter", new Object[0]);
            while (queryFinalized.next()) {
                longSparseIntArray.put(queryFinalized.longValue(0), queryFinalized.intValue(1));
            }
        } catch (Exception e) {
            this.storage.checkSQLException(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Consumer.this.accept(longSparseIntArray);
            }
        });
    }

    public void putPeerStories(final TLRPC$PeerStories tLRPC$PeerStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$putPeerStories$17(tLRPC$PeerStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPeerStories$17(TLRPC$PeerStories tLRPC$PeerStories) {
        putStoriesInternal(DialogObject.getPeerDialogId(tLRPC$PeerStories.peer), tLRPC$PeerStories);
    }

    public void deleteAllUserStories(final long j) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$deleteAllUserStories$18(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllUserStories$18(long j) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d", Long.valueOf(j))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }
}
