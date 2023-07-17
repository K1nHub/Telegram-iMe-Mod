.class public Lorg/telegram/messenger/FileStreamLoadOperation;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "FileStreamLoadOperation.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperationStream;


# instance fields
.field private bytesRemaining:J

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private currentAccount:I

.field currentFile:Ljava/io/File;

.field private currentOffset:J

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private file:Ljava/io/RandomAccessFile;

.field private loadOperation:Lorg/telegram/messenger/FileLoadOperation;

.field private opened:Z

.field private parentObject:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/FileStreamLoadOperation;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/FileLoadOperation;->removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    .line 148
    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    .line 149
    iget-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 153
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_3
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public newDataAvailable()V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v1, "account"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentAccount:I

    .line 59
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "rid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getParentObject(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->parentObject:Ljava/lang/Object;

    .line 60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 61
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "hash"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "dc"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "reference"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 67
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 68
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->parentObject:Ljava/lang/Object;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v6, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    const/4 v8, 0x0

    const/4 v9, 0x3

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    .line 76
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    :cond_2
    iput-wide v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 82
    iget-object p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_3

    .line 83
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    .line 84
    iget-wide v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    :cond_3
    iget-wide v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    return-wide v0

    .line 78
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 93
    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    long-to-int p3, v1

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 101
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-eqz v2, :cond_5

    .line 102
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    iget-wide v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    int-to-long v4, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(JJ)[J

    move-result-object v1

    aget-wide v2, v1, v0

    long-to-int v1, v2

    if-nez v1, :cond_3

    .line 104
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 105
    iget v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->parentObject:Ljava/lang/Object;

    iget-wide v8, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v4, p0

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eq v3, v2, :cond_4

    .line 107
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/FileLoadOperation;->removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V

    .line 108
    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    .line 110
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 116
    :cond_5
    iget-boolean p3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-nez p3, :cond_6

    return v0

    .line 119
    :cond_6
    iget-object p3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 120
    iget-wide p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    .line 121
    iget-wide p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    .line 122
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
