.class public Lorg/telegram/messenger/AnimatedFileDrawableStream;
.super Ljava/lang/Object;
.source "AnimatedFileDrawableStream.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperationStream;


# instance fields
.field private volatile canceled:Z

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private currentAccount:I

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private finishedFilePath:Ljava/lang/String;

.field private finishedLoadingFile:Z

.field private lastOffset:J

.field private final loadOperation:Lorg/telegram/messenger/FileLoadOperation;

.field private location:Lorg/telegram/messenger/ImageLocation;

.field private parentObject:Ljava/lang/Object;

.field private preview:Z

.field private final sync:Ljava/lang/Object;

.field private waitingForLoad:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZ)V
    .locals 9

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 25
    iput-object p2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    .line 26
    iput-object p3, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    .line 27
    iput p4, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    .line 28
    iput-boolean p5, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    .line 29
    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v5, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZ)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 4

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz p1, :cond_0

    .line 93
    iget-boolean p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez p1, :cond_0

    .line 94
    iget p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 97
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getFinishedFilePath()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public isFinishedLoadingFile()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    return v0
.end method

.method public isWaitingForLoad()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    return v0
.end method

.method public newDataAvailable()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public read(II)I
    .locals 17

    move-object/from16 v9, p0

    move/from16 v0, p1

    move/from16 v10, p2

    .line 41
    iget-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-boolean v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 43
    monitor-exit v1

    return v11

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_1

    return v11

    :cond_1
    const-wide/16 v12, 0x0

    move-wide v1, v12

    :goto_0
    cmp-long v3, v1, v12

    if-nez v3, :cond_8

    .line 52
    :try_start_1
    iget-object v3, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    int-to-long v6, v0

    int-to-long v4, v10

    invoke-virtual {v3, v6, v7, v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(JJ)[J

    move-result-object v3

    .line 53
    aget-wide v14, v3, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :try_start_2
    iget-boolean v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    const/4 v8, 0x1

    if-nez v1, :cond_2

    aget-wide v1, v3, v8

    cmp-long v3, v1, v12

    if-eqz v3, :cond_2

    .line 55
    iput-boolean v8, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    .line 56
    iget-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    :cond_2
    cmp-long v1, v14, v12

    if-nez v1, :cond_7

    .line 59
    iget-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isPaused()Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_4

    iget-boolean v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    goto :goto_2

    .line 60
    :cond_4
    :goto_1
    iget v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v5, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    iget-boolean v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    move/from16 v16, v2

    move-object/from16 v2, p0

    const/4 v12, 0x1

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZ)Lorg/telegram/messenger/FileLoadOperation;

    .line 62
    :goto_2
    iget-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :try_start_3
    iget-boolean v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v2, :cond_5

    .line 64
    iget v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 65
    monitor-exit v1

    return v11

    .line 67
    :cond_5
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :try_start_4
    iget-boolean v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez v1, :cond_6

    .line 70
    iget v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v11, v12}, Lorg/telegram/messenger/FileLoader;->setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 72
    :cond_6
    iput-boolean v12, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    .line 73
    iget-object v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 74
    iput-boolean v11, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 68
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_3
    move-wide v1, v14

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-wide v1, v14

    goto :goto_4

    :cond_8
    int-to-long v3, v0

    add-long/2addr v3, v1

    .line 77
    :try_start_7
    iput-wide v3, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 79
    :goto_4
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_5
    long-to-int v0, v1

    return v0

    :catchall_1
    move-exception v0

    .line 45
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 103
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
