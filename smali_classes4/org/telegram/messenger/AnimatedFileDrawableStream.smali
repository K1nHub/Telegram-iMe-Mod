.class public Lorg/telegram/messenger/AnimatedFileDrawableStream;
.super Ljava/lang/Object;
.source "AnimatedFileDrawableStream.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperationStream;


# instance fields
.field private volatile canceled:Z

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private currentAccount:I

.field private debugCanceledCount:I

.field private debugReportSend:Z

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private finishedFilePath:Ljava/lang/String;

.field private finishedLoadingFile:Z

.field private lastOffset:J

.field private final loadOperation:Lorg/telegram/messenger/FileLoadOperation;

.field private loadingPriority:I

.field private location:Lorg/telegram/messenger/ImageLocation;

.field private parentObject:Ljava/lang/Object;

.field private preview:Z

.field private final sync:Ljava/lang/Object;

.field private waitingForLoad:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZI)V
    .locals 10

    move-object v9, p0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    move-object v0, p1

    .line 28
    iput-object v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, p2

    .line 29
    iput-object v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    move-object v0, p3

    .line 30
    iput-object v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    move v0, p4

    .line 31
    iput v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    move v1, p5

    .line 32
    iput-boolean v1, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    move/from16 v8, p6

    .line 33
    iput v8, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadingPriority:I

    .line 34
    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    iget-boolean v7, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method

.method private cancelLoadingInternal()V
    .locals 3

    .line 127
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    const-string v2, "mp4"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 5

    .line 109
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz p1, :cond_1

    .line 115
    iget-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez v1, :cond_1

    .line 116
    iget v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 122
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 123
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

    .line 156
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getFinishedFilePath()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public isFinishedLoadingFile()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    return v0
.end method

.method public isWaitingForLoad()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    return v0
.end method

.method public newDataAvailable()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public read(II)I
    .locals 18

    move-object/from16 v10, p0

    move/from16 v0, p1

    move/from16 v11, p2

    .line 46
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-boolean v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    .line 48
    iget v0, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugCanceledCount:I

    add-int/2addr v0, v12

    iput v0, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugCanceledCount:I

    .line 49
    iget-boolean v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugReportSend:Z

    if-nez v2, :cond_1

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 50
    iput-boolean v12, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugReportSend:Z

    .line 51
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "infinity stream reading!!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "infinity stream reading!!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    monitor-exit v1

    return v13

    .line 58
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v11, :cond_3

    return v13

    :cond_3
    const-wide/16 v14, 0x0

    move-wide v1, v14

    :goto_1
    cmp-long v3, v1, v14

    if-nez v3, :cond_b

    .line 65
    :try_start_1
    iget-object v3, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    int-to-long v6, v0

    int-to-long v4, v11

    invoke-virtual {v3, v6, v7, v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(JJ)[J

    move-result-object v3

    .line 66
    aget-wide v16, v3, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :try_start_2
    iget-boolean v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    if-nez v1, :cond_4

    aget-wide v1, v3, v12

    cmp-long v3, v1, v14

    if-eqz v3, :cond_4

    .line 68
    iput-boolean v12, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    .line 69
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    :cond_4
    cmp-long v1, v16, v14

    if-nez v1, :cond_a

    .line 72
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :try_start_3
    iget-boolean v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v2, :cond_5

    .line 74
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 75
    monitor-exit v1

    return v13

    .line 77
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isPaused()Z

    move-result v1

    if-nez v1, :cond_6

    iget-wide v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_6

    iget-boolean v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-eqz v1, :cond_7

    .line 79
    :cond_6
    iget v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v5, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    iget-boolean v8, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    iget v9, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadingPriority:I

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    .line 81
    :cond_7
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :try_start_5
    iget-boolean v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v2, :cond_8

    .line 83
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 84
    monitor-exit v1

    return v13

    .line 86
    :cond_8
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 87
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    :try_start_6
    iget-boolean v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez v1, :cond_9

    .line 89
    iget v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v13, v12}, Lorg/telegram/messenger/FileLoader;->setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 91
    :cond_9
    iput-boolean v12, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    .line 92
    iget-object v1, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 93
    iput-boolean v13, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 87
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v0

    .line 77
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_a
    :goto_2
    move-wide/from16 v1, v16

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-wide/from16 v1, v16

    goto :goto_3

    :cond_b
    int-to-long v3, v0

    add-long/2addr v3, v1

    .line 96
    :try_start_b
    iput-wide v3, v10, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 98
    :goto_3
    invoke-static {v0, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_4
    long-to-int v0, v1

    return v0

    :catchall_2
    move-exception v0

    .line 58
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
