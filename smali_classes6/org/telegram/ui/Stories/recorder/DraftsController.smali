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

.field private loading:Z


# direct methods
.method public static synthetic $r8$lambda$Dmb_jcjH9ONQa8qF0hnhPLkM8YQ(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$append$3(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXw5McnRkVib5kJoBJdwz3jGn9E(Lorg/telegram/ui/Stories/recorder/DraftsController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$load$1(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WuW9OcClD9qCCPcMcN2paGBnlW0(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$edit$2(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ha7RPJ2GCA8AhOiB7DsLxtK-SMU(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$delete$4(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdFxiOcmHaBEeqGzzspdlr9larQ(Lorg/telegram/ui/Stories/recorder/DraftsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->lambda$load$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    .line 47
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    return-void
.end method

.method private static synthetic lambda$append$3(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;J)V
    .locals 3

    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v1, "INSERT INTO story_drafts VALUES (?, ?, ?)"

    .line 217
    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 219
    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->getObjectSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 220
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v1, 0x1

    .line 221
    invoke-virtual {v0, v1, p2, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p2, 0x2

    .line 222
    iget-wide v1, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x3

    .line 223
    invoke-virtual {v0, p1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 224
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 225
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 226
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 229
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 232
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 234
    :cond_2
    throw p0
.end method

.method private static synthetic lambda$delete$4(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 2

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 277
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

    .line 279
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$edit$2(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 4

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v1, "REPLACE INTO story_drafts VALUES (?, ?, ?)"

    .line 131
    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 133
    new-instance p0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->getObjectSize()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 134
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v1, 0x1

    .line 135
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    .line 136
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x3

    .line 137
    invoke-virtual {v0, p1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 138
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 139
    invoke-virtual {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 140
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 143
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 146
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 148
    :cond_2
    throw p0
.end method

.method private synthetic lambda$load$0(Ljava/util/ArrayList;)V
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

    if-ge v5, v6, :cond_2

    .line 96
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 97
    iget-object v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v7, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    sub-long v7, v0, v7

    const-wide/32 v9, 0x240c8400

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-wide v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_1
    :goto_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    .line 106
    iput-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    .line 109
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 7

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v2, "SELECT id, data FROM story_drafts ORDER BY date DESC"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 68
    invoke-virtual {p1, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 74
    :try_start_1
    new-instance v6, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v6, v2, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 75
    iput-wide v4, v6, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    .line 76
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 80
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 84
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 87
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 91
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 89
    :cond_4
    throw p1
.end method

.method private prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 161
    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 164
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_0
    iget-object v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 167
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 168
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 174
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepareFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 175
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

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "drafts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->draftsFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public append(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 203
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 204
    iput-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 205
    new-instance v2, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 206
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;J)V

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 236
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    return-void
.end method

.method public delete(Ljava/util/ArrayList;)V
    .locals 6
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

    .line 261
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 262
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 263
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_1

    .line 265
    iget-wide v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 266
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->destroy(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 270
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 283
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

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->delete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public edit(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->prepare(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 122
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 150
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public load()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->loading:Z

    .line 59
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/DraftsController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
