.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$PreloadRange;,
        Lorg/telegram/messenger/FileLoadOperation$Range;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field public static volatile filesQueue:Lorg/telegram/messenger/DispatchQueue; = null

.field private static final lockObject:Ljava/lang/Object;

.field private static final preloadMaxBytes:I = 0x200000

.field private static final stateCanceled:I = 0x4

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private allowDisordererFileSave:Z

.field private bigFileSizeFrom:I

.field private bytesCountPadding:J

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileGzipTemp:Ljava/io/File;

.field private cacheFileParts:Ljava/io/File;

.field private cacheFilePreload:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private cdnCheckBytes:[B

.field private cdnChunkCheckSize:I

.field private cdnDatacenterId:I

.field private cdnHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_fileHash;",
            ">;"
        }
    .end annotation
.end field

.field private cdnIv:[B

.field private cdnKey:[B

.field private cdnToken:[B

.field private currentAccount:I

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private currentType:I

.field private datacenterId:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadChunkSize:I

.field private downloadChunkSizeAnimation:I

.field private downloadChunkSizeBig:I

.field private downloadedBytes:J

.field private encryptFile:Z

.field private encryptIv:[B

.field private encryptKey:[B

.field private ext:Ljava/lang/String;

.field private fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

.field private fileName:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private filePartsStream:Ljava/io/RandomAccessFile;

.field private fileReadStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private forceSmallChunk:Z

.field private foundMoovSize:J

.field private initialDatacenterId:I

.field private isCdn:Z

.field private isForceRequest:Z

.field private isPreloadVideoOperation:Z

.field private isStream:Z

.field private iv:[B

.field private key:[B

.field protected lastProgressUpdateTime:J

.field protected location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private maxCdnParts:I

.field private maxDownloadRequests:I

.field private maxDownloadRequestsAnimation:I

.field private maxDownloadRequestsBig:I

.field private moovFound:I

.field private nextAtomOffset:J

.field private nextPartWasPreloaded:Z

.field private nextPreloadDownloadOffset:J

.field private notCheckedCdnRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private notLoadedBytesRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private volatile notLoadedBytesRangesCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field private notRequestedBytesRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;"
        }
    .end annotation
.end field

.field public parentObject:Ljava/lang/Object;

.field public pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

.field private volatile paused:Z

.field private preloadFinished:Z

.field private preloadNotRequestedBytesCount:J

.field private preloadStream:Ljava/io/RandomAccessFile;

.field private preloadStreamFileOffset:I

.field private preloadTempBuffer:[B

.field private preloadTempBufferCount:I

.field private preloadedBytesRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/messenger/FileLoadOperation$PreloadRange;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field private priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

.field private priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestedBytesCount:J

.field private requestedPreloadedBytesRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestingCdnOffsets:Z

.field protected requestingReference:Z

.field private requestsCount:I

.field private reuploadingCdn:Z

.field private startTime:J

.field private started:Z

.field private volatile state:I

.field private storeFileName:Ljava/lang/String;

.field private storePath:Ljava/io/File;

.field stream:Lorg/telegram/messenger/FileLoadOperationStream;

.field private streamListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperationStream;",
            ">;"
        }
    .end annotation
.end field

.field streamOffset:J

.field streamPriority:Z

.field private streamPriorityStartOffset:J

.field private streamStartOffset:J

.field private supportsPreloading:Z

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:J

.field private totalPreloadedBytes:I

.field totalTime:J

.field private ungzip:Z

.field private webFile:Lorg/telegram/messenger/WebFile;

.field private webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;


# direct methods
.method public static synthetic $r8$lambda$-Lc8G4zL98_2LUyXZC47B5XSkdw(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFail$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1b9pV-lP9hG3jYnXAkOO9fUbtwE(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$1t2QKN0Al9OU_2HjYFYPO3T_BjU(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$17(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2mjoFen-MksdDHICaACSx8uqV1c(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$removePart$0(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3tEn3b6VxA7DatT5RMN9Mx3-S0A(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getDownloadedLengthFromOffset$3([JJJLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5C2QkzHLOq0qKO7VkEDw-EI7K9k(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$15(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PcNiNFnarOL71me9y34xjSvl3g(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$removeStreamListener$4(Lorg/telegram/messenger/FileLoadOperationStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9rKfEtypyL_Ve_rfsoApPuHEzy4(Lorg/telegram/messenger/FileLoadOperation;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$6([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLynIq_nSnH-HVbFQFdqpPcjXKs(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$cancel$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DKdrKE4_BMGh1w-iP4B1gbK3fx8(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$setIsPreloadVideoOperation$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Egc0hvsUlFK7ewyQyXgWNWGsh_Q(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$12(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SjU6IpjtCyjZnd0BLxJzFqxJBEk(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$addPart$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tl6KV3lPYOfDpQnCBUb6f8ZOudQ(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$16(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4wg2ty0y2l6nRuHv3igITmwEOc(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$requestFileOffsets$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9QI8E-iDDTUmcXi_VZlcyhJPW4(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1DYy5f2vt69IzinmmXxiCsstuc(Lorg/telegram/messenger/FileLoadOperation;ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$5(ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKbzVHmWH4wYVdGN-IjO7kDQ39U(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getCurrentFile$2([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OC4QSNBfiMPxVT6FElFGExwypM(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$11(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "writeFileQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/WebFile;)V
    .locals 6

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 86
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v0, 0x20000

    .line 87
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 88
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v1, 0x4

    .line 89
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 90
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v2, 0xa00000

    .line 91
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v2, v0

    const-wide/32 v4, 0x7d000000

    .line 92
    div-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 95
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 96
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 117
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 309
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 310
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 311
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    .line 312
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    .line 313
    iget v0, p2, Lorg/telegram/messenger/WebFile;->size:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 314
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->webFileDatacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 315
    iget-object p1, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    .line 317
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3000000

    .line 319
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x2000000

    .line 321
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x4000000

    .line 323
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    :goto_0
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 326
    iget-object p2, p2, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 7

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 86
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v0, 0x20000

    .line 87
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 88
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v1, 0x4

    .line 89
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 90
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v2, 0xa00000

    .line 91
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v2, v0

    const-wide/32 v4, 0x7d000000

    .line 92
    div-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 95
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 96
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 117
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 224
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 225
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 226
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 227
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    .line 228
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 229
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 230
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 231
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 232
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 233
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    const/16 p2, 0x20

    new-array p2, p2, [B

    .line 234
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 235
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->iv:[B

    array-length v3, p2

    invoke-static {v1, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto/16 :goto_3

    .line 237
    :cond_1
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_3

    .line 238
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;-><init>()V

    .line 239
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 240
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 241
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 242
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    .line 243
    iget v1, p1, Lorg/telegram/messenger/ImageLocation;->photoPeerType:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    .line 244
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 245
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 246
    :cond_3
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p2, :cond_4

    .line 247
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;-><init>()V

    .line 248
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 249
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 250
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 251
    iget v1, p1, Lorg/telegram/messenger/ImageLocation;->thumbVersion:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->thumb_version:I

    .line 252
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 253
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 254
    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 255
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    .line 256
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 257
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 258
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v4, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 259
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 260
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 261
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 262
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 263
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne p2, v1, :cond_6

    .line 264
    iput-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    goto :goto_2

    .line 267
    :cond_5
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 268
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->documentId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 269
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 270
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 271
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 272
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 273
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 275
    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v1, :cond_9

    new-array v1, v0, [B

    .line 276
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    goto :goto_3

    .line 279
    :cond_7
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 280
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 281
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 282
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 283
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v1, :cond_8

    new-array v1, v0, [B

    .line 285
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 287
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 289
    :cond_9
    :goto_3
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq p2, v2, :cond_a

    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 290
    iget p1, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/high16 p1, 0x1000000

    .line 291
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 292
    iput-wide p4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    if-eqz p3, :cond_c

    goto :goto_4

    :cond_c
    const-string p3, "jpg"

    .line 293
    :goto_4
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SecureDocument;)V
    .locals 6

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 86
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v0, 0x20000

    .line 87
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 88
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v1, 0x4

    .line 89
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 90
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v2, 0xa00000

    .line 91
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v2, v0

    const-wide/32 v4, 0x7d000000

    .line 92
    div-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 95
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 96
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 117
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 297
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 298
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 299
    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 300
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 301
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 302
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->size:J

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const/high16 p1, 0x4000000

    .line 304
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const-string p1, ".jpg"

    .line 305
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 11

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 86
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v0, 0x20000

    .line 87
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 88
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v1, 0x4

    .line 89
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 90
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v2, 0xa00000

    .line 91
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v2, v0

    const-wide/32 v4, 0x7d000000

    .line 92
    div-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 95
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 96
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 117
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 330
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    const/4 v1, 0x1

    .line 332
    :try_start_0
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 333
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 334
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz p2, :cond_0

    .line 335
    :try_start_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 336
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 337
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 338
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/16 p2, 0x20

    new-array p2, p2, [B

    .line 339
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 340
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    array-length v4, p2

    invoke-static {v3, v0, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto :goto_1

    .line 342
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz p2, :cond_3

    .line 343
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 344
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 345
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 346
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 347
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    if-nez v3, :cond_1

    new-array v3, v0, [B

    .line 349
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 351
    :cond_1
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 352
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 353
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_3

    .line 354
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_2

    .line 355
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p2, "application/x-tgsticker"

    .line 360
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "application/x-tgwallpattern"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 361
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 362
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz p2, :cond_6

    const-wide/16 v5, 0x10

    .line 364
    rem-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long p2, v7, v9

    if-eqz p2, :cond_6

    .line 365
    rem-long v7, v3, v5

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    add-long/2addr v3, v5

    .line 366
    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 369
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/16 v3, 0x2e

    .line 371
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    goto :goto_4

    .line 374
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_5

    .line 372
    :cond_8
    :goto_4
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :goto_5
    const-string p2, "audio/ogg"

    .line 376
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/high16 p2, 0x3000000

    .line 377
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    .line 378
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->isVideoMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x2000000

    .line 379
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    :cond_a
    const/high16 p2, 0x4000000

    .line 381
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 383
    :goto_6
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v1, :cond_b

    .line 384
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 387
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 388
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :cond_b
    :goto_7
    return-void
.end method

.method private addPart(Ljava/util/ArrayList;JJZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    if-eqz v1, :cond_7

    cmp-long v2, v10, v8

    if-gez v2, :cond_0

    goto/16 :goto_3

    .line 488
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v3, v2, :cond_5

    .line 491
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 492
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-gtz v6, :cond_2

    .line 493
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-ltz v6, :cond_1

    .line 494
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 497
    :cond_1
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-lez v6, :cond_4

    .line 498
    invoke-static {v14, v10, v11}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-gez v6, :cond_3

    .line 504
    new-instance v15, Lorg/telegram/messenger/FileLoadOperation$Range;

    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v3

    const/4 v7, 0x0

    move-object v2, v15

    move-wide/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    .line 505
    invoke-virtual {v1, v12, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    invoke-static {v14, v10, v11}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    :goto_1
    const/4 v12, 0x1

    goto :goto_2

    .line 509
    :cond_3
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-gez v6, :cond_4

    .line 510
    invoke-static {v14, v8, v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz p6, :cond_7

    if-eqz v12, :cond_6

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    sget-object v1, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    goto :goto_3

    .line 546
    :cond_6
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " downloaded duplicate file part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private cleanup()V
    .locals 4

    const/4 v0, 0x0

    .line 1205
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 1207
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1209
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1211
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1212
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1215
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1218
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_1

    .line 1220
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 1222
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1224
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1225
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1228
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1231
    :cond_1
    :goto_3
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v1, :cond_2

    .line 1233
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 1235
    :try_start_8
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1237
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1238
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 1241
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1244
    :cond_2
    :goto_5
    :try_start_9
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 1245
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1247
    :try_start_a
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    .line 1249
    :try_start_b
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1251
    :goto_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1252
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 1253
    monitor-exit p0

    goto :goto_8

    :goto_7
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    move-exception v1

    .line 1256
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1260
    :cond_3
    :goto_8
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_4

    .line 1261
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1262
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 1265
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1267
    :cond_4
    :goto_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1268
    :goto_a
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1269
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1270
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1271
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1272
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_b

    .line 1273
    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1274
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1275
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_b

    .line 1276
    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1277
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1278
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_7
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1281
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method private clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V
    .locals 13

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 1831
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1832
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1833
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1834
    iget-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v5, :cond_0

    .line 1835
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1837
    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v9

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v11, v7

    add-long/2addr v11, v5

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    :goto_1
    if-ne p1, v4, :cond_1

    goto :goto_2

    .line 1842
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1843
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1846
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1847
    :goto_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 1848
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1849
    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v4, :cond_4

    .line 1850
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1852
    :cond_4
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v8

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v10, v6

    add-long/2addr v10, v4

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 1854
    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1855
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    iput-boolean v0, v4, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1856
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_5

    .line 1857
    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1858
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    iput-boolean v0, v4, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1859
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_5

    .line 1860
    :cond_6
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1861
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    iput-boolean v0, v4, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1862
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    .line 1864
    :cond_7
    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1866
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1867
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    if-nez p2, :cond_9

    .line 1868
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz p1, :cond_9

    .line 1869
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_6

    .line 1870
    :cond_9
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    .line 1871
    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    :cond_a
    :goto_6
    return-void
.end method

.method private copyNotLoadedRanges()V
    .locals 2

    .line 660
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 663
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    return-void
.end method

.method private delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 2

    .line 1433
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1435
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    goto :goto_0

    .line 1436
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1437
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    goto :goto_0

    .line 1438
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1439
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1444
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    move-wide/from16 v3, p1

    .line 1446
    :cond_0
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/16 v6, 0x10

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/16 v5, 0x10

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    int-to-long v8, v5

    sub-long v8, p3, v8

    const-wide/16 v10, 0x0

    cmp-long v5, v3, v8

    if-ltz v5, :cond_a

    int-to-long v8, v2

    add-long v8, p3, v8

    cmp-long v5, v3, v8

    if-ltz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v12, 0x10

    sub-long v12, v8, v12

    const-string v5, "!!!"

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v3, v12

    if-ltz v16, :cond_4

    sub-long v2, v8, v3

    cmp-long v4, v2, v14

    if-gtz v4, :cond_3

    long-to-int v3, v2

    .line 1454
    iput v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    .line 1455
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    long-to-int v3, v2

    .line 1457
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1458
    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    invoke-virtual {v1, v2, v7, v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    return-wide v8

    .line 1452
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1461
    :cond_4
    iget v12, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    if-eqz v12, :cond_5

    .line 1462
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1463
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v12, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    rsub-int/lit8 v13, v12, 0x10

    invoke-virtual {v1, v5, v12, v13, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1464
    iput v7, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    goto :goto_1

    :cond_5
    sub-long v12, v3, p3

    cmp-long v16, v12, v14

    if-gtz v16, :cond_9

    long-to-int v5, v12

    .line 1470
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1471
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    invoke-virtual {v1, v5, v7, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1473
    :goto_1
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/4 v12, 0x1

    aget-byte v13, v5, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    add-int/2addr v7, v13

    const/4 v13, 0x2

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v7, v13

    const/4 v13, 0x3

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v7, v13

    if-nez v7, :cond_6

    return-wide v10

    :cond_6
    if-ne v7, v12, :cond_7

    const/16 v7, 0xc

    .line 1478
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/16 v10, 0xd

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v6, v10, 0x10

    add-int/2addr v7, v6

    const/16 v6, 0xe

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v7, v6

    const/16 v6, 0xf

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v7, v6

    :cond_7
    const/4 v6, 0x4

    .line 1480
    aget-byte v6, v5, v6

    const/16 v10, 0x6d

    if-ne v6, v10, :cond_8

    const/4 v6, 0x5

    aget-byte v6, v5, v6

    const/16 v10, 0x6f

    if-ne v6, v10, :cond_8

    const/4 v6, 0x6

    aget-byte v6, v5, v6

    if-ne v6, v10, :cond_8

    const/4 v6, 0x7

    aget-byte v5, v5, v6

    const/16 v6, 0x76

    if-ne v5, v6, :cond_8

    neg-int v1, v7

    int-to-long v1, v1

    return-wide v1

    :cond_8
    int-to-long v5, v7

    add-long/2addr v3, v5

    cmp-long v5, v3, v8

    if-ltz v5, :cond_0

    return-wide v3

    .line 1468
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    return-wide v10
.end method

.method private getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)J"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_7

    .line 586
    iget v7, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v7, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 596
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_4

    .line 601
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 602
    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    cmp-long v12, p2, v10

    if-gtz v12, :cond_2

    if-eqz v7, :cond_1

    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_2

    :cond_1
    move-object v7, v9

    .line 605
    :cond_2
    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    cmp-long v12, v10, p2

    if-gtz v12, :cond_3

    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v9

    cmp-long v11, v9, p2

    if-lez v11, :cond_3

    move-wide v8, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-wide v8, v2

    :goto_1
    cmp-long v1, v8, v5

    if-nez v1, :cond_5

    return-wide v5

    :cond_5
    if-eqz v7, :cond_6

    .line 613
    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    sub-long v4, v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1

    .line 615
    :cond_6
    iget-wide v7, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    sub-long v7, v7, p2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1

    .line 587
    :cond_7
    :goto_2
    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v1, v4, :cond_8

    return-wide v2

    .line 590
    :cond_8
    iget-wide v7, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_9

    return-wide v5

    :cond_9
    sub-long v7, v7, p2

    .line 593
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private synthetic lambda$addPart$1(Ljava/util/ArrayList;)V
    .locals 8

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_0

    .line 524
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    .line 526
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 527
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 528
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 530
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 531
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 532
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 536
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 537
    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    goto :goto_1

    .line 539
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 542
    :goto_1
    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    return-void
.end method

.method private synthetic lambda$cancel$8(Z)V
    .locals 5

    .line 1142
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1143
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1144
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1145
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1146
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1147
    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    invoke-virtual {v4, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :cond_2
    if-eqz p1, :cond_7

    .line 1154
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 1156
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1157
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1160
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1163
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 1165
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1166
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1169
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1172
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 1174
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1175
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1178
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1181
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz p1, :cond_6

    .line 1183
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1184
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 1187
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1190
    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    if-eqz p1, :cond_7

    .line 1192
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1193
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 1196
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private synthetic lambda$getCurrentFile$2([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 570
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 571
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    aput-object v0, p1, v1

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    aput-object v0, p1, v1

    .line 575
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$getDownloadedLengthFromOffset$3([JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 6

    .line 632
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide p2

    const/4 p4, 0x0

    aput-wide p2, p1, p4

    .line 633
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    const-wide/16 p3, 0x1

    .line 634
    aput-wide p3, p1, p2

    .line 636
    :cond_0
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$onFail$14(I)V
    .locals 1

    .line 1822
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$10()V
    .locals 1

    const/4 v0, 0x0

    .line 1398
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$11(Z)V
    .locals 5

    .line 1404
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished downloading file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 1408
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v0, 0x3000000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1409
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_2

    .line 1411
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ne p1, v0, :cond_3

    .line 1413
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_6

    .line 1415
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1416
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    .line 1418
    :cond_5
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 1422
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, v0}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$12(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1313
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1316
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz p3, :cond_2

    .line 1319
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p4, :cond_d

    .line 1323
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 1325
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1326
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    const/high16 v1, 0x200000

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->copyFile(Ljava/io/InputStream;Ljava/io/File;I)Z

    .line 1327
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1328
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1329
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1330
    :try_start_1
    iput-boolean p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-object p4, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, p4

    .line 1334
    :goto_0
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    xor-int/2addr v1, p2

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1335
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to ungzip temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " to final = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object p4, p1

    goto :goto_3

    .line 1332
    :catch_1
    :goto_2
    iput-boolean p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 1340
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-nez p1, :cond_c

    .line 1342
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz p1, :cond_5

    .line 1344
    :try_start_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p4, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception p1

    .line 1347
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1351
    :cond_5
    :try_start_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_8

    .line 1352
    sget-object p1, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1353
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    const/4 v0, 0x1

    .line 1355
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1356
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1361
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    :goto_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1366
    :cond_7
    monitor-exit p1

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    .line 1368
    :cond_8
    :goto_6
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 1371
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    if-nez p3, :cond_b

    .line 1375
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_9

    .line 1376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to rename temp = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to final = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " retry = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1378
    :cond_9
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    const/4 p3, 0x3

    if-ge p1, p3, :cond_a

    .line 1380
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1381
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void

    .line 1390
    :cond_a
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_8

    .line 1392
    :cond_b
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1393
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V

    goto :goto_8

    .line 1397
    :cond_c
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1403
    :cond_d
    :goto_8
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$9(Z)V
    .locals 0

    .line 1383
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 1385
    invoke-virtual {p0, p1, p1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$removePart$0(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I
    .locals 5

    .line 460
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 462
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeStreamListener$4(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$requestFileOffsets$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1500
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_3

    .line 1502
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1503
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1504
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1505
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_1

    .line 1506
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_1
    const/4 p2, 0x0

    .line 1508
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1509
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1510
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1513
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 1514
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1515
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1516
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1517
    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1518
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1519
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1520
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_3

    .line 1521
    :cond_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1522
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1523
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_3

    .line 1524
    :cond_6
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1525
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1526
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$setIsPreloadVideoOperation$7(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1115
    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1116
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 1117
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    .line 1118
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method private synthetic lambda$start$5(ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V
    .locals 9

    .line 693
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 697
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, p1

    div-long/2addr p2, v1

    int-to-long v1, p1

    mul-long p2, p2, v1

    .line 698
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-eqz p1, :cond_3

    .line 699
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 700
    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, p1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 701
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v7, p1

    add-long/2addr v7, v1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 702
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 703
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 704
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 706
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    .line 707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame get cancel request at offset "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 709
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 711
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-nez p1, :cond_5

    .line 712
    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    goto :goto_0

    .line 715
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, p1

    div-long/2addr p2, v1

    int-to-long v1, p1

    mul-long p2, p2, v1

    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 717
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_7

    .line 719
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    const-wide/16 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_6

    .line 720
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 721
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    .line 724
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    const/4 p1, 0x0

    .line 725
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$start$6([Z)V
    .locals 6

    .line 1063
    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget-boolean p1, p1, v3

    if-nez p1, :cond_1

    :cond_0
    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_2

    .line 1065
    :cond_1
    :try_start_0
    invoke-direct {p0, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 1067
    invoke-virtual {p0, p1, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_0

    .line 1070
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$15(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2026
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    .line 2027
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    return-void
.end method

.method private synthetic lambda$startDownloadRequest$16(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    .line 2112
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez p3, :cond_2

    .line 2114
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2115
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2116
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 2117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    .line 2119
    :cond_0
    :goto_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 2120
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2121
    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2124
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto :goto_2

    .line 2126
    :cond_2
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FILE_TOKEN_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "REQUEST_TOKEN_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 2131
    :cond_3
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2

    .line 2127
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2128
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2129
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    :goto_2
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$17(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2052
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2055
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-ne p1, v0, :cond_2

    .line 2056
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame get request completed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 2059
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    :cond_2
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 2062
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2063
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void

    .line 2065
    :cond_3
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    if-eqz p2, :cond_4

    .line 2066
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FILE_TOKEN_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2067
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2068
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2069
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void

    .line 2074
    :cond_4
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    const/4 v1, 0x1

    if-eqz p2, :cond_a

    .line 2075
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    .line 2076
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 2077
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_5

    .line 2078
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_5
    const/4 p2, 0x0

    .line 2080
    :goto_0
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_6

    .line 2081
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2082
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v3, p4, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2085
    :cond_6
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    if-eqz p2, :cond_9

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    if-eqz p4, :cond_9

    array-length p2, p2

    const/16 v2, 0x10

    if-ne p2, v2, :cond_9

    array-length p2, p4

    const/16 p4, 0x20

    if-eq p2, p4, :cond_7

    goto :goto_1

    .line 2091
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2092
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    if-nez p2, :cond_8

    .line 2093
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    .line 2094
    new-instance p4, Lorg/telegram/messenger/FileLoadOperation$Range;

    const-wide/16 v2, 0x0

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    :cond_8
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    .line 2097
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    .line 2098
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    .line 2099
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_File;->file_token:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    .line 2100
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2101
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_4

    .line 2086
    :cond_9
    :goto_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p3, "bad redirect response"

    .line 2087
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 p3, 0x190

    .line 2088
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 2089
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    goto/16 :goto_4

    .line 2103
    :cond_a
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    if-eqz p2, :cond_b

    .line 2104
    iget-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez p2, :cond_15

    .line 2105
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2106
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    .line 2107
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    .line 2108
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;-><init>()V

    .line 2109
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->file_token:[B

    .line 2110
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->request_token:[B

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->request_token:[B

    .line 2111
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    goto/16 :goto_4

    .line 2137
    :cond_b
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    if-eqz p2, :cond_c

    .line 2138
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$402(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    goto :goto_2

    .line 2139
    :cond_c
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    if-eqz p2, :cond_d

    .line 2140
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$502(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    .line 2141
    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_e

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    if-eqz p2, :cond_e

    .line 2142
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    int-to-long v0, p2

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    goto :goto_2

    .line 2145
    :cond_d
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$602(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    :cond_e
    :goto_2
    if-eqz p3, :cond_14

    .line 2148
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v0, 0x3000000

    const/4 v1, 0x4

    if-ne p2, v0, :cond_f

    .line 2149
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget v0, p3, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x3

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v3, p3

    invoke-virtual {p2, v0, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto/16 :goto_3

    :cond_f
    const/high16 v0, 0x2000000

    if-ne p2, v0, :cond_10

    .line 2151
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget v0, p3, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x2

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v3, p3

    invoke-virtual {p2, v0, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    :cond_10
    const/high16 v0, 0x1000000

    if-ne p2, v0, :cond_11

    .line 2153
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget v0, p3, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v2, p3

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    :cond_11
    const/high16 v0, 0x4000000

    if-ne p2, v0, :cond_14

    .line 2155
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mp3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "m4a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 2156
    :cond_12
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget v0, p3, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x7

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v3, p3

    invoke-virtual {p2, v0, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    .line 2158
    :cond_13
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget v0, p3, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x5

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v3, p3

    invoke-virtual {p2, v0, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 2162
    :cond_14
    :goto_3
    invoke-virtual {p0, p1, p4}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    :cond_15
    :goto_4
    return-void
.end method

.method private notifyStreamListeners()V
    .locals 3

    .line 554
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 557
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperationStream;

    invoke-interface {v2}, Lorg/telegram/messenger/FileLoadOperationStream;->newDataAvailable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishLoadingFile(Z)V
    .locals 9

    .line 1286
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1289
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1290
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    .line 1291
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 1292
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_4

    .line 1293
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1294
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_1

    .line 1295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finished preloading file to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " loaded "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1297
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz p1, :cond_3

    .line 1298
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 1299
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1301
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 1302
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1305
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, v0}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    goto :goto_0

    .line 1307
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1308
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1309
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1310
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 1311
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1425
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1426
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1427
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    :goto_0
    return-void
.end method

.method private removePart(Ljava/util/ArrayList;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    if-eqz v0, :cond_6

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    goto/16 :goto_4

    .line 444
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v1, :cond_3

    .line 448
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 449
    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    cmp-long v12, v2, v10

    if-nez v12, :cond_1

    .line 450
    invoke-static {v9, v4, v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 453
    :cond_1
    invoke-static {v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    cmp-long v12, v4, v10

    if-nez v12, :cond_2

    .line 454
    invoke-static {v9, v2, v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 459
    :goto_2
    sget-object v7, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 467
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_5

    .line 468
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/FileLoadOperation$Range;

    add-int/lit8 v9, v6, 0x1

    .line 469
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 470
    invoke-static {v7}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v11

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-nez v15, :cond_4

    .line 471
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    .line 472
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_4
    add-int/2addr v6, v8

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    .line 477
    new-instance v7, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/4 v6, 0x0

    move-object v1, v7

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private requestFileOffsets(J)V
    .locals 10

    .line 1491
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1494
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1495
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;-><init>()V

    .line 1496
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->file_token:[B

    .line 1497
    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->offset:J

    .line 1498
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    return-void
.end method

.method private requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 6

    .line 1876
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1879
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    const/4 v1, 0x1

    .line 1880
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 1881
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    .line 1882
    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1883
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-gez v3, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_1

    .line 1884
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 1887
    :cond_1
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    aput-object v5, v4, v0

    aput-object p0, v4, v1

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateParams()V
    .locals 4

    .line 211
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->getfileExperimentalParams:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x80000

    .line 212
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/16 v0, 0x8

    .line 213
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 214
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 216
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/4 v0, 0x4

    .line 217
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 218
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    :goto_0
    const-wide/32 v0, 0x7d000000

    .line 220
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 2

    .line 1141
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getCacheFileFinal()Ljava/io/File;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    return-object v0
.end method

.method protected getCurrentFile()Ljava/io/File;
    .locals 4

    .line 567
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/io/File;

    .line 569
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 578
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 582
    aget-object v0, v1, v0

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 437
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getDatacenterId()I
    .locals 1

    .line 400
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    return v0
.end method

.method protected getDownloadedLengthFromOffset(F)F
    .locals 6

    .line 621
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    .line 622
    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-float v0, v4

    mul-float v0, v0, p1

    float-to-int v0, v0

    int-to-long v2, v0

    move-object v0, p0

    .line 625
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected getDownloadedLengthFromOffset(JJ)[J
    .locals 12

    .line 629
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 631
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 639
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v9
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 416
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return v0
.end method

.method public getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-object v0
.end method

.method public isForceRequest()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    return v0
.end method

.method public isPreloadFinished()Z
    .locals 1

    .line 1133
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    return v0
.end method

.method public isPreloadVideoOperation()Z
    .locals 1

    .line 1129
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    return v0
.end method

.method protected onFail(ZI)V
    .locals 1

    .line 1818
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1819
    :goto_0
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1820
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1822
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1824
    :cond_1
    invoke-interface {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 667
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 670
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    return-void
.end method

.method protected processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 41

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 1537
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const-string v2, " offset "

    const-string v3, " "

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v9, :cond_1

    .line 1538
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1539
    new-instance v0, Lorg/telegram/messenger/FileLog$IgnoreSentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to write to finished file "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileLog$IgnoreSentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return v10

    .line 1543
    :cond_1
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v12, " volume_id = "

    const-string v13, " access_hash = "

    const-string v14, " local_id = "

    const/4 v7, 0x2

    const-string v15, " id = "

    if-nez v0, :cond_34

    .line 1546
    :try_start_0
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v16

    cmp-long v3, v0, v16

    if-eqz v3, :cond_2

    .line 1547
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return v10

    .line 1551
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1552
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    .line 1553
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1554
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    .line 1555
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1556
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_32

    .line 1560
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_15

    .line 1564
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    .line 1565
    iget-boolean v3, v8, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v3, :cond_8

    .line 1566
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v16

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v4, v3

    div-long v16, v16, v4

    int-to-long v3, v3

    mul-long v3, v3, v16

    .line 1568
    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-eqz v5, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_8

    .line 1570
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 1571
    invoke-direct {v8, v3, v4}, Lorg/telegram/messenger/FileLoadOperation;->requestFileOffsets(J)V

    return v9

    .line 1576
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    const/16 v17, 0xc

    const/16 v20, 0xd

    const/16 v21, 0x8

    const/16 v22, 0xe

    const/16 v23, 0xf

    const-wide/16 v24, 0x10

    const/16 v26, 0x18

    const/16 v27, 0x10

    const-wide/16 v28, 0xff

    if-eqz v3, :cond_9

    .line 1577
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    div-long v3, v3, v24

    .line 1578
    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    and-long v9, v3, v28

    long-to-int v6, v9

    int-to-byte v6, v6

    aput-byte v6, v5, v23

    shr-long v9, v3, v21

    and-long v9, v9, v28

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1579
    aput-byte v6, v5, v22

    shr-long v9, v3, v27

    and-long v9, v9, v28

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1580
    aput-byte v6, v5, v20

    shr-long v3, v3, v26

    and-long v3, v3, v28

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 1581
    aput-byte v3, v5, v17

    .line 1582
    iget-object v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    const/4 v9, 0x0

    invoke-static {v3, v4, v5, v9, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 1586
    :cond_9
    iget-boolean v3, v8, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v3, :cond_13

    .line 1587
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1588
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1589
    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v3, v3, 0x10

    iput v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1590
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1591
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1592
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_a

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save preload file part "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1595
    :cond_a
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v2, :cond_b

    .line 1596
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 1598
    :cond_b
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    iget v9, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v9, v9

    const/16 v25, 0x0

    move-object/from16 v20, v6

    move-wide/from16 v21, v9

    move-wide/from16 v23, v4

    invoke-direct/range {v20 .. v25}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    add-int/2addr v2, v1

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 1601
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/2addr v2, v1

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1603
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-nez v1, :cond_e

    .line 1604
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    move-object/from16 v1, p0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-gez v2, :cond_d

    const-wide/16 v2, -0x1

    mul-long v0, v0, v2

    .line 1607
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1608
    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v12, 0x2

    div-long/2addr v4, v12

    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    const-wide/32 v2, 0x100000

    add-long/2addr v2, v0

    .line 1609
    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    const/4 v2, 0x1

    .line 1610
    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    goto :goto_2

    :cond_c
    const-wide/32 v2, 0x200000

    .line 1612
    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    .line 1613
    iput v7, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    :goto_2
    const-wide/16 v2, -0x1

    .line 1615
    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    goto :goto_3

    .line 1617
    :cond_d
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1619
    :goto_3
    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    goto :goto_4

    :cond_e
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 1621
    :goto_4
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1622
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1623
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1624
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v0, v0, 0x18

    iput v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1625
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    cmp-long v2, v0, v9

    if-eqz v2, :cond_11

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v2, :cond_f

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    cmp-long v4, v2, v9

    if-ltz v4, :cond_11

    :cond_f
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    const/high16 v3, 0x200000

    if-gt v2, v3, :cond_11

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_10

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_12

    .line 1627
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1628
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write(I)V

    goto/16 :goto_11

    .line 1629
    :cond_12
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v1, :cond_2b

    .line 1630
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    goto/16 :goto_11

    :cond_13
    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    .line 1633
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    .line 1634
    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v18, v6, v9

    if-lez v18, :cond_14

    cmp-long v1, v2, v6

    if-ltz v1, :cond_16

    goto :goto_8

    .line 1637
    :cond_14
    iget v9, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v1, v9, :cond_17

    cmp-long v1, v6, v2

    if-eqz v1, :cond_15

    int-to-long v9, v9

    rem-long v9, v2, v9

    const-wide/16 v18, 0x0

    cmp-long v1, v9, v18

    if-eqz v1, :cond_16

    goto :goto_7

    :cond_15
    const-wide/16 v18, 0x0

    :goto_7
    cmp-long v1, v6, v18

    if-lez v1, :cond_17

    cmp-long v1, v6, v2

    if-gtz v1, :cond_16

    goto :goto_8

    :cond_16
    const/4 v1, 0x0

    goto :goto_9

    :cond_17
    :goto_8
    const/4 v1, 0x1

    :goto_9
    move v9, v1

    .line 1639
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_1a

    .line 1640
    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v36

    move-object/from16 v30, v2

    move-object/from16 v31, v1

    move-object/from16 v32, v3

    invoke-static/range {v30 .. v36}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    if-eqz v9, :cond_1a

    .line 1641
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_1a

    .line 1642
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    sub-long/2addr v1, v6

    .line 1643
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_19

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v1, v6

    if-gtz v3, :cond_18

    goto :goto_a

    .line 1644
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    long-to-int v2, v1

    .line 1646
    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    .line 1649
    :cond_1a
    iget-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v1, :cond_1b

    .line 1650
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    div-long v1, v1, v24

    .line 1651
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    and-long v6, v1, v28

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v23

    shr-long v6, v1, v21

    and-long v6, v6, v28

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 1652
    aput-byte v6, v3, v22

    shr-long v6, v1, v27

    and-long v6, v6, v28

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 1653
    aput-byte v6, v3, v20

    shr-long v1, v1, v26

    and-long v1, v1, v28

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1654
    aput-byte v1, v3, v17

    .line 1655
    iget-object v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 1658
    :cond_1b
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 1659
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1660
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_1c

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save file part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " chunk_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1664
    :cond_1c
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1665
    iget-object v0, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1666
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    add-long v30, v0, v4

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-wide v3, v6

    move-wide/from16 v5, v30

    const/4 v10, 0x0

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 1667
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v0, :cond_28

    .line 1668
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v2, v2

    div-long v30, v0, v2

    .line 1670
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1e

    .line 1674
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1675
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v3

    cmp-long v5, v3, v30

    if-gtz v5, :cond_1d

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v4, v30, v2

    if-gtz v4, :cond_1d

    const/4 v0, 0x0

    goto :goto_c

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_28

    .line 1681
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v1, v0

    mul-long v5, v30, v1

    .line 1682
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    int-to-long v3, v0

    move-object/from16 v1, p0

    move-wide/from16 v32, v3

    move-wide v3, v5

    move-wide v10, v5

    move-wide/from16 v5, v32

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    .line 1683
    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-eqz v6, :cond_20

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1f

    sub-long v6, v4, v10

    cmp-long v18, v0, v6

    if-eqz v18, :cond_20

    :cond_1f
    cmp-long v6, v4, v2

    if-gtz v6, :cond_28

    if-eqz v9, :cond_28

    .line 1684
    :cond_20
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1685
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_21

    .line 1686
    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    new-array v3, v3, [B

    iput-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    .line 1687
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    .line 1689
    :cond_21
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1690
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_23

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v0, v3

    if-gtz v5, :cond_22

    goto :goto_d

    .line 1691
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1693
    :cond_23
    :goto_d
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    long-to-int v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1695
    iget-boolean v3, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v3, :cond_24

    .line 1696
    div-long v5, v10, v24

    .line 1697
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    move/from16 p2, v9

    move-wide/from16 v24, v10

    and-long v9, v5, v28

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v3, v23

    shr-long v9, v5, v21

    and-long v9, v9, v28

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 1698
    aput-byte v4, v3, v22

    shr-long v9, v5, v27

    and-long v9, v9, v28

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 1699
    aput-byte v4, v3, v20

    shr-long v4, v5, v26

    and-long v4, v4, v28

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 1700
    aput-byte v4, v3, v17

    .line 1701
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v37, 0x0

    const/16 v40, 0x0

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v36, v3

    move-wide/from16 v38, v0

    invoke-static/range {v34 .. v40}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    goto :goto_e

    :cond_24
    move/from16 p2, v9

    move-wide/from16 v24, v10

    .line 1704
    :goto_e
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    .line 1705
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->hash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1706
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_26

    .line 1707
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_25

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid cdn hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " secret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_f

    .line 1709
    :cond_25
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v0, :cond_26

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid cdn hash  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_26
    :goto_f
    const/4 v1, 0x0

    .line 1713
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 1714
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v1

    .line 1717
    :cond_27
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    add-long v5, v30, v0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, v30

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    goto :goto_10

    :cond_28
    move/from16 p2, v9

    .line 1722
    :goto_10
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_29

    const-wide/16 v1, 0x0

    .line 1723
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1724
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1726
    :cond_29
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2a

    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 1727
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 1728
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v5, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_2a
    move/from16 v0, p2

    :cond_2b
    :goto_11
    const/4 v1, 0x0

    .line 1732
    :goto_12
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1733
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1734
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v3, :cond_2d

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2c

    goto :goto_13

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1735
    :cond_2d
    :goto_13
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1736
    invoke-virtual {v8, v2, v1}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1737
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1738
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1739
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_14

    .line 1740
    :cond_2e
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 1741
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1742
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_14

    .line 1743
    :cond_2f
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1744
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1745
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_30
    :goto_14
    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 1753
    invoke-direct {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto :goto_16

    .line 1754
    :cond_31
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    .line 1755
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto :goto_16

    :cond_32
    :goto_15
    const/4 v0, 0x1

    .line 1561
    invoke-direct {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 1758
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1759
    invoke-virtual {v8, v1, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_16

    :cond_33
    const/4 v1, 0x0

    .line 1761
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1762
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_16

    :cond_34
    const/4 v1, 0x0

    .line 1766
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "LIMIT_INVALID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 1767
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v0, :cond_35

    const/4 v0, 0x1

    .line 1768
    iput-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    const/4 v1, 0x0

    .line 1769
    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->pause()V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    :cond_35
    :goto_16
    const/4 v1, 0x0

    goto/16 :goto_19

    .line 1773
    :cond_36
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "FILE_MIGRATE_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1774
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v3, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1779
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_17

    :catch_1
    move-object v6, v1

    :goto_17
    if-nez v6, :cond_37

    const/4 v1, 0x0

    .line 1784
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_16

    .line 1786
    :cond_37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const-wide/16 v0, 0x0

    .line 1787
    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto :goto_16

    .line 1790
    :cond_38
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "OFFSET_INVALID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1791
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_39

    const/4 v0, 0x1

    .line 1793
    :try_start_2
    invoke-direct {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1795
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 1796
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_19

    :cond_39
    const/4 v1, 0x0

    .line 1799
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_19

    :cond_3a
    const/4 v1, 0x0

    .line 1801
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "RETRY_LIMIT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1802
    invoke-virtual {v8, v1, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_19

    .line 1804
    :cond_3b
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_3d

    .line 1805
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v1, :cond_3c

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " secret = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_18

    .line 1807
    :cond_3c
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v1, :cond_3d

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3d
    :goto_18
    const/4 v1, 0x0

    .line 1811
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_19
    return v1
.end method

.method protected removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 651
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0

    .line 2170
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-void
.end method

.method public setEncryptFile(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    :cond_0
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public setIsPreloadVideoOperation(Z)V
    .locals 6

    .line 1104
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/32 v3, 0x200000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 1108
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1109
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 p1, 0x0

    .line 1110
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1111
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1112
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    goto :goto_0

    .line 1113
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1114
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1121
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    goto :goto_0

    .line 1124
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setPaths(ILjava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 420
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 421
    iput-object p5, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 422
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 423
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    .line 424
    iput-object p6, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    .line 425
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 412
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return-void
.end method

.method public setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    .line 43
    iput-wide p3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    .line 44
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    return-void
.end method

.method public start()Z
    .locals 4

    .line 674
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z

    move-result v0

    return v0
.end method

.method public start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z
    .locals 28

    move-object/from16 v8, p0

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    .line 679
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 680
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-nez v0, :cond_5

    .line 681
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    if-eqz v0, :cond_0

    .line 682
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 683
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 685
    :cond_0
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v4, v3

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    :goto_1
    iput v4, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 686
    :cond_3
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    :goto_3
    iput v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 688
    :cond_5
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 689
    :goto_4
    iget-boolean v11, v8, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    .line 690
    iput-boolean v10, v8, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-eqz p1, :cond_7

    .line 692
    sget-object v12, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v13, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v4, p2

    move-object/from16 v6, p1

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileLoadOperation;ZJLorg/telegram/messenger/FileLoadOperationStream;Z)V

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_7
    if-eqz v11, :cond_8

    if-eqz v0, :cond_8

    .line 729
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v8}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_5
    if-eqz v0, :cond_9

    return v11

    .line 734
    :cond_9
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v0, :cond_a

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-nez v0, :cond_a

    .line 735
    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v10

    .line 739
    :cond_a
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, v0

    div-long v1, p2, v1

    int-to-long v3, v0

    mul-long v1, v1, v3

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 741
    iget-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_b

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_b

    int-to-long v0, v0

    cmp-long v6, v4, v0

    if-lez v6, :cond_b

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    .line 751
    :cond_b
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    const-string v1, "_64.iv.enc"

    const-string v4, "_64.iv"

    const-string v5, ".enc"

    const-string v6, ".temp.enc"

    const-string v7, ".temp"

    const-string v11, "."

    if-eqz v0, :cond_f

    .line 752
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v0, v0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-boolean v13, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v13, :cond_c

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 756
    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_e

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 760
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 762
    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_d

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    goto :goto_6

    :cond_d
    move-object v4, v1

    :cond_e
    const/4 v0, 0x0

    :goto_6
    move-object v1, v0

    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_e

    .line 767
    :cond_f
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-string v15, "_64.pt"

    const-string v12, "_64.preload"

    const-string v9, "_"

    cmp-long v16, v13, v2

    if-eqz v16, :cond_15

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v2, :cond_15

    .line 768
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_14

    const-wide/32 v2, -0x80000000

    cmp-long v16, v13, v2

    if-eqz v16, :cond_14

    if-nez v0, :cond_10

    goto/16 :goto_a

    .line 773
    :cond_10
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_11

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 776
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_17

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 780
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 782
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_12

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    .line 785
    :goto_8
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    .line 788
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    :cond_14
    :goto_a
    const/4 v1, 0x1

    .line 769
    invoke-virtual {v8, v1, v10}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v10

    .line 791
    :cond_15
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    if-eqz v2, :cond_46

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v13, 0x0

    cmp-long v0, v2, v13

    if-nez v0, :cond_16

    goto/16 :goto_2b

    .line 795
    :cond_16
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_18

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 798
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_17

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 802
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_19

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    .line 807
    :goto_b
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    .line 810
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    move-object v4, v0

    .line 815
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    iget v6, v8, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    iget v6, v8, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 817
    iput v7, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 819
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v6, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v6, :cond_1b

    .line 820
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 821
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remote"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".attheme"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_f

    .line 823
    :cond_1b
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-nez v0, :cond_1c

    .line 824
    new-instance v0, Ljava/io/File;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_f

    .line 826
    :cond_1c
    new-instance v0, Ljava/io/File;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 829
    :goto_f
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 830
    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez v6, :cond_1d

    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-eqz v9, :cond_1f

    iget-object v9, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v6, v11

    if-eqz v9, :cond_1f

    .line 831
    :cond_1d
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->hasAnotherRefOnFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 832
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1e
    const/4 v0, 0x0

    :cond_1f
    if-nez v0, :cond_43

    .line 839
    new-instance v0, Ljava/io/File;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 840
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-eqz v0, :cond_20

    .line 841
    new-instance v0, Ljava/io/File;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".gz"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    .line 845
    :cond_20
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    const-string/jumbo v4, "rws"

    if-eqz v0, :cond_23

    .line 846
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".key"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 848
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    const/16 v0, 0x20

    new-array v7, v0, [B

    .line 850
    iput-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v9, 0x10

    new-array v13, v9, [B

    .line 851
    iput-object v13, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_21

    const-wide/16 v16, 0x30

    .line 852
    rem-long v11, v11, v16

    cmp-long v15, v11, v13

    if-nez v15, :cond_21

    .line 853
    invoke-virtual {v5, v7, v10, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 854
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0, v10, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v7, 0x0

    goto :goto_10

    .line 856
    :cond_21
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 857
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 858
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 859
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x1

    .line 863
    :goto_10
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 865
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 867
    :goto_11
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x1

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    .line 869
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    .line 870
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    goto :goto_13

    :cond_22
    const/4 v5, 0x1

    .line 872
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_23
    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_13
    new-array v9, v5, [Z

    aput-boolean v10, v9, v10

    .line 878
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    const-wide/16 v13, 0x8

    if-eqz v0, :cond_2f

    if-eqz v3, :cond_2f

    .line 879
    new-instance v0, Ljava/io/File;

    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 882
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    .line 883
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    const/4 v3, 0x1

    .line 885
    iput v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    const-wide/16 v18, 0x0

    sub-long v20, v16, v18

    const-wide/16 v18, 0x1

    cmp-long v0, v20, v18

    if-lez v0, :cond_2e

    .line 887
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_14

    :cond_24
    const/4 v0, 0x0

    :goto_14
    aput-boolean v0, v9, v10

    :goto_15
    cmp-long v0, v18, v16

    if-gez v0, :cond_2e

    sub-long v20, v16, v18

    cmp-long v0, v20, v13

    if-gez v0, :cond_25

    goto/16 :goto_19

    .line 893
    :cond_25
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-long v18, v18, v13

    sub-long v22, v16, v18

    cmp-long v0, v22, v13

    if-ltz v0, :cond_2e

    const-wide/16 v22, 0x0

    cmp-long v0, v20, v22

    if-ltz v0, :cond_2e

    move v3, v7

    .line 895
    :try_start_4
    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v20, v6

    if-lez v0, :cond_27

    :cond_26
    :goto_16
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v3

    goto/16 :goto_1a

    .line 898
    :cond_27
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    add-long v18, v18, v13

    sub-long v22, v16, v18

    cmp-long v0, v22, v5

    if-ltz v0, :cond_26

    .line 900
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v13, v0

    cmp-long v0, v5, v13

    if-lez v0, :cond_28

    goto :goto_16

    .line 903
    :cond_28
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move-wide/from16 v23, v18

    move-wide/from16 v25, v5

    invoke-direct/range {v22 .. v27}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    add-long v13, v18, v5

    .line 905
    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v18, v16, v13

    const-wide/16 v22, 0x18

    cmp-long v7, v18, v22

    if-gez v7, :cond_29

    goto :goto_16

    .line 909
    :cond_29
    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    iput-wide v10, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const-wide/16 v24, 0x0

    cmp-long v7, v10, v24

    if-eqz v7, :cond_2b

    move v12, v3

    move-object v7, v4

    .line 911
    :try_start_5
    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    :try_start_6
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v18, 0x2

    div-long v1, v1, v18

    cmp-long v26, v3, v1

    if-lez v26, :cond_2a

    const/4 v1, 0x2

    goto :goto_17

    :cond_2a
    const/4 v1, 0x1

    :goto_17
    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    .line 912
    iput-wide v10, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    goto :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    goto/16 :goto_1c

    :cond_2b
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v3

    move-object v7, v4

    .line 914
    :goto_18
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 915
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v1

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    add-long v1, v13, v22

    .line 918
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v3, :cond_2c

    .line 919
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 921
    :cond_2c
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v3, :cond_2d

    .line 922
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 924
    :cond_2d
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long v3, v0

    add-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 928
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v3, v0

    const-wide/16 v10, 0x24

    add-long/2addr v5, v10

    add-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    move-wide/from16 v18, v1

    move-object v4, v7

    move v7, v12

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    const/4 v10, 0x0

    const-wide/16 v13, 0x8

    goto/16 :goto_15

    :catch_4
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v3

    goto :goto_1b

    :cond_2e
    :goto_19
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v7

    :goto_1a
    move-object v7, v4

    .line 931
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1d

    :catch_5
    move-exception v0

    goto :goto_1c

    :catch_6
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v7

    :goto_1b
    move-object v7, v4

    :goto_1c
    const/4 v1, 0x0

    .line 933
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 935
    :goto_1d
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_30

    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v0, :cond_30

    const/4 v1, 0x0

    .line 936
    iput-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 938
    :try_start_7
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_30

    .line 940
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    .line 942
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 944
    :goto_1e
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    .line 945
    iput-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1f

    :catch_8
    move-exception v0

    .line 948
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_2f
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move v12, v7

    move-object v7, v4

    :cond_30
    :goto_1f
    if-eqz v24, :cond_31

    .line 954
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 956
    :try_start_a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 957
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    .line 958
    rem-long v2, v0, v2

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-nez v6, :cond_31

    sub-long/2addr v0, v4

    .line 960
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x2

    .line 961
    div-long/2addr v0, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_31

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_31

    .line 963
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    .line 964
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    .line 965
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :catch_9
    move-exception v0

    .line 971
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 975
    :cond_31
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz v0, :cond_32

    .line 976
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 977
    iget v0, v8, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 980
    :cond_32
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz v12, :cond_33

    .line 982
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_22

    .line 984
    :cond_33
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    if-eqz v25, :cond_34

    .line 985
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_34

    .line 986
    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_21

    .line 988
    :cond_34
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    int-to-long v2, v2

    mul-long v0, v0, v2

    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 990
    :goto_21
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 991
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 995
    :cond_35
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 996
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    const-wide/16 v2, 0x0

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_36
    :goto_22
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 1000
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    .line 1001
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_37

    .line 1004
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1005
    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    sub-long/2addr v5, v10

    sub-long/2addr v3, v5

    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1007
    :cond_37
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1010
    :cond_38
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3a

    .line 1011
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_39

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start preloading file to temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_24

    .line 1014
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start loading file to temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " final = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3a
    :goto_24
    if-eqz v25, :cond_3e

    .line 1019
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1021
    :try_start_b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 1022
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3e

    if-nez v12, :cond_3e

    .line 1023
    :try_start_c
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3c

    const-wide/16 v4, 0x40

    .line 1024
    rem-long/2addr v0, v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    cmp-long v4, v0, v2

    if-nez v4, :cond_3b

    .line 1025
    :try_start_d
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_27

    :cond_3b
    const-wide/16 v1, 0x0

    goto :goto_25

    :cond_3c
    move-wide v1, v2

    .line 1027
    :goto_25
    :try_start_e
    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_27

    :catch_a
    move-exception v0

    goto :goto_26

    :catch_b
    move-exception v0

    move-wide v1, v2

    goto :goto_26

    :catch_c
    move-exception v0

    const-wide/16 v1, 0x0

    .line 1031
    :goto_26
    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1032
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    .line 1033
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    goto :goto_28

    .line 1035
    :cond_3d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_3e
    :goto_27
    const-wide/16 v1, 0x0

    .line 1039
    :goto_28
    iget-boolean v0, v8, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_3f

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3f

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3f

    .line 1040
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 1042
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->updateProgress()V

    .line 1044
    :try_start_f
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 1045
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_40

    .line 1046
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    :cond_40
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_29

    :catch_d
    move-exception v0

    .line 1049
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    .line 1050
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v2, -0x1

    .line 1051
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v2, 0x0

    return v2

    :cond_41
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1054
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1057
    :goto_29
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_42

    .line 1058
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v2

    .line 1061
    :cond_42
    iput-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1062
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;

    invoke-direct {v2, v8, v9}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Z)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_43
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1074
    iput-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1076
    :try_start_10
    invoke-direct {v8, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    .line 1077
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz v0, :cond_44

    .line 1078
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    :cond_44
    const/4 v1, 0x1

    goto :goto_2a

    :catch_e
    move-exception v0

    .line 1081
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    .line 1082
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v2, -0x1

    .line 1083
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2a

    :cond_45
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1085
    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1086
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_2a
    return v1

    :cond_46
    :goto_2b
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v2
.end method

.method protected startDownloadRequest()V
    .locals 29

    move-object/from16 v7, p0

    .line 1891
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-nez v0, :cond_22

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez v0, :cond_22

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_22

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 1894
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-ge v0, v1, :cond_22

    :cond_0
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_1

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const-wide/32 v2, 0x200000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_22

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 1895
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto/16 :goto_15

    .line 1899
    :cond_1
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    const/4 v11, 0x0

    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v0, :cond_3

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_2

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v2, v0, v9

    if-lez v2, :cond_3

    .line 1900
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_3
    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_22

    .line 1905
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 v14, 0x2

    if-eqz v0, :cond_c

    .line 1906
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_4

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    cmp-long v2, v0, v9

    if-gtz v2, :cond_4

    return-void

    .line 1909
    :cond_4
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    const/high16 v0, 0x200000

    .line 1912
    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v0, v1

    add-int/2addr v0, v14

    move-wide v1, v9

    :goto_2
    if-eqz v0, :cond_8

    .line 1914
    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-wide v0, v1

    const/4 v2, 0x1

    goto :goto_4

    .line 1918
    :cond_5
    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 1919
    iget-wide v4, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v6, v1, v4

    if-lez v6, :cond_6

    goto :goto_3

    .line 1922
    :cond_6
    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-ne v6, v14, :cond_7

    mul-int/lit8 v6, v3, 0x8

    int-to-long v14, v6

    cmp-long v6, v1, v14

    if-nez v6, :cond_7

    const-wide/32 v1, 0x100000

    sub-long/2addr v4, v1

    int-to-long v1, v3

    .line 1923
    div-long/2addr v4, v1

    int-to-long v1, v3

    mul-long v4, v4, v1

    move-wide v1, v4

    :cond_7
    add-int/lit8 v0, v0, -0x1

    const/4 v14, 0x2

    goto :goto_2

    :cond_8
    :goto_3
    move-wide v0, v1

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_9

    .line 1927
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1928
    invoke-direct {v7, v11}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    .line 1933
    :cond_9
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v2, :cond_a

    .line 1934
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 1936
    :cond_a
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_b

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start next preload from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1940
    :cond_b
    iget-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    iget v4, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    move-wide v8, v0

    move/from16 v16, v12

    goto/16 :goto_9

    .line 1942
    :cond_c
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 1943
    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_d

    goto :goto_5

    :cond_d
    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 1944
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v14, v3

    move/from16 v16, v12

    const/4 v5, 0x0

    move-wide v11, v14

    :goto_6
    if-ge v5, v0, :cond_10

    .line 1948
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    cmp-long v17, v1, v9

    if-eqz v17, :cond_f

    .line 1950
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v19, v17, v1

    if-gtz v19, :cond_e

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v19, v17, v1

    if-lez v19, :cond_e

    move-wide v11, v3

    goto :goto_7

    .line 1955
    :cond_e
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v19, v1, v17

    if-gez v19, :cond_f

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v19, v17, v14

    if-gez v19, :cond_f

    .line 1956
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v14

    .line 1959
    :cond_f
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    goto :goto_6

    :cond_10
    move-wide v1, v14

    :goto_7
    cmp-long v0, v1, v3

    if-eqz v0, :cond_11

    move-wide v0, v1

    goto :goto_8

    :cond_11
    cmp-long v0, v11, v3

    if-eqz v0, :cond_22

    move-wide v0, v11

    goto :goto_8

    :cond_12
    move/from16 v16, v12

    .line 1969
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    :goto_8
    move-wide v8, v0

    .line 1972
    :goto_9
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_13

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    .line 1973
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v0

    add-long v4, v8, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v2, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 1976
    :cond_13
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    cmp-long v4, v8, v0

    if-ltz v4, :cond_14

    goto/16 :goto_15

    :cond_14
    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    add-int/lit8 v12, v16, -0x1

    if-eq v13, v12, :cond_16

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    .line 1979
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    add-long/2addr v2, v8

    cmp-long v4, v2, v0

    if-ltz v4, :cond_15

    goto :goto_a

    :cond_15
    const/16 v28, 0x0

    goto :goto_b

    :cond_16
    :goto_a
    const/16 v28, 0x1

    .line 1981
    :goto_b
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_17

    const/16 v27, 0x2

    goto :goto_c

    :cond_17
    const v14, 0x10002

    const v27, 0x10002

    .line 1982
    :goto_c
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x20

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    .line 1983
    :goto_d
    iget-boolean v1, v7, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v1, :cond_19

    .line 1984
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;-><init>()V

    .line 1985
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->file_token:[B

    .line 1986
    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->offset:J

    .line 1987
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I

    or-int/lit8 v0, v0, 0x1

    :goto_e
    move/from16 v25, v0

    goto :goto_f

    .line 1991
    :cond_19
    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v1, :cond_1a

    .line 1992
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 1993
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    long-to-int v2, v8

    .line 1994
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 1995
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    goto :goto_e

    .line 1998
    :cond_1a
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 1999
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2000
    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:J

    .line 2001
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    const/4 v2, 0x1

    .line 2002
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->cdn_supported:Z

    goto :goto_e

    .line 2006
    :goto_f
    iget-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2007
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>()V

    .line 2008
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;J)J

    .line 2010
    iget-boolean v2, v7, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)Z

    .line 2012
    iget-boolean v2, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v2, :cond_1d

    iget-boolean v2, v7, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    if-eqz v2, :cond_1d

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1d

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz v2, :cond_1d

    .line 2013
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    if-eqz v2, :cond_1d

    .line 2015
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$402(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 2017
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_1c

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1000(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v8, v3, v5

    if-gtz v8, :cond_1b

    goto :goto_10

    .line 2018
    :cond_1b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cast long to integer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2020
    :cond_1c
    :goto_10
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1000(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2021
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1100(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2022
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v4, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 2023
    iget-object v2, v3, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2024
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 2025
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;

    invoke-direct {v3, v7, v0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    goto/16 :goto_14

    :catch_0
    nop

    goto :goto_11

    :catch_1
    :cond_1d
    const/4 v4, 0x0

    .line 2036
    :goto_11
    iget-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    const-wide/16 v5, 0x0

    cmp-long v8, v2, v5

    if-eqz v8, :cond_1f

    .line 2037
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_1e

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame get offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1e
    const-wide/16 v2, 0x0

    .line 2040
    iput-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    .line 2041
    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    goto :goto_12

    :cond_1f
    const-wide/16 v2, 0x0

    .line 2043
    :goto_12
    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v6, :cond_20

    .line 2044
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    .line 2045
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    cmp-long v8, v5, v2

    if-nez v8, :cond_20

    .line 2046
    invoke-direct {v7, v0}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    const/4 v1, 0x1

    goto :goto_14

    .line 2050
    :cond_20
    iget-boolean v5, v7, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v0, v5}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)Z

    .line 2051
    iget v5, v7, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    new-instance v5, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;

    invoke-direct {v5, v7, v0, v1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 2164
    iget-boolean v6, v7, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v6, :cond_21

    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_13

    :cond_21
    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    :goto_13
    move/from16 v26, v6

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    .line 2051
    invoke-virtual/range {v20 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 2165
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    :goto_14
    add-int/lit8 v13, v13, 0x1

    move-wide v9, v2

    move/from16 v12, v16

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_22
    :goto_15
    return-void
.end method

.method public updateProgress()V
    .locals 8

    .line 1094
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move-object v1, p0

    .line 1095
    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_0
    return-void
.end method

.method public wasStarted()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
