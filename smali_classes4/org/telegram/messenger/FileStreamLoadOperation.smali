.class public Lorg/telegram/messenger/FileStreamLoadOperation;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "FileStreamLoadOperation.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperationStream;


# static fields
.field private static final priorityMap:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileStreamLoadOperation;->priorityMap:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/telegram/messenger/FileStreamLoadOperation;-><init>()V

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_0
    return-void
.end method

.method private getCurrentPriority()I
    .locals 3

    .line 113
    sget-object v0, Lorg/telegram/messenger/FileStreamLoadOperation;->priorityMap:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public static getStreamPrioriy(Lorg/telegram/tgnet/TLRPC$Document;)I
    .locals 4

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    .line 64
    :cond_0
    sget-object v1, Lorg/telegram/messenger/FileStreamLoadOperation;->priorityMap:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 3

    if-eqz p0, :cond_0

    .line 226
    sget-object v0, Lorg/telegram/messenger/FileStreamLoadOperation;->priorityMap:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/FileLoadOperation;->removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 202
    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    .line 204
    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    .line 205
    iget-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 212
    iput-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_3
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public newDataAvailable()V
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 220
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

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentAccount:I

    .line 76
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

    .line 77
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 78
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "hash"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 79
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

    .line 80
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

    .line 81
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

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "reference"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 84
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 85
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
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

    invoke-direct {p0}, Lorg/telegram/messenger/FileStreamLoadOperation;->getCurrentPriority()I

    move-result v9

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    .line 93
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

    .line 97
    iput-boolean v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 99
    iget-object p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getCurrentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 103
    :try_start_0
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;

    const-string/jumbo v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    .line 104
    iget-wide v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    :cond_3
    iget-wide v0, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    return-wide v0

    .line 95
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

    .line 124
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

    :catchall_0
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 133
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_b

    .line 134
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    iget-wide v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    int-to-long v4, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(JJ)[J

    move-result-object v1

    aget-wide v2, v1, v0

    long-to-int v1, v2

    if-nez v1, :cond_7

    .line 136
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 137
    iget v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->parentObject:Ljava/lang/Object;

    iget-wide v8, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    const/4 v10, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/FileStreamLoadOperation;->getCurrentPriority()I

    move-result v11

    move-object v4, p0

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eq v3, v2, :cond_6

    .line 139
    invoke-virtual {v3, p0}, Lorg/telegram/messenger/FileLoadOperation;->removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V

    .line 140
    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    .line 142
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_7

    .line 143
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v2, 0x0

    .line 144
    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 147
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoadOperation;->getCurrentFileFast()Ljava/io/File;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 149
    :cond_8
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_9

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check stream file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 152
    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_a

    .line 154
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :catch_0
    :cond_a
    :try_start_2
    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_3

    .line 162
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentFile:Ljava/io/File;

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->file:Ljava/io/RandomAccessFile;

    .line 163
    iget-wide v3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 170
    :cond_b
    :try_start_4
    iget-boolean p3, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->opened:Z

    if-nez p3, :cond_c

    return v0

    .line 173
    :cond_c
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_d

    .line 175
    iget-wide p2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->currentOffset:J

    .line 176
    iget-wide p2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/telegram/messenger/FileStreamLoadOperation;->bytesRemaining:J

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_d
    return p1

    :catch_1
    move-exception p1

    .line 180
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
