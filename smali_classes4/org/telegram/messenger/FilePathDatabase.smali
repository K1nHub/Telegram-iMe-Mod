.class public Lorg/telegram/messenger/FilePathDatabase;
.super Ljava/lang/Object;
.source "FilePathDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FilePathDatabase$FileMeta;,
        Lorg/telegram/messenger/FilePathDatabase$PathData;
    }
.end annotation


# static fields
.field private static final DATABASE_BACKUP_NAME:Ljava/lang/String; = "file_to_path_backup"

.field private static final DATABASE_NAME:Ljava/lang/String; = "file_to_path"

.field private static final LAST_DB_VERSION:I = 0x4

.field public static final MESSAGE_TYPE_VIDEO_MESSAGE:I


# instance fields
.field private cacheFile:Ljava/io/File;

.field private final currentAccount:I

.field private database:Lorg/telegram/SQLite/SQLiteDatabase;

.field databaseCreated:Z

.field private dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

.field private shmCacheFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$3lKd2MCkmbQWqbIjGHy9epkRDyo(Lorg/telegram/messenger/FilePathDatabase;JII[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FilePathDatabase;->lambda$getPath$0(JII[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SoFU1XnRZK9fiEK1ru-EIUgNZgg(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$lookupFiles$7(Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQQzCFjrSfmed4rfailslXBJzI4(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->lambda$checkMediaExistance$2(Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VV3AG0oJQ-efMUK4jk-VZWVlIpA(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FilePathDatabase;->lambda$hasAnotherRefOnFile$4(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCwFZkggbMxaGKk-td0xFgTwxkI(Lorg/telegram/messenger/FilePathDatabase;JIILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FilePathDatabase;->lambda$putPath$1(JIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d74Gf1JUut1nt-F4bRFcwDPY2L8(Lorg/telegram/messenger/FilePathDatabase;Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->lambda$saveFileDialogId$5(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8LvfTEDzB8EH_r3r_ziT4x9lfw(Lorg/telegram/messenger/FilePathDatabase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->lambda$clear$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$v0wxxSyChflqYhW5JSOLrjkb_q8(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->lambda$removeFiles$6(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {v0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 38
    iput p1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    return-void
.end method

.method private createBackup()V
    .locals 4

    .line 118
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 119
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 123
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path_backup.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file db backup created "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private ensureQueueExist()V
    .locals 3

    .line 468
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_1

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files_database_queue_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 473
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkMediaExistance$2(Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    const/4 v0, 0x0

    move v1, v0

    .line 286
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 287
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 288
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 291
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 293
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 294
    throw p1
.end method

.method private synthetic lambda$clear$3()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 316
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "DELETE FROM paths WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "DELETE FROM paths_by_dialog_id WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getPath$0(JII[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 162
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 166
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT path FROM paths WHERE document_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND dc_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v3

    .line 169
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get file path id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " dc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p5, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 179
    :cond_1
    throw p1

    .line 181
    :cond_2
    :goto_1
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$hasAnotherRefOnFile$4(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT document_id FROM paths WHERE path = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 332
    aput-boolean p1, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 335
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 338
    throw p1
.end method

.method private synthetic lambda$lookupFiles$7(Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V
    .locals 7

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 436
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {v0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    const/4 v1, 0x0

    .line 437
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 438
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    iget-object v2, v2, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->file:Ljava/io/File;

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    iget-wide v3, v2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 440
    invoke-virtual {p2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 443
    iget-wide v4, v2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    invoke-virtual {p2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 445
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 449
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 452
    throw p1
.end method

.method private synthetic lambda$putPath$1(JIILjava/lang/String;)V
    .locals 5

    .line 236
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put file path id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 240
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    :try_start_0
    const-string v2, "DELETE FROM paths WHERE path = ?"

    .line 247
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 248
    :try_start_1
    invoke-virtual {v0, v2, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 251
    iget-object v3, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v4, "REPLACE INTO paths VALUES(?, ?, ?, ?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 253
    invoke-virtual {v1, v2, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 254
    invoke-virtual {v1, p1, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x3

    .line 255
    invoke-virtual {v1, p1, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x4

    .line 256
    invoke-virtual {v1, p1, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 258
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v1, v0

    goto :goto_1

    .line 260
    :cond_2
    :try_start_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM paths WHERE document_id = "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND dc_id = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND type = "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_2
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v1

    :goto_0
    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    if-eqz p1, :cond_5

    .line 269
    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v1

    .line 263
    :goto_1
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_4
    if-eqz p2, :cond_5

    .line 269
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_6

    .line 266
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_6
    if-eqz p2, :cond_7

    .line 269
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 271
    :cond_7
    throw p1
.end method

.method private synthetic lambda$removeFiles$6(Ljava/util/List;)V
    .locals 4

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 418
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM paths_by_dialog_id WHERE path = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v3, v3, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 423
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 426
    throw p1
.end method

.method private synthetic lambda$saveFileDialogId$5(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    const/4 v0, 0x0

    .line 357
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v2, "REPLACE INTO paths_by_dialog_id VALUES(?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 360
    iget-wide v1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x3

    .line 361
    iget v1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 p1, 0x4

    .line 362
    iget p2, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    invoke-virtual {v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 363
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 365
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_0
    return-void

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 370
    :cond_1
    throw p1
.end method

.method private migrateDatabase(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 101
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 102
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v1, "PRAGMA user_version = 2"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move p1, v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER);"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 107
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "PRAGMA user_version = 3"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    move p1, v1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 111
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "ALTER TABLE paths_by_dialog_id ADD COLUMN message_id INTEGER default 0"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 112
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "ALTER TABLE paths_by_dialog_id ADD COLUMN message_type INTEGER default 0"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 113
    iget-object p1, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v0, "PRAGMA user_version = 4"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 463
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureQueueExist()V

    .line 464
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreBackup()Z
    .locals 4

    .line 133
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 134
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 138
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path_backup.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 143
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2
.end method

.method private shield(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\'"

    const-string v1, ""

    .line 406
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkMediaExistance(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 283
    new-instance v4, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v4}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 298
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 303
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMediaExistance size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " time="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 305
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_1

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 307
    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo v0, "warning, not allowed in main thread"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 313
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FilePathDatabase;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createDatabase(IZ)V
    .locals 5

    .line 42
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    .line 43
    iget v1, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/FilePathDatabase;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .line 47
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "file_to_path.db-shm"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/FilePathDatabase;->shmCacheFile:Ljava/io/File;

    .line 52
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    .line 56
    :try_start_0
    new-instance v3, Lorg/telegram/SQLite/SQLiteDatabase;

    iget-object v4, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v4, "PRAGMA secure_delete = ON"

    .line 57
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 58
    iget-object v3, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v4, "PRAGMA temp_store = MEMORY"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "CREATE TABLE paths(document_id INTEGER, dc_id INTEGER, type INTEGER, path TEXT, PRIMARY KEY(document_id, dc_id, type));"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER, message_id INTEGER, message_type INTEGER);"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "PRAGMA user_version = 4"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const-string v3, "PRAGMA user_version"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current files db version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_4

    .line 75
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->migrateDatabase(I)V

    :goto_0
    if-nez p2, :cond_3

    .line 79
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->createBackup()V

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "files db created from_backup= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "malformed"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v3, 0x4

    if-ge p1, v3, :cond_6

    if-nez p2, :cond_5

    .line 84
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->restoreBackup()Z

    move-result p2

    if-eqz p2, :cond_5

    add-int/2addr p1, v1

    .line 85
    invoke-virtual {p0, p1, v1}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    return-void

    .line 88
    :cond_5
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->cacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 89
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->shmCacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    add-int/2addr p1, v1

    .line 90
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    .line 93
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_7

    .line 94
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public ensureDatabaseCreated()V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lorg/telegram/messenger/FilePathDatabase;->databaseCreated:Z

    if-nez v0, :cond_2

    .line 215
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    .line 217
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x3e8

    .line 219
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 221
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/2addr v0, v1

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    .line 229
    :cond_1
    invoke-virtual {p0, v2, v2}, Lorg/telegram/messenger/FilePathDatabase;->createDatabase(IZ)V

    .line 230
    iput-boolean v1, p0, Lorg/telegram/messenger/FilePathDatabase;->databaseCreated:Z

    :cond_2
    return-void
.end method

.method public getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 379
    iget-object p2, p0, Lorg/telegram/messenger/FilePathDatabase;->metaTmp:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 386
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT dialog_id, message_id, message_type FROM paths_by_dialog_id WHERE path = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilePathDatabase;->shield(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v1

    const/4 p1, 0x1

    .line 389
    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    .line 390
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v3

    move v3, p1

    move p1, v7

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    move p1, v3

    .line 396
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v4

    move p1, v3

    .line 393
    :goto_1
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    move v7, v3

    move v3, p1

    move p1, v7

    .line 399
    :goto_2
    iput-wide v1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    .line 400
    iput v3, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    .line 401
    iput p1, p2, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    return-object p2

    :goto_3
    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 398
    :cond_4
    throw p1
.end method

.method public getPath(JIIZ)Ljava/lang/String;
    .locals 15

    move-object v9, p0

    move-wide/from16 v3, p1

    move/from16 v0, p3

    move/from16 v6, p4

    const/4 v10, 0x0

    if-eqz p5, :cond_2

    .line 152
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, v9, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, v9, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error, lead to infinity loop"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v12, v1, [Ljava/lang/String;

    .line 161
    new-instance v13, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda2;

    move-object v1, v13

    move-object v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v12

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FilePathDatabase;JII[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v13}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 184
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    aget-object v0, v12, v10

    return-object v0

    .line 189
    :cond_2
    iget-object v1, v9, Lorg/telegram/messenger/FilePathDatabase;->database:Lorg/telegram/SQLite/SQLiteDatabase;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    .line 195
    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT path FROM paths WHERE document_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " AND dc_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " AND type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1
    :try_end_1
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :try_start_2
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 197
    invoke-virtual {v1, v10}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v5, :cond_4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get file path id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " dc="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v14, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v14

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 203
    :goto_1
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 206
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 208
    :cond_6
    throw v0
.end method

.method public getQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .line 410
    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase;->ensureQueueExist()V

    .line 411
    iget-object v0, p0, Lorg/telegram/messenger/FilePathDatabase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public hasAnotherRefOnFile(Ljava/lang/String;)Z
    .locals 4

    .line 325
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 327
    new-instance v3, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v3}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 342
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 346
    :goto_0
    aget-boolean p1, v1, v2

    return p1
.end method

.method public lookupFiles(Ljava/util/ArrayList;)Landroid/util/LongSparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;",
            ">;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 432
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 433
    new-instance v2, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/ArrayList;Landroid/util/LongSparseArray;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    .line 455
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 457
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public putPath(JIILjava/lang/String;)V
    .locals 8

    .line 235
    new-instance v7, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FilePathDatabase;JIILjava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Storage/CacheModel$FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 415
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/FilePathDatabase$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FilePathDatabase;Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FilePathDatabase;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
