.class public Lorg/telegram/ui/Stories/recorder/DraftsController;
.super Ljava/lang/Object;
.source "DraftsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;
    }
.end annotation


# instance fields
.field public final currentAccount:I

.field public final drafts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private draftsFolder:Ljava/io/File;

.field private loaded:Z

.field private loadedFailed:Z

.field private loading:Z

.field private loadingFailed:Z


# direct methods
.method public static synthetic $r8$lambda$-_pdOcfzzvhbO25jSuQ7HgY_XY0(Lorg/telegram/ui/Stories/recorder/DraftsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$load$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BBZuBhSIo4DmrKDDJbtKbh3gnAg(Lorg/telegram/ui/Stories/recorder/DraftsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$loadFailed$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaE3H6qCsCFYX0UAc_onOmnqxSk(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$loadInternal$1(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmqqHGuA1T2YH88GYtbQj3Pb6es(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$delete$6(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZnP14nmLgTPx0KHDXmXLh0PjHg(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$loadInternal$0(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ty3GMAvz82EWPf0DWqbFtfEkDhY(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$append$5(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzhRhUcPqWCVJcgX735MpaKwmGg(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$edit$4(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    .line 41
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadFailed()V

    return-void
.end method

.method private append(Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 7

    .line 268
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryDraft append "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (edit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", storyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "documentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photoId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expireDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 304
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$append$5(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 5

    const/4 v0, 0x0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v1, "INSERT INTO story_drafts VALUES (?, ?, ?, ?)"

    .line 278
    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 280
    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->getObjectSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 281
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 282
    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 283
    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 284
    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v1, 0x0

    .line 286
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    if-eqz p1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 p1, 0x4

    .line 291
    invoke-virtual {v0, p1, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 292
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 293
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 294
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 297
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 300
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 302
    :cond_4
    throw p0
.end method

.method private static synthetic lambda$delete$6(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 2

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM story_drafts WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 431
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$edit$4(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 5

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v1, "REPLACE INTO story_drafts VALUES (?, ?, ?, ?)"

    .line 179
    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 181
    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->getObjectSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 182
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 183
    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 184
    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 185
    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v1, 0x0

    .line 187
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    if-eqz p1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 p1, 0x4

    .line 192
    invoke-virtual {v0, p1, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 193
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 194
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 195
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 198
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 201
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    return-void

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 203
    :cond_4
    throw p0
.end method

.method private synthetic lambda$load$2(Ljava/util/ArrayList;)V
    .locals 11

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 96
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    iget-object v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v7, :cond_3

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v7, :cond_1

    iget-wide v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    cmp-long v7, v0, v7

    if-lez v7, :cond_2

    goto :goto_1

    :cond_1
    iget-wide v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    sub-long v7, v0, v7

    const-wide/32 v9, 0x240c8400

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-wide v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    .line 116
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    .line 119
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadFailed$3(Ljava/util/ArrayList;)V
    .locals 12

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 136
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    iget-object v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v8, :cond_2

    .line 142
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-wide v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    sub-long v8, v0, v8

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-wide v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    .line 153
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadingFailed:Z

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadedFailed:Z

    .line 156
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/StoriesController;->putUploadingDrafts(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$loadInternal$0(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V
    .locals 0

    .line 80
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$loadInternal$1(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT id, data, type FROM story_drafts WHERE type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "2"

    goto :goto_0

    :cond_1
    const-string p1, "0 OR type = 1"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ORDER BY date DESC"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 59
    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide p0

    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 63
    :try_start_1
    new-instance v5, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v5, v4, v3}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 64
    iput-wide p0, v5, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    .line 65
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 67
    :try_start_2
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 69
    :goto_2
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 73
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 76
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 80
    :cond_4
    new-instance p0, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 78
    :cond_5
    throw p0
.end method

.method private loadFailed()V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadedFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadingFailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadingFailed:Z

    .line 130
    new-instance v1, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadInternal(ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadInternal(ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/MessagesStorage;ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 215
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 218
    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v1, :cond_2

    .line 219
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 221
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    .line 223
    :try_start_0
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 224
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 225
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 230
    :cond_3
    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 231
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 232
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    return-void
.end method

.method private prepareFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "drafts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public append(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 260
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 261
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 264
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->append(Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 440
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    return-void
.end method

.method public delete(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 410
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 411
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_3

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StoryDraft delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " (edit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", storyId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "documentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photoId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    :goto_1
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", expireDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 414
    iget-wide v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 415
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 418
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 421
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 422
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 435
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 170
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 205
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public getForEdit(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 367
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 368
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_1

    iget v3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    if-ne v3, v4, :cond_1

    iget-wide v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 369
    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v6, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_0

    .line 372
    :cond_2
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 375
    iput-boolean p1, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    return-object v2

    :cond_4
    return-object v0
.end method

.method public load()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    const/4 v0, 0x0

    .line 91
    new-instance v1, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->loadInternal(ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveForEdit(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 5

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 333
    iget-object v0, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 337
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 339
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iget v4, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v3, v4, :cond_1

    .line 340
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    .line 345
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 346
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 347
    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 348
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const/4 v1, 0x1

    .line 349
    iput-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    .line 350
    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    .line 351
    iget p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput p2, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    .line 352
    iget p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    int-to-long p2, p2

    const-wide/16 v1, 0x3e8

    mul-long/2addr p2, v1

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    .line 353
    iget-object p2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_3

    .line 354
    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    goto :goto_1

    .line 355
    :cond_3
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p2, :cond_4

    .line 356
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    .line 358
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 359
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->append(Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    :cond_5
    :goto_2
    return-void
.end method
