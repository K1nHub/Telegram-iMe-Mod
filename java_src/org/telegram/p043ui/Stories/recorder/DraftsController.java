package org.telegram.p043ui.Stories.recorder;

import android.text.SpannableString;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputPrivacyRule;
import org.telegram.tgnet.TLRPC$MessageEntity;
/* renamed from: org.telegram.ui.Stories.recorder.DraftsController */
/* loaded from: classes6.dex */
public class DraftsController {
    public final int currentAccount;
    public final ArrayList<StoryEntry> drafts = new ArrayList<>();
    private File draftsFolder;
    private boolean loaded;
    private boolean loading;

    public DraftsController(int i) {
        this.currentAccount = i;
    }

    public void load() {
        if (this.loaded || this.loading) {
            return;
        }
        this.loading = true;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.this.lambda$load$1(messagesStorage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
        if (r1 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$load$1(org.telegram.messenger.MessagesStorage r8) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            org.telegram.SQLite.SQLiteDatabase r8 = r8.getDatabase()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            if (r8 != 0) goto Ld
            return
        Ld:
            java.lang.String r2 = "SELECT id, data FROM story_drafts ORDER BY date DESC"
            r3 = 0
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            org.telegram.SQLite.SQLiteCursor r1 = r8.queryFinalized(r2, r4)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
        L16:
            boolean r8 = r1.next()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            if (r8 == 0) goto L42
            long r4 = r1.longValue(r3)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            r8 = 1
            org.telegram.tgnet.NativeByteBuffer r2 = r1.byteBufferValue(r8)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            if (r2 == 0) goto L16
            org.telegram.ui.Stories.recorder.DraftsController$StoryDraft r6 = new org.telegram.ui.Stories.recorder.DraftsController$StoryDraft     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L3a
            r6.<init>(r2, r8)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L3a
            r6.f1883id = r4     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L3a
            r0.add(r6)     // Catch: java.lang.Exception -> L32 java.lang.Throwable -> L3a
            goto L36
        L32:
            r8 = move-exception
            org.telegram.messenger.FileLog.m67e(r8)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
        L36:
            r2.reuse()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            goto L16
        L3a:
            r8 = move-exception
            goto L4e
        L3c:
            r8 = move-exception
            org.telegram.messenger.FileLog.m67e(r8)     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L45
        L42:
            r1.dispose()
        L45:
            org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda3 r8 = new org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda3
            r8.<init>()
            org.telegram.messenger.AndroidUtilities.runOnUIThread(r8)
            return
        L4e:
            if (r1 == 0) goto L53
            r1.dispose()
        L53:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.DraftsController.lambda$load$1(org.telegram.messenger.MessagesStorage):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(ArrayList arrayList) {
        File file;
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<StoryEntry> arrayList3 = new ArrayList<>();
        for (int i = 0; i < arrayList.size(); i++) {
            StoryEntry entry = ((StoryDraft) arrayList.get(i)).toEntry();
            if (entry == null || (file = entry.file) == null || !file.exists() || currentTimeMillis - entry.draftDate > 604800000) {
                arrayList3.add(entry);
            } else {
                this.drafts.add(entry);
                arrayList2.add(Long.valueOf(entry.draftId));
            }
        }
        delete(arrayList3);
        this.loading = false;
        this.loaded = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesDraftsUpdated, new Object[0]);
    }

    public void edit(StoryEntry storyEntry) {
        if (storyEntry == null) {
            return;
        }
        prepare(storyEntry);
        this.drafts.remove(storyEntry);
        this.drafts.add(0, storyEntry);
        final StoryDraft storyDraft = new StoryDraft(storyEntry);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.lambda$edit$2(MessagesStorage.this, storyDraft);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesDraftsUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$edit$2(MessagesStorage messagesStorage, StoryDraft storyDraft) {
        SQLiteDatabase database;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                database = messagesStorage.getDatabase();
            } catch (Exception e) {
                FileLog.m67e(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            if (database == null) {
                return;
            }
            sQLitePreparedStatement = database.executeFast("REPLACE INTO story_drafts VALUES (?, ?, ?)");
            sQLitePreparedStatement.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyDraft.getObjectSize());
            storyDraft.toStream(nativeByteBuffer);
            sQLitePreparedStatement.bindLong(1, storyDraft.f1883id);
            sQLitePreparedStatement.bindLong(2, storyDraft.date);
            sQLitePreparedStatement.bindByteBuffer(3, nativeByteBuffer);
            sQLitePreparedStatement.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatement.dispose();
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    private void prepare(StoryEntry storyEntry) {
        if (storyEntry == null) {
            return;
        }
        storyEntry.draftDate = System.currentTimeMillis();
        storyEntry.isDraft = true;
        if (storyEntry.fileDeletable) {
            storyEntry.file = prepareFile(storyEntry.file);
        } else if (storyEntry.file != null) {
            File makeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, storyEntry.isVideo);
            try {
                AndroidUtilities.copyFile(storyEntry.file, makeCacheFile);
                storyEntry.file = prepareFile(makeCacheFile);
                storyEntry.fileDeletable = true;
            } catch (IOException e) {
                FileLog.m67e(e);
            }
        }
        storyEntry.filterFile = prepareFile(storyEntry.filterFile);
        storyEntry.paintFile = prepareFile(storyEntry.paintFile);
        storyEntry.draftThumbFile = prepareFile(storyEntry.draftThumbFile);
    }

    private File prepareFile(File file) {
        if (file == null) {
            return null;
        }
        if (this.draftsFolder == null) {
            File file2 = new File(FileLoader.getDirectory(4), "drafts");
            this.draftsFolder = file2;
            if (!file2.exists()) {
                this.draftsFolder.mkdir();
            }
        }
        if (!file.getAbsolutePath().startsWith(this.draftsFolder.getAbsolutePath())) {
            File file3 = new File(this.draftsFolder, file.getName());
            if (file.renameTo(file3)) {
                return file3;
            }
        }
        return file;
    }

    public void append(StoryEntry storyEntry) {
        if (storyEntry == null) {
            return;
        }
        prepare(storyEntry);
        final long nextLong = Utilities.random.nextLong();
        storyEntry.draftId = nextLong;
        final StoryDraft storyDraft = new StoryDraft(storyEntry);
        this.drafts.remove(storyEntry);
        this.drafts.add(0, storyEntry);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.lambda$append$3(MessagesStorage.this, storyDraft, nextLong);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesDraftsUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$append$3(MessagesStorage messagesStorage, StoryDraft storyDraft, long j) {
        SQLiteDatabase database;
        SQLitePreparedStatement sQLitePreparedStatement = null;
        try {
            try {
                database = messagesStorage.getDatabase();
            } catch (Exception e) {
                FileLog.m67e(e);
                if (sQLitePreparedStatement == null) {
                    return;
                }
            }
            if (database == null) {
                return;
            }
            sQLitePreparedStatement = database.executeFast("INSERT INTO story_drafts VALUES (?, ?, ?)");
            sQLitePreparedStatement.requery();
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyDraft.getObjectSize());
            storyDraft.toStream(nativeByteBuffer);
            sQLitePreparedStatement.bindLong(1, j);
            sQLitePreparedStatement.bindLong(2, storyDraft.date);
            sQLitePreparedStatement.bindByteBuffer(3, nativeByteBuffer);
            sQLitePreparedStatement.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatement.dispose();
            sQLitePreparedStatement.dispose();
        } catch (Throwable th) {
            if (sQLitePreparedStatement != null) {
                sQLitePreparedStatement.dispose();
            }
            throw th;
        }
    }

    public void delete(StoryEntry storyEntry) {
        ArrayList<StoryEntry> arrayList = new ArrayList<>(1);
        arrayList.add(storyEntry);
        delete(arrayList);
    }

    public void delete(ArrayList<StoryEntry> arrayList) {
        if (arrayList == null) {
            return;
        }
        final ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            StoryEntry storyEntry = arrayList.get(i);
            if (storyEntry != null) {
                arrayList2.add(Long.valueOf(storyEntry.draftId));
                storyEntry.destroy(true);
            }
        }
        this.drafts.removeAll(arrayList);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.DraftsController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DraftsController.lambda$delete$4(MessagesStorage.this, arrayList2);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesDraftsUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$delete$4(MessagesStorage messagesStorage, ArrayList arrayList) {
        try {
            SQLiteDatabase database = messagesStorage.getDatabase();
            if (database == null) {
                return;
            }
            database.executeFast("DELETE FROM story_drafts WHERE id IN (" + TextUtils.join(", ", arrayList) + ")").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    public void cleanup() {
        delete(this.drafts);
        this.loaded = false;
    }

    /* renamed from: org.telegram.ui.Stories.recorder.DraftsController$StoryDraft */
    /* loaded from: classes6.dex */
    public static class StoryDraft {
        public long averageDuration;
        public String caption;
        public ArrayList<TLRPC$MessageEntity> captionEntities;
        public long date;
        public long duration;
        public String file;
        public boolean fileDeletable;
        private String filterFilePath;
        private MediaController.SavedFilterState filterState;
        public int gradientBottomColor;
        public int gradientTopColor;
        public int height;

        /* renamed from: id */
        public long f1883id;
        public int invert;
        public boolean isVideo;
        public long left;
        public final float[] matrixValues;
        public ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        public boolean muted;
        public int orientation;
        public String paintFilePath;
        private final ArrayList<StoryEntry.Part> parts;
        private int period;
        public final ArrayList<TLRPC$InputPrivacyRule> privacyRules;
        public int resultHeight;
        public int resultWidth;
        public long right;
        public List<TLRPC$InputDocument> stickers;
        public String thumb;
        public int width;

        public StoryDraft(StoryEntry storyEntry) {
            float[] fArr = new float[9];
            this.matrixValues = fArr;
            ArrayList<TLRPC$InputPrivacyRule> arrayList = new ArrayList<>();
            this.privacyRules = arrayList;
            ArrayList<StoryEntry.Part> arrayList2 = new ArrayList<>();
            this.parts = arrayList2;
            this.f1883id = storyEntry.draftId;
            this.date = storyEntry.draftDate;
            File file = storyEntry.draftThumbFile;
            this.thumb = file == null ? "" : file.toString();
            this.isVideo = storyEntry.isVideo;
            File file2 = storyEntry.file;
            this.file = file2 == null ? "" : file2.toString();
            this.fileDeletable = storyEntry.fileDeletable;
            this.muted = storyEntry.muted;
            float f = storyEntry.left;
            long j = storyEntry.duration;
            this.left = f * ((float) j);
            this.right = storyEntry.right * ((float) j);
            this.orientation = storyEntry.orientation;
            this.invert = storyEntry.invert;
            this.width = storyEntry.width;
            this.height = storyEntry.height;
            this.resultWidth = storyEntry.resultWidth;
            this.resultHeight = storyEntry.resultHeight;
            this.duration = j;
            storyEntry.matrix.getValues(fArr);
            this.gradientTopColor = storyEntry.gradientTopColor;
            this.gradientBottomColor = storyEntry.gradientBottomColor;
            CharSequence charSequence = storyEntry.caption;
            this.captionEntities = MediaDataController.getInstance(storyEntry.currentAccount).getEntities(new CharSequence[]{charSequence}, true);
            this.caption = charSequence == null ? "" : charSequence.toString();
            arrayList.addAll(storyEntry.privacyRules);
            File file3 = storyEntry.paintFile;
            this.paintFilePath = file3 == null ? "" : file3.toString();
            this.averageDuration = storyEntry.averageDuration;
            this.mediaEntities = storyEntry.mediaEntities;
            this.stickers = storyEntry.stickers;
            File file4 = storyEntry.filterFile;
            this.filterFilePath = file4 != null ? file4.toString() : "";
            this.filterState = storyEntry.filterState;
            this.period = storyEntry.period;
            arrayList2.clear();
            arrayList2.addAll(storyEntry.parts);
        }

        public StoryEntry toEntry() {
            StoryEntry storyEntry = new StoryEntry();
            storyEntry.draftId = this.f1883id;
            storyEntry.isDraft = true;
            storyEntry.draftDate = this.date;
            if (this.thumb != null) {
                storyEntry.draftThumbFile = new File(this.thumb);
            }
            storyEntry.isVideo = this.isVideo;
            if (this.file != null) {
                storyEntry.file = new File(this.file);
            }
            storyEntry.fileDeletable = this.fileDeletable;
            storyEntry.muted = this.muted;
            long j = this.duration;
            storyEntry.duration = j;
            if (j > 0) {
                storyEntry.left = ((float) this.left) / ((float) j);
                storyEntry.right = ((float) this.right) / ((float) j);
            } else {
                storyEntry.left = BitmapDescriptorFactory.HUE_RED;
                storyEntry.right = 1.0f;
            }
            storyEntry.orientation = this.orientation;
            storyEntry.invert = this.invert;
            storyEntry.width = this.width;
            storyEntry.height = this.height;
            storyEntry.resultWidth = this.resultWidth;
            storyEntry.resultHeight = this.resultHeight;
            storyEntry.matrix.setValues(this.matrixValues);
            storyEntry.gradientTopColor = this.gradientTopColor;
            storyEntry.gradientBottomColor = this.gradientBottomColor;
            if (this.caption != null) {
                CharSequence replaceEmoji = Emoji.replaceEmoji(new SpannableString(this.caption), Theme.chat_msgTextPaint.getFontMetricsInt(), true);
                MessageObject.addEntitiesToText(replaceEmoji, this.captionEntities, true, false, true, false);
                storyEntry.caption = replaceEmoji;
            } else {
                storyEntry.caption = "";
            }
            storyEntry.privacyRules.clear();
            storyEntry.privacyRules.addAll(this.privacyRules);
            if (this.paintFilePath != null) {
                storyEntry.paintFile = new File(this.paintFilePath);
            }
            storyEntry.averageDuration = this.averageDuration;
            storyEntry.mediaEntities = this.mediaEntities;
            storyEntry.stickers = this.stickers;
            if (this.filterFilePath != null) {
                storyEntry.filterFile = new File(this.filterFilePath);
            }
            storyEntry.filterState = this.filterState;
            storyEntry.period = this.period;
            storyEntry.parts.clear();
            storyEntry.parts.addAll(this.parts);
            storyEntry.partsMaxId = 0;
            for (int i = 0; i < this.parts.size(); i++) {
                storyEntry.partsMaxId = Math.max(storyEntry.partsMaxId, this.parts.get(i).f1888id);
            }
            return storyEntry;
        }

        public void toStream(AbstractSerializedData abstractSerializedData) {
            abstractSerializedData.writeInt32(-1318387531);
            abstractSerializedData.writeInt64(this.date);
            abstractSerializedData.writeString(this.thumb);
            abstractSerializedData.writeBool(this.isVideo);
            abstractSerializedData.writeString(this.file);
            abstractSerializedData.writeBool(this.fileDeletable);
            abstractSerializedData.writeBool(this.muted);
            abstractSerializedData.writeInt64(this.left);
            abstractSerializedData.writeInt64(this.right);
            abstractSerializedData.writeInt32(this.orientation);
            abstractSerializedData.writeInt32(this.invert);
            abstractSerializedData.writeInt32(this.width);
            abstractSerializedData.writeInt32(this.height);
            abstractSerializedData.writeInt32(this.resultWidth);
            abstractSerializedData.writeInt32(this.resultHeight);
            abstractSerializedData.writeInt64(this.duration);
            int i = 0;
            while (true) {
                float[] fArr = this.matrixValues;
                if (i >= fArr.length) {
                    break;
                }
                abstractSerializedData.writeFloat(fArr[i]);
                i++;
            }
            abstractSerializedData.writeInt32(this.gradientTopColor);
            abstractSerializedData.writeInt32(this.gradientBottomColor);
            abstractSerializedData.writeString(this.caption);
            abstractSerializedData.writeInt32(481674261);
            ArrayList<TLRPC$MessageEntity> arrayList = this.captionEntities;
            abstractSerializedData.writeInt32(arrayList == null ? 0 : arrayList.size());
            if (this.captionEntities != null) {
                for (int i2 = 0; i2 < this.captionEntities.size(); i2++) {
                    this.captionEntities.get(i2).serializeToStream(abstractSerializedData);
                }
            }
            abstractSerializedData.writeInt32(481674261);
            ArrayList<TLRPC$InputPrivacyRule> arrayList2 = this.privacyRules;
            abstractSerializedData.writeInt32(arrayList2 == null ? 0 : arrayList2.size());
            if (this.privacyRules != null) {
                for (int i3 = 0; i3 < this.privacyRules.size(); i3++) {
                    this.privacyRules.get(i3).serializeToStream(abstractSerializedData);
                }
            }
            abstractSerializedData.writeBool(false);
            abstractSerializedData.writeString(this.paintFilePath);
            abstractSerializedData.writeInt64(this.averageDuration);
            abstractSerializedData.writeInt32(481674261);
            ArrayList<VideoEditedInfo.MediaEntity> arrayList3 = this.mediaEntities;
            abstractSerializedData.writeInt32(arrayList3 == null ? 0 : arrayList3.size());
            if (this.mediaEntities != null) {
                for (int i4 = 0; i4 < this.mediaEntities.size(); i4++) {
                    this.mediaEntities.get(i4).serializeTo(abstractSerializedData, true);
                }
            }
            abstractSerializedData.writeInt32(481674261);
            List<TLRPC$InputDocument> list = this.stickers;
            abstractSerializedData.writeInt32(list == null ? 0 : list.size());
            if (this.stickers != null) {
                for (int i5 = 0; i5 < this.stickers.size(); i5++) {
                    this.stickers.get(i5).serializeToStream(abstractSerializedData);
                }
            }
            String str = this.filterFilePath;
            if (str == null) {
                str = "";
            }
            abstractSerializedData.writeString(str);
            if (this.filterState == null) {
                abstractSerializedData.writeInt32(1450380236);
            } else {
                abstractSerializedData.writeInt32(-1318387530);
                this.filterState.serializeToStream(abstractSerializedData);
            }
            abstractSerializedData.writeInt32(this.period);
            abstractSerializedData.writeInt32(481674261);
            abstractSerializedData.writeInt32(this.parts.size());
            for (int i6 = 0; i6 < this.parts.size(); i6++) {
                this.parts.get(i6).serializeToStream(abstractSerializedData);
            }
        }

        public int getObjectSize() {
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(true);
            toStream(nativeByteBuffer);
            return nativeByteBuffer.length();
        }

        public StoryDraft(AbstractSerializedData abstractSerializedData, boolean z) {
            this.matrixValues = new float[9];
            this.privacyRules = new ArrayList<>();
            this.parts = new ArrayList<>();
            if (abstractSerializedData.readInt32(z) != -1318387531) {
                if (z) {
                    throw new RuntimeException("StoryDraft parse error");
                }
                return;
            }
            this.date = abstractSerializedData.readInt64(z);
            String readString = abstractSerializedData.readString(z);
            this.thumb = readString;
            if (readString != null && readString.length() == 0) {
                this.thumb = null;
            }
            this.isVideo = abstractSerializedData.readBool(z);
            String readString2 = abstractSerializedData.readString(z);
            this.file = readString2;
            if (readString2 != null && readString2.length() == 0) {
                this.file = null;
            }
            this.fileDeletable = abstractSerializedData.readBool(z);
            this.muted = abstractSerializedData.readBool(z);
            this.left = abstractSerializedData.readInt64(z);
            this.right = abstractSerializedData.readInt64(z);
            this.orientation = abstractSerializedData.readInt32(z);
            this.invert = abstractSerializedData.readInt32(z);
            this.width = abstractSerializedData.readInt32(z);
            this.height = abstractSerializedData.readInt32(z);
            this.resultWidth = abstractSerializedData.readInt32(z);
            this.resultHeight = abstractSerializedData.readInt32(z);
            this.duration = abstractSerializedData.readInt64(z);
            int i = 0;
            while (true) {
                float[] fArr = this.matrixValues;
                if (i >= fArr.length) {
                    break;
                }
                fArr[i] = abstractSerializedData.readFloat(z);
                i++;
            }
            this.gradientTopColor = abstractSerializedData.readInt32(z);
            this.gradientBottomColor = abstractSerializedData.readInt32(z);
            String readString3 = abstractSerializedData.readString(z);
            this.caption = readString3;
            if (readString3 != null && readString3.length() == 0) {
                this.caption = null;
            }
            if (abstractSerializedData.readInt32(z) != 481674261) {
                if (z) {
                    throw new RuntimeException("Vector magic in StoryDraft parse error (1)");
                }
                return;
            }
            int readInt32 = abstractSerializedData.readInt32(z);
            for (int i2 = 0; i2 < readInt32; i2++) {
                if (this.captionEntities == null) {
                    this.captionEntities = new ArrayList<>();
                }
                this.captionEntities.add(TLRPC$MessageEntity.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z));
            }
            if (abstractSerializedData.readInt32(z) != 481674261) {
                if (z) {
                    throw new RuntimeException("Vector magic in StoryDraft parse error (2)");
                }
                return;
            }
            int readInt322 = abstractSerializedData.readInt32(z);
            this.privacyRules.clear();
            for (int i3 = 0; i3 < readInt322; i3++) {
                this.privacyRules.add(TLRPC$InputPrivacyRule.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z));
            }
            abstractSerializedData.readBool(z);
            String readString4 = abstractSerializedData.readString(z);
            this.paintFilePath = readString4;
            if (readString4 != null && readString4.length() == 0) {
                this.paintFilePath = null;
            }
            this.averageDuration = abstractSerializedData.readInt64(z);
            if (abstractSerializedData.readInt32(z) != 481674261) {
                if (z) {
                    throw new RuntimeException("Vector magic in StoryDraft parse error (3)");
                }
                return;
            }
            int readInt323 = abstractSerializedData.readInt32(z);
            for (int i4 = 0; i4 < readInt323; i4++) {
                if (this.mediaEntities == null) {
                    this.mediaEntities = new ArrayList<>();
                }
                this.mediaEntities.add(new VideoEditedInfo.MediaEntity(abstractSerializedData, true));
            }
            if (abstractSerializedData.readInt32(z) != 481674261) {
                if (z) {
                    throw new RuntimeException("Vector magic in StoryDraft parse error (4)");
                }
                return;
            }
            int readInt324 = abstractSerializedData.readInt32(z);
            for (int i5 = 0; i5 < readInt324; i5++) {
                if (this.stickers == null) {
                    this.stickers = new ArrayList();
                }
                this.stickers.add(TLRPC$InputDocument.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(z), z));
            }
            String readString5 = abstractSerializedData.readString(z);
            this.filterFilePath = readString5;
            if (readString5 != null && readString5.length() == 0) {
                this.filterFilePath = null;
            }
            int readInt325 = abstractSerializedData.readInt32(z);
            if (readInt325 == 1450380236) {
                this.filterState = null;
            } else if (readInt325 == -1318387530) {
                MediaController.SavedFilterState savedFilterState = new MediaController.SavedFilterState();
                this.filterState = savedFilterState;
                savedFilterState.readParams(abstractSerializedData, z);
            }
            if (abstractSerializedData.remaining() >= 4) {
                this.period = abstractSerializedData.readInt32(z);
            }
            if (abstractSerializedData.remaining() > 0) {
                if (abstractSerializedData.readInt32(z) != 481674261) {
                    if (z) {
                        throw new RuntimeException("Vector magic in StoryDraft parse error (5)");
                    }
                    return;
                }
                int readInt326 = abstractSerializedData.readInt32(z);
                this.parts.clear();
                for (int i6 = 0; i6 < readInt326; i6++) {
                    StoryEntry.Part part = new StoryEntry.Part();
                    part.readParams(abstractSerializedData, z);
                    this.parts.add(part);
                }
            }
        }
    }
}
