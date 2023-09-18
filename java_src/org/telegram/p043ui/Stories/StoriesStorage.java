package org.telegram.p043ui.Stories;

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
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
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
import org.telegram.tgnet.TLRPC$TL_userStories;
import org.telegram.tgnet.TLRPC$TL_webPageAttributeStory;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$WebPageAttribute;
/* renamed from: org.telegram.ui.Stories.StoriesStorage */
/* loaded from: classes7.dex */
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
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$getAllStories$3(final com.google.android.exoplayer2.util.Consumer r20) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesStorage.lambda$getAllStories$3(com.google.android.exoplayer2.util.Consumer):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getAllStories$1(TLRPC$TL_userStories tLRPC$TL_userStories) {
        ArrayList<TLRPC$StoryItem> arrayList = tLRPC$TL_userStories.stories;
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
                arrayList3.add(Integer.valueOf(tLRPC$StoryItem.f1557id));
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
                FileLog.m67e(e);
            }
        }
    }

    public void putStoriesInternal(long j, TLRPC$TL_userStories tLRPC$TL_userStories) {
        SQLiteDatabase database = this.storage.getDatabase();
        if (tLRPC$TL_userStories != null) {
            try {
                ArrayList<TLRPC$StoryItem> arrayList = tLRPC$TL_userStories.stories;
                SQLitePreparedStatement executeFast = database.executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?, ?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    executeFast.requery();
                    TLRPC$StoryItem tLRPC$StoryItem = arrayList.get(i);
                    if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                        SQLiteCursor queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$StoryItem.f1557id)), new Object[0]);
                        if (queryFinalized.next()) {
                            tLRPC$StoryItem.attachPath = queryFinalized.stringValue(1);
                            tLRPC$StoryItem.firstFramePath = queryFinalized.stringValue(2);
                        }
                        queryFinalized.dispose();
                    }
                    if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                        FileLog.m69e("try write deleted story");
                    } else {
                        executeFast.bindLong(1, j);
                        executeFast.bindLong(2, tLRPC$StoryItem.f1557id);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
                        tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
                        executeFast.bindByteBuffer(3, nativeByteBuffer);
                        String str = tLRPC$StoryItem.attachPath;
                        if (str == null) {
                            executeFast.bindNull(4);
                        } else {
                            executeFast.bindString(4, str);
                        }
                        String str2 = tLRPC$StoryItem.firstFramePath;
                        if (str2 == null) {
                            executeFast.bindNull(5);
                        } else {
                            executeFast.bindString(5, str2);
                        }
                        NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
                        if (writeLocalParams != null) {
                            executeFast.bindByteBuffer(6, writeLocalParams);
                        } else {
                            executeFast.bindNull(6);
                        }
                        if (writeLocalParams != null) {
                            writeLocalParams.reuse();
                        }
                        executeFast.step();
                        nativeByteBuffer.reuse();
                    }
                }
                executeFast.dispose();
                database.executeFast(String.format(Locale.US, "REPLACE INTO stories_counter VALUES(%d, %d, %d)", Long.valueOf(j), 0, Integer.valueOf(tLRPC$TL_userStories.max_read_id))).stepThis().dispose();
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        }
    }

    public void putStoryInternal(long j, TLRPC$StoryItem tLRPC$StoryItem) {
        SQLiteDatabase database = this.storage.getDatabase();
        try {
            SQLitePreparedStatement executeFast = database.executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?, ?, ?)");
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                SQLiteCursor queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$StoryItem.f1557id)), new Object[0]);
                if (queryFinalized.next()) {
                    tLRPC$StoryItem.attachPath = queryFinalized.stringValue(1);
                    tLRPC$StoryItem.firstFramePath = queryFinalized.stringValue(2);
                }
                queryFinalized.dispose();
            }
            if (tLRPC$StoryItem instanceof TLRPC$TL_storyItemDeleted) {
                FileLog.m69e("putStoryInternal: try write deleted story");
                return;
            }
            executeFast.bindLong(1, j);
            executeFast.bindLong(2, tLRPC$StoryItem.f1557id);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
            tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            String str = tLRPC$StoryItem.attachPath;
            if (str == null) {
                executeFast.bindNull(4);
            } else {
                executeFast.bindString(4, str);
            }
            String str2 = tLRPC$StoryItem.firstFramePath;
            if (str2 == null) {
                executeFast.bindNull(5);
            } else {
                executeFast.bindString(5, str2);
            }
            NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
            if (writeLocalParams != null) {
                executeFast.bindByteBuffer(6, writeLocalParams);
            } else {
                executeFast.bindNull(6);
            }
            if (writeLocalParams != null) {
                writeLocalParams.reuse();
            }
            executeFast.step();
            nativeByteBuffer.reuse();
            executeFast.dispose();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    public void saveAllStories(final ArrayList<TLRPC$TL_userStories> arrayList, final boolean z, final boolean z2, final Runnable runnable) {
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
            TLRPC$TL_userStories tLRPC$TL_userStories = (TLRPC$TL_userStories) arrayList.get(i);
            fillSkippedStories(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
        }
        if (!z) {
            try {
                SQLiteCursor queryFinalized = database.queryFinalized("SELECT DISTINCT dialog_id FROM stories", new Object[0]);
                ArrayList arrayList2 = new ArrayList();
                while (queryFinalized.next()) {
                    long longValue = queryFinalized.longValue(0);
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(longValue));
                    if (user == null) {
                        user = MessagesStorage.getInstance(this.currentAccount).getUser(longValue);
                    }
                    if (user == null || (user.stories_hidden == z2 && !arrayList2.contains(Long.valueOf(longValue)))) {
                        arrayList2.add(Long.valueOf(longValue));
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m70d("StoriesStorage delete dialogs " + TextUtils.join(",", arrayList2));
                }
                database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id IN(%s)", TextUtils.join(",", arrayList2))).stepThis().dispose();
            } catch (Throwable th) {
                this.storage.checkSQLException(th);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$TL_userStories tLRPC$TL_userStories2 = (TLRPC$TL_userStories) arrayList.get(i2);
            putStoriesInternal(tLRPC$TL_userStories2.user_id, tLRPC$TL_userStories2);
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    private void fillSkippedStories(long j, TLRPC$TL_userStories tLRPC$TL_userStories) {
        if (tLRPC$TL_userStories != null) {
            try {
                ArrayList<TLRPC$StoryItem> arrayList = tLRPC$TL_userStories.stories;
                for (int i = 0; i < arrayList.size(); i++) {
                    if (arrayList.get(i) instanceof TLRPC$TL_storyItemSkipped) {
                        TLRPC$StoryItem storyInternal = getStoryInternal(j, arrayList.get(i).f1557id);
                        if (storyInternal instanceof TLRPC$TL_storyItem) {
                            arrayList.set(i, storyInternal);
                        }
                    }
                }
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        }
    }

    private TLRPC$StoryItem getStoryInternal(long j, int i) {
        TLRPC$StoryItem tLRPC$StoryItem = null;
        try {
            SQLiteCursor queryFinalized = this.storage.getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, local_path, local_thumb_path, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(i)), new Object[0]);
            if (queryFinalized.next()) {
                NativeByteBuffer byteBufferValue = queryFinalized.byteBufferValue(0);
                String stringValue = queryFinalized.stringValue(1);
                String stringValue2 = queryFinalized.stringValue(2);
                NativeByteBuffer byteBufferValue2 = queryFinalized.byteBufferValue(3);
                if (byteBufferValue != null) {
                    tLRPC$StoryItem = TLRPC$StoryItem.TLdeserialize(byteBufferValue, byteBufferValue.readInt32(true), true);
                    tLRPC$StoryItem.dialogId = j;
                    tLRPC$StoryItem.attachPath = stringValue;
                    tLRPC$StoryItem.firstFramePath = stringValue2;
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
            FileLog.m67e(e);
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
            FileLog.m69e("StoriesStorage: try write deleted story");
        }
        if (StoriesUtilities.isExpired(this.currentAccount, tLRPC$StoryItem)) {
            FileLog.m69e("StoriesStorage: try write expired story");
        }
        SQLiteDatabase database = this.storage.getDatabase();
        try {
            String str = tLRPC$StoryItem.attachPath;
            String str2 = tLRPC$StoryItem.firstFramePath;
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                SQLiteCursor queryFinalized = database.queryFinalized(String.format(Locale.US, "SELECT local_path, local_thumb_path FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(tLRPC$StoryItem.f1557id)), new Object[0]);
                if (queryFinalized.next()) {
                    str = queryFinalized.stringValue(1);
                    str2 = queryFinalized.stringValue(2);
                }
                queryFinalized.dispose();
            }
            SQLitePreparedStatement executeFast = database.executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?, ?, ?)");
            executeFast.requery();
            executeFast.bindLong(1, j);
            executeFast.bindLong(2, tLRPC$StoryItem.f1557id);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLRPC$StoryItem.getObjectSize());
            tLRPC$StoryItem.serializeToStream(nativeByteBuffer);
            executeFast.bindByteBuffer(3, nativeByteBuffer);
            if (str == null) {
                executeFast.bindNull(4);
            } else {
                executeFast.bindString(4, str);
            }
            if (str2 == null) {
                executeFast.bindNull(5);
            } else {
                executeFast.bindString(5, str2);
            }
            NativeByteBuffer writeLocalParams = StoryCustomParamsHelper.writeLocalParams(tLRPC$StoryItem);
            if (writeLocalParams != null) {
                executeFast.bindByteBuffer(6, writeLocalParams);
            } else {
                executeFast.bindNull(6);
            }
            if (writeLocalParams != null) {
                writeLocalParams.reuse();
            }
            executeFast.step();
            nativeByteBuffer.reuse();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    public void updateMaxReadId(final long j, final int i) {
        TLRPC$TL_userStories tLRPC$TL_userStories;
        TLRPC$UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
        if (userFull != null && (tLRPC$TL_userStories = userFull.stories) != null) {
            tLRPC$TL_userStories.max_read_id = i;
            this.storage.updateUserInfo(userFull, false);
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
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$processUpdate$9(tLRPC$TL_updateStory);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d4 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:3:0x0006, B:5:0x0013, B:7:0x0035, B:9:0x0048, B:11:0x005c, B:14:0x0062, B:23:0x00b7, B:25:0x00d4, B:27:0x00da, B:17:0x0088, B:19:0x008c), top: B:32:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$processUpdate$9(org.telegram.tgnet.TLRPC$TL_updateStory r14) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.StoriesStorage.lambda$processUpdate$9(org.telegram.tgnet.TLRPC$TL_updateStory):void");
    }

    public void updateStories(final TLRPC$TL_userStories tLRPC$TL_userStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$updateStories$10(tLRPC$TL_userStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStories$10(TLRPC$TL_userStories tLRPC$TL_userStories) {
        for (int i = 0; i < tLRPC$TL_userStories.stories.size(); i++) {
            lambda$updateStoryItem$7(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories.stories.get(i));
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
                tLRPC$TL_stories_getStoriesByID.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(keyAt2);
                for (int i5 = 0; i5 < valueAt2.size(); i5++) {
                    tLRPC$TL_stories_getStoriesByID.f1665id.add(Integer.valueOf(getStoryId(valueAt2.get(i5))));
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
                    } else if (tLRPC$TL_stories_stories.stories.get(i2).f1557id == getStoryId(messageObject)) {
                        applyStory(this.currentAccount, j, messageObject, tLRPC$TL_stories_stories.stories.get(i2));
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    TLRPC$TL_storyItemDeleted tLRPC$TL_storyItemDeleted = new TLRPC$TL_storyItemDeleted();
                    tLRPC$TL_storyItemDeleted.f1557id = getStoryId(messageObject);
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
        if ((tLRPC$MessageReplyHeader instanceof TLRPC$TL_messageReplyStoryHeader) && tLRPC$MessageReplyHeader.story_id == tLRPC$StoryItem.f1557id) {
            tLRPC$Message.replyStory = checkExpiredStateLocal(i, j, tLRPC$StoryItem);
        }
        int i2 = messageObject.type;
        if (i2 == 23 || i2 == 24) {
            MessageMediaStoryFull messageMediaStoryFull = new MessageMediaStoryFull();
            TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
            messageMediaStoryFull.user_id = tLRPC$MessageMedia.user_id;
            messageMediaStoryFull.f1547id = tLRPC$MessageMedia.f1547id;
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
            if ((tLRPC$WebPageAttribute instanceof TLRPC$TL_webPageAttributeStory) && ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).f1683id == tLRPC$StoryItem.f1557id) {
                tLRPC$WebPageAttribute.flags |= 1;
                ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).storyItem = checkExpiredStateLocal(i, j, tLRPC$StoryItem);
            }
        }
    }

    private static int getStoryId(MessageObject messageObject) {
        TLRPC$WebPage tLRPC$WebPage;
        int i = messageObject.type;
        if (i == 23 || i == 24) {
            return messageObject.messageOwner.media.f1547id;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
        if (tLRPC$MessageMedia != null && (tLRPC$WebPage = tLRPC$MessageMedia.webpage) != null && tLRPC$WebPage.attributes != null) {
            for (int i2 = 0; i2 < messageObject.messageOwner.media.webpage.attributes.size(); i2++) {
                TLRPC$WebPageAttribute tLRPC$WebPageAttribute = messageObject.messageOwner.media.webpage.attributes.get(i2);
                if (tLRPC$WebPageAttribute instanceof TLRPC$TL_webPageAttributeStory) {
                    return ((TLRPC$TL_webPageAttributeStory) tLRPC$WebPageAttribute).f1683id;
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
        tLRPC$TL_storyItemDeleted.f1557id = tLRPC$StoryItem.f1557id;
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

    public void putUserStories(final TLRPC$TL_userStories tLRPC$TL_userStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                StoriesStorage.this.lambda$putUserStories$17(tLRPC$TL_userStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putUserStories$17(TLRPC$TL_userStories tLRPC$TL_userStories) {
        putStoriesInternal(tLRPC$TL_userStories.user_id, tLRPC$TL_userStories);
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
