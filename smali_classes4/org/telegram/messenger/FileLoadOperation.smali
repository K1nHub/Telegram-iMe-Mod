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
.field private static final FINISH_CODE_DEFAULT:I = 0x0

.field private static final FINISH_CODE_FILE_ALREADY_EXIST:I = 0x1

.field public static volatile filesQueue:Lorg/telegram/messenger/DispatchQueue; = null

.field public static filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream; = null

.field private static globalRequestPointer:I = 0x0

.field private static final lockObject:Ljava/lang/Object;

.field private static final preloadMaxBytes:I = 0x200000

.field private static final stateCanceled:I = 0x4

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private final FULL_LOGS:Z

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

.field public currentAccount:I

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

.field private fileWriteRunnable:Ljava/lang/Runnable;

.field private fiv:Ljava/io/RandomAccessFile;

.field private forceSmallChunk:Z

.field private foundMoovSize:J

.field private initialDatacenterId:I

.field private isCdn:Z

.field private isForceRequest:Z

.field private isPreloadVideoOperation:Z

.field public isStory:Z

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

.field public preFinished:Z

.field private preloadFinished:Z

.field private preloadNotRequestedBytesCount:J

.field private preloadPrefixSize:I

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

.field public totalBytesCount:J

.field private totalPreloadedBytes:I

.field totalTime:J

.field private ungzip:Z

.field private webFile:Lorg/telegram/messenger/WebFile;

.field private webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;


# direct methods
.method public static synthetic $r8$lambda$-A_cqEcDEzuOtb82y0i7YfDRKn4(Lorg/telegram/messenger/FileLoadOperation;ZJZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$7(ZJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CUVu0fNnEFOvX1ZTCDd5SJBtzbo(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dbh3z0LP3DPH4gWZpdy5UoRaMxM(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$setIsPreloadVideoOperation$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fcb3Pi9vz92Q3NDRFOMPog_OAII(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFail$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$INewfCsyCDK7X--Mb0RWfm_VqEI(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getDownloadedLengthFromOffset$4([JJJLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MhC8brqWKf76yWk77pW4sQ2Uayg(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$20(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PK2gHRf512sjJAOQQf6I2bUdJk8(Lorg/telegram/messenger/FileLoadOperation;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$start$9([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ppk1I4hmoeKIPYQ6DDvQNec2PYw(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$pause$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$UcWTmbiMNHph44SPKRM-grkzlDM(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$requestFileOffsets$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WsmGM55qlB6z4xZUt35RBaKqO8c(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->lambda$getCurrentFile$3([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aCgihgPgFDCrjCxnPsosSS2qWt4(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$cancel$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aux7M9v4qrfoRbIuO3-nbZ6Nq_Y(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$setStream$0(Lorg/telegram/messenger/FileLoadOperationStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btsL1vnEyLiwghuOLzfa5bt-6y8(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$15(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hS_6ucZxW4S33DFI7kiCX1m-yYs(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$removePart$1(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iagQXhvFFbtozbzSm1dZBvlYsAU(Lorg/telegram/messenger/FileLoadOperation;ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$19(ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lEf1h6vONdiqYabZKxXkAXHoC-4(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mlbPAYFoELCakj3ZAHYLAu_ahz8(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$puh-sEFJyuRIDz6NYLc8ZWwwI3Q(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$startDownloadRequest$18(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ro1NC8oI0HCnlhZdf0wwDIbhwlg(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$addPart$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sItlqEkpOhxdeuPIJZo_PQNL99w(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->lambda$removeStreamListener$5(Lorg/telegram/messenger/FileLoadOperationStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t2cuJo-Xnn5KHqIJWU-4FbHliQ0(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->lambda$onFinishLoadingFile$13()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "writeFileQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/WebFile;)V
    .locals 7

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 138
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 139
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 140
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 141
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 142
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 143
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v3, v1

    const-wide/32 v5, 0x7d000000

    .line 144
    div-long/2addr v5, v3

    long-to-int v3, v5

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 147
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 148
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 169
    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 190
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 365
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 366
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    .line 367
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    .line 368
    iget v0, p2, Lorg/telegram/messenger/WebFile;->size:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 369
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->webFileDatacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 370
    iget-object p1, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x1000000

    .line 372
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3000000

    .line 374
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x2000000

    .line 376
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    :cond_2
    const/high16 v0, 0x4000000

    .line 378
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    :goto_0
    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 381
    iget-object p2, p2, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 7

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 138
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 139
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 140
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 141
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 142
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 143
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v3, v1

    const-wide/32 v5, 0x7d000000

    .line 144
    div-long/2addr v5, v3

    long-to-int v3, v5

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 147
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 148
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 169
    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 190
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 279
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 280
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 281
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 282
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    .line 283
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 284
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 285
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 286
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 287
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 288
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    const/16 p2, 0x20

    new-array p2, p2, [B

    .line 289
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 290
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->iv:[B

    array-length v3, p2

    invoke-static {v1, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto/16 :goto_3

    .line 292
    :cond_1
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_3

    .line 293
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;-><init>()V

    .line 294
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 295
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 296
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 297
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    .line 298
    iget v1, p1, Lorg/telegram/messenger/ImageLocation;->photoPeerType:I

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->big:Z

    .line 299
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->photoPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 300
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 301
    :cond_3
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz p2, :cond_4

    .line 302
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;-><init>()V

    .line 303
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 304
    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 305
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 306
    iget v1, p1, Lorg/telegram/messenger/ImageLocation;->thumbVersion:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->thumb_version:I

    .line 307
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->stickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetThumb;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 308
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    goto/16 :goto_3

    .line 309
    :cond_4
    iget-object p2, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 310
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    .line 311
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 312
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 313
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v4, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 314
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 315
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 316
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 317
    iget-object v3, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 318
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne p2, v1, :cond_6

    .line 319
    iput-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    goto :goto_2

    .line 322
    :cond_5
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 323
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->documentId:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 324
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 325
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 326
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 327
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 328
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->thumbSize:Ljava/lang/String;

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    .line 330
    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v1, :cond_9

    new-array v1, v0, [B

    .line 331
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    goto :goto_3

    .line 334
    :cond_7
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 335
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 336
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 337
    iget-wide v3, p1, Lorg/telegram/messenger/ImageLocation;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 338
    iget-object v1, p1, Lorg/telegram/messenger/ImageLocation;->file_reference:[B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    if-nez v1, :cond_8

    new-array v1, v0, [B

    .line 340
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 342
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 344
    :cond_9
    :goto_3
    iget p2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq p2, v2, :cond_a

    const/4 v1, 0x3

    if-ne p2, v1, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 345
    iget p1, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/high16 p1, 0x1000000

    .line 346
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 347
    iput-wide p4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    if-eqz p3, :cond_c

    goto :goto_4

    :cond_c
    const-string p3, "jpg"

    .line 348
    :goto_4
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SecureDocument;)V
    .locals 7

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 138
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 139
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 140
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 141
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 142
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 143
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v3, v1

    const-wide/32 v5, 0x7d000000

    .line 144
    div-long/2addr v5, v3

    long-to-int v3, v5

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 147
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 148
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 169
    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 190
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 352
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 353
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 354
    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 355
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 356
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 357
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->size:J

    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const/high16 p1, 0x4000000

    .line 359
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const-string p1, ".jpg"

    .line 360
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 11

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->FULL_LOGS:Z

    const v1, 0x8000

    .line 138
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    const/high16 v1, 0x20000

    .line 139
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    .line 140
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    const/4 v2, 0x4

    .line 141
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 142
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    const/high16 v3, 0xa00000

    .line 143
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v3, v1

    const-wide/32 v5, 0x7d000000

    .line 144
    div-long/2addr v5, v3

    long-to-int v3, v5

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    .line 147
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    .line 148
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 169
    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    .line 190
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 385
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    const/4 v1, 0x1

    .line 387
    :try_start_0
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 388
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    .line 389
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz p2, :cond_0

    .line 390
    :try_start_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 391
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 392
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 393
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    const/16 p2, 0x20

    new-array p2, p2, [B

    .line 394
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 395
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    array-length v4, p2

    invoke-static {v3, v0, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    goto :goto_1

    .line 397
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz p2, :cond_3

    .line 398
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 399
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 400
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 401
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 402
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->thumb_size:Ljava/lang/String;

    if-nez v3, :cond_1

    new-array v3, v0, [B

    .line 404
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->file_reference:[B

    .line 406
    :cond_1
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    .line 407
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    .line 408
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_3

    .line 409
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_2

    .line 410
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    .line 411
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p2, "application/x-tgsticker"

    .line 416
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
    move p2, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v1

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 417
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 418
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz p2, :cond_6

    const-wide/16 v5, 0x10

    .line 420
    rem-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long p2, v7, v9

    if-eqz p2, :cond_6

    .line 421
    rem-long v7, v3, v5

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    add-long/2addr v3, v5

    .line 422
    iput-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    .line 425
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/16 v3, 0x2e

    .line 427
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    goto :goto_4

    .line 430
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_5

    .line 428
    :cond_8
    :goto_4
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :goto_5
    const-string p2, "audio/ogg"

    .line 432
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/high16 p2, 0x3000000

    .line 433
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    .line 434
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->isVideoMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x2000000

    .line 435
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_6

    :cond_a
    const/high16 p2, 0x4000000

    .line 437
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 439
    :goto_6
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v1, :cond_b

    .line 440
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 443
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 444
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

    if-eqz v1, :cond_8

    cmp-long v2, v10, v8

    if-gez v2, :cond_0

    goto/16 :goto_3

    .line 545
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    const/4 v13, 0x1

    if-ge v3, v2, :cond_5

    .line 548
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 549
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-gtz v4, :cond_2

    .line 550
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-ltz v4, :cond_1

    .line 551
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 554
    :cond_1
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-lez v4, :cond_4

    .line 555
    invoke-static {v14, v10, v11}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    .line 560
    :cond_2
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-gez v4, :cond_3

    .line 561
    new-instance v15, Lorg/telegram/messenger/FileLoadOperation$Range;

    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v3

    const/4 v7, 0x0

    move-object v2, v15

    move-wide/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    .line 562
    invoke-virtual {v1, v12, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 564
    invoke-static {v14, v10, v11}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    :goto_1
    move v12, v13

    goto :goto_2

    .line 566
    :cond_3
    invoke-static {v14}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-gez v4, :cond_4

    .line 567
    invoke-static {v14, v8, v9}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz p6, :cond_8

    if-eqz v12, :cond_7

    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    iget-object v1, v0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 577
    sget-object v1, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 579
    :cond_6
    sget-object v1, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/ArrayList;)V

    iput-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->fileWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 615
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    goto :goto_3

    .line 617
    :cond_7
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8

    .line 618
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

    :cond_8
    :goto_3
    return-void
.end method

.method private canFinishPreload()Z
    .locals 2

    .line 1996
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancel(Z)V
    .locals 2

    .line 1273
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelRequests()V
    .locals 8

    .line 1329
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    .line 1331
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1332
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1333
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1334
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1335
    iget v5, v4, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    if-ne v5, v0, :cond_0

    move v7, v2

    .line 1336
    :cond_0
    aget v5, v1, v7

    iget v4, v4, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    add-int/2addr v5, v4

    aput v5, v1, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_6

    if-nez v2, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    const v3, 0x10002

    .line 1341
    :goto_2
    aget v4, v1, v2

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_5

    .line 1342
    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_3

    :cond_4
    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 1343
    :goto_3
    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->discardConnection(II)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private cleanup()V
    .locals 4

    const/4 v0, 0x0

    .line 1352
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 1354
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1356
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1358
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1359
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1362
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1365
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_1

    .line 1367
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 1369
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1371
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1372
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1375
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1378
    :cond_1
    :goto_3
    :try_start_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v1, :cond_2

    .line 1380
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 1382
    :try_start_8
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1384
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1385
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 1388
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1391
    :cond_2
    :goto_5
    :try_start_9
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 1392
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1394
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

    .line 1396
    :try_start_b
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1398
    :goto_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1399
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 1400
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

    .line 1403
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1407
    :cond_3
    :goto_8
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_4

    .line 1408
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1409
    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 1412
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1414
    :cond_4
    :goto_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    .line 1415
    :goto_a
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1416
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1417
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1418
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1419
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_b

    .line 1420
    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1421
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1422
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_b

    .line 1423
    :cond_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1424
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    iput-boolean v0, v3, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1425
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_7
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1428
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method private clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V
    .locals 16

    move-object/from16 v6, p0

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x0

    const-wide v0, 0x7fffffffffffffffL

    move v10, v9

    .line 2030
    :goto_0
    iget-object v2, v6, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 2031
    iget-object v2, v6, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 2032
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 2033
    iget-boolean v0, v6, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2036
    :cond_0
    iget-object v1, v6, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v0, v11, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v14, v0

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    :goto_1
    move-object/from16 v2, p1

    if-ne v2, v11, :cond_1

    goto :goto_2

    .line 2041
    :cond_1
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget v0, v6, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-wide v0, v12

    goto :goto_0

    :cond_3
    move v2, v9

    :goto_3
    if-ge v2, v7, :cond_7

    if-nez v2, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    const v3, 0x10002

    .line 2047
    :goto_4
    aget v4, v8, v2

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_6

    .line 2048
    iget-boolean v4, v6, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v4, :cond_5

    iget v4, v6, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_5

    :cond_5
    iget v4, v6, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    .line 2049
    :goto_5
    iget v5, v6, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->discardConnection(II)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2052
    :cond_7
    iget-object v2, v6, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-wide v7, v0

    move v10, v9

    .line 2053
    :goto_6
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_c

    .line 2054
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 2055
    iget-boolean v0, v6, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_8

    .line 2056
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2058
    :cond_8
    iget-object v1, v6, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    iget v0, v11, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v12, v0

    add-long/2addr v4, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 2060
    :goto_7
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2061
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iput-boolean v9, v0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2062
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_8

    .line 2063
    :cond_9
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2064
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iput-boolean v9, v0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2065
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_8

    .line 2066
    :cond_a
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2067
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    iput-boolean v9, v0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 2068
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    .line 2070
    :cond_b
    :goto_8
    invoke-static {v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2072
    :cond_c
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2073
    iput v9, v6, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    if-nez p2, :cond_d

    .line 2074
    iget-boolean v0, v6, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_d

    .line 2075
    iget v0, v6, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long v0, v0

    iput-wide v0, v6, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_9

    .line 2076
    :cond_d
    iget-object v0, v6, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 2077
    iput-wide v7, v6, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v7, v6, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    :cond_e
    :goto_9
    return-void
.end method

.method private copyNotLoadedRanges()V
    .locals 2

    .line 739
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    return-void
.end method

.method private delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 2

    .line 1596
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1598
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    goto :goto_0

    .line 1599
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1600
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    goto :goto_0

    .line 1601
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1602
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    .line 1607
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    move-wide/from16 v3, p1

    .line 1609
    :cond_0
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    const/16 v6, 0x10

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    int-to-long v8, v5

    sub-long v8, p3, v8

    cmp-long v5, v3, v8

    if-ltz v5, :cond_a

    int-to-long v10, v2

    add-long v10, p3, v10

    cmp-long v5, v3, v10

    if-ltz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-wide/16 v12, 0x10

    sub-long v12, v10, v12

    cmp-long v5, v3, v12

    const-string v12, "!!!"

    const-wide/32 v13, 0x7fffffff

    if-ltz v5, :cond_4

    sub-long v2, v10, v3

    cmp-long v4, v2, v13

    if-gtz v4, :cond_3

    long-to-int v2, v2

    .line 1617
    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    .line 1618
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    long-to-int v2, v2

    .line 1620
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1621
    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    invoke-virtual {v1, v2, v7, v3, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    return-wide v10

    .line 1615
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1624
    :cond_4
    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    if-eqz v5, :cond_5

    .line 1625
    invoke-virtual {v1, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1626
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    iget v12, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    rsub-int/lit8 v13, v12, 0x10

    invoke-virtual {v1, v5, v12, v13, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1627
    iput v7, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBufferCount:I

    goto :goto_1

    :cond_5
    sub-long v8, v3, p3

    cmp-long v5, v8, v13

    if-gtz v5, :cond_9

    long-to-int v5, v8

    .line 1633
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1634
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    invoke-virtual {v1, v5, v7, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BIIZ)V

    .line 1636
    :goto_1
    iget-object v5, v0, Lorg/telegram/messenger/FileLoadOperation;->preloadTempBuffer:[B

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/4 v8, 0x1

    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v6

    add-int/2addr v7, v9

    const/4 v9, 0x2

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v7, v9

    const/4 v9, 0x3

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v7, v9

    if-nez v7, :cond_6

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_6
    if-ne v7, v8, :cond_7

    const/16 v7, 0xc

    .line 1641
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/16 v8, 0xd

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v6, v8, 0x10

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

    .line 1643
    aget-byte v6, v5, v6

    const/16 v8, 0x6d

    if-ne v6, v8, :cond_8

    const/4 v6, 0x5

    aget-byte v6, v5, v6

    const/16 v8, 0x6f

    if-ne v6, v8, :cond_8

    const/4 v6, 0x6

    aget-byte v6, v5, v6

    if-ne v6, v8, :cond_8

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

    cmp-long v5, v3, v10

    if-ltz v5, :cond_0

    return-wide v3

    .line 1631
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static floorDiv(JJ)J
    .locals 6

    .line 2439
    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    mul-long/2addr p2, v0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method private getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)J"
        }
    .end annotation

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_7

    .line 665
    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v3, v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    .line 680
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 681
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    cmp-long v6, p2, v6

    if-gtz v6, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    move-object v3, v5

    .line 684
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-gtz v6, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-lez v5, :cond_3

    move-wide v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-wide v4, p4

    :goto_1
    cmp-long p1, v4, v1

    if-nez p1, :cond_5

    return-wide v1

    :cond_5
    if-eqz v3, :cond_6

    .line 692
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 694
    :cond_6
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    sub-long/2addr v3, p2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    .line 666
    :cond_7
    :goto_2
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne p1, v0, :cond_8

    return-wide p4

    .line 669
    :cond_8
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_9

    return-wide v1

    :cond_9
    sub-long/2addr v3, p2

    .line 672
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p4, p5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private synthetic lambda$addPart$2(Ljava/util/ArrayList;)V
    .locals 10

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 582
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_0

    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/lit8 v4, v3, 0x10

    add-int/lit8 v4, v4, 0x4

    .line 587
    sget-object v5, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    if-nez v5, :cond_1

    .line 588
    new-instance v5, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-direct {v5, v4}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;-><init>(I)V

    sput-object v5, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->reset()V

    .line 592
    :goto_0
    sget-object v5, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeInt(I)V

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    .line 594
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 595
    sget-object v7, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeLong(J)V

    .line 596
    sget-object v7, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 598
    :cond_2
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_3

    .line 600
    monitor-exit p0

    return-void

    :cond_3
    const-wide/16 v5, 0x0

    .line 602
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 603
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    sget-object v3, Lorg/telegram/messenger/FileLoadOperation;->filesQueueByteBuffer:Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;

    iget-object v3, v3, Lorg/telegram/messenger/utils/ImmutableByteArrayOutputStream;->buf:[B

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 604
    monitor-exit p0

    goto :goto_2

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

    .line 606
    invoke-static {p1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 607
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    .line 608
    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    goto :goto_2

    .line 609
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 610
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 613
    :cond_5
    :goto_2
    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalTime:J

    return-void
.end method

.method private synthetic lambda$cancel$11(Z)V
    .locals 2

    .line 1274
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1275
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cancelRequests()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1276
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :cond_0
    if-eqz p1, :cond_5

    .line 1279
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 1281
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1282
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1285
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1288
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 1290
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1291
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1294
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1297
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 1299
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1300
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1303
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1306
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 1308
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1309
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1312
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1315
    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 1317
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1318
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 1321
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private synthetic lambda$getCurrentFile$3([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 641
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    aput-object v0, p1, v1

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    aput-object v0, p1, v1

    .line 646
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$getDownloadedLengthFromOffset$4([JJJLjava/util/concurrent/CountDownLatch;)V
    .locals 6

    .line 711
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide p2

    const/4 p4, 0x0

    aput-wide p2, p1, p4

    .line 712
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    const-wide/16 p3, 0x1

    .line 713
    aput-wide p3, p1, p2

    .line 715
    :cond_0
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$onFail$17(I)V
    .locals 1

    .line 2014
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v0, :cond_0

    .line 2015
    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    .line 2017
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$12(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1545
    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1547
    :catch_0
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$13()V
    .locals 1

    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$14(Z)V
    .locals 5

    .line 1566
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1567
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

    const-string v1, " dc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 1570
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v0, 0x3000000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1571
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

    .line 1573
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

    .line 1575
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

    .line 1577
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

    .line 1578
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto :goto_0

    .line 1580
    :cond_5
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    .line 1584
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, v0}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$onFinishLoadingFile$15(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1465
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1468
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz p3, :cond_2

    .line 1471
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p4, :cond_e

    .line 1475
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 1477
    :try_start_0
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1478
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    const/high16 v1, 0x200000

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->copyFile(Ljava/io/InputStream;Ljava/io/File;I)Z

    .line 1479
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 1480
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1481
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1482
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

    .line 1486
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isFilNotFoundException(Ljava/lang/Throwable;)Z

    move-result v1

    xor-int/2addr v1, p2

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1487
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1488
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

    .line 1484
    :catch_1
    :goto_2
    iput-boolean p3, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    .line 1492
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-nez p1, :cond_d

    .line 1494
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz p1, :cond_5

    .line 1496
    :try_start_2
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p4, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception p1

    .line 1499
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1503
    :cond_5
    :try_start_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_8

    .line 1504
    sget-object p1, Lorg/telegram/messenger/FileLoadOperation;->lockObject:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1505
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    move v0, p2

    .line 1507
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1508
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    .line 1511
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

    .line 1513
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

    .line 1515
    :goto_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1518
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

    .line 1520
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

    .line 1523
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    const/4 p1, 0x3

    if-nez p3, :cond_9

    .line 1526
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ne v0, p1, :cond_9

    .line 1528
    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1530
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    .line 1533
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    if-nez p3, :cond_c

    .line 1537
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_a

    .line 1538
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to rename temp = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to final = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " retry = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1540
    :cond_a
    iget p3, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/2addr p3, p2

    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge p3, p1, :cond_b

    .line 1542
    iput p2, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1543
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void

    .line 1552
    :cond_b
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_9

    .line 1554
    :cond_c
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1555
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p2, p3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V

    goto :goto_9

    .line 1559
    :cond_d
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1565
    :cond_e
    :goto_9
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$pause$6()V
    .locals 3

    .line 751
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 752
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug_loading:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pause operation, clear requests"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 755
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    goto :goto_1

    .line 757
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 758
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->failNotRunningRequest(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$removePart$1(Lorg/telegram/messenger/FileLoadOperation$Range;Lorg/telegram/messenger/FileLoadOperation$Range;)I
    .locals 4

    .line 516
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 518
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeStreamListener$5(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$requestFileOffsets$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1663
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_3

    .line 1665
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1666
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1667
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1668
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_1

    .line 1669
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_1
    move p2, v0

    .line 1671
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1672
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1673
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1676
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 1677
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1678
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1679
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1680
    invoke-virtual {p0, p2, p1}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1681
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1682
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1683
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_3

    .line 1684
    :cond_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1685
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1686
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_3

    .line 1687
    :cond_6
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1688
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1689
    invoke-static {p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$setIsPreloadVideoOperation$10(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1247
    iput-wide v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1248
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 1249
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 p1, -0x1

    .line 1250
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void
.end method

.method private synthetic lambda$setStream$0(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 64
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {p1}, Lorg/telegram/messenger/FileLoadOperationStream;->newDataAvailable()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$start$7(ZJZ)V
    .locals 9

    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 800
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, p1

    div-long/2addr p2, v1

    int-to-long v1, p1

    mul-long/2addr p2, v1

    .line 801
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-eqz p1, :cond_3

    .line 802
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v3, p1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 804
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v7, p1

    add-long/2addr v7, v1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 805
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 806
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 807
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 809
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    .line 810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame get cancel request at offset "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 812
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 814
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-nez p1, :cond_5

    .line 815
    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    goto :goto_0

    .line 818
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, p1

    div-long/2addr p2, v1

    int-to-long v1, p1

    mul-long/2addr p2, v1

    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    :cond_5
    :goto_0
    if-eqz p4, :cond_7

    .line 824
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    const-wide/16 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_6

    .line 825
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 826
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    :cond_6
    const/4 p1, -0x1

    .line 829
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    const/4 p1, 0x0

    .line 830
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$start$8()V
    .locals 1

    const/4 v0, -0x1

    .line 835
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void
.end method

.method private synthetic lambda$start$9([Z)V
    .locals 7

    .line 1189
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1190
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v0, :cond_1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1191
    :goto_1
    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    if-nez p1, :cond_2

    iget-wide v5, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    .line 1193
    :cond_2
    :try_start_0
    invoke-direct {p0, v2, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1195
    :catch_0
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 1198
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$18(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2276
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    .line 2277
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    return-void
.end method

.method private synthetic lambda$startDownloadRequest$19(ILorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    const/4 v0, 0x0

    .line 2374
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez p4, :cond_2

    .line 2376
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2377
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2378
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 2379
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    .line 2381
    :cond_0
    :goto_0
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 2382
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2383
    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2386
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto :goto_2

    .line 2388
    :cond_2
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FILE_TOKEN_INVALID"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "REQUEST_TOKEN_INVALID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 2393
    :cond_3
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2

    .line 2389
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2390
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2391
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$startDownloadRequest$20(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2306
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2309
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug_loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cdn="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " conType="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reqId"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2312
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    if-ne p1, p2, :cond_3

    .line 2313
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p2, :cond_2

    .line 2314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frame get request completed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x0

    .line 2316
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    :cond_3
    const/4 p2, 0x0

    if-eqz p6, :cond_6

    .line 2319
    iget v0, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x7d0

    if-ne v0, v1, :cond_4

    .line 2320
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2321
    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget p4, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long p4, p4

    sub-long/2addr p2, p4

    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2322
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide p2

    iget p1, p1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long p4, p1

    add-long v4, p2, p4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    return-void

    .line 2324
    :cond_4
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2325
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void

    .line 2327
    :cond_5
    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    if-eqz p4, :cond_6

    .line 2328
    iget-object p4, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "FILE_TOKEN_INVALID"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 2329
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2330
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2331
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    return-void

    .line 2336
    :cond_6
    instance-of p4, p5, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    const/4 v0, 0x1

    if-eqz p4, :cond_c

    .line 2337
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_upload_fileCdnRedirect;

    .line 2338
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_8

    .line 2339
    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-nez p4, :cond_7

    .line 2340
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    :cond_7
    move p4, p2

    .line 2342
    :goto_0
    iget-object p6, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-ge p4, p6, :cond_8

    .line 2343
    iget-object p6, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->file_hashes:Ljava/util/ArrayList;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 2344
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    iget-wide v2, p6, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2347
    :cond_8
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    if-eqz p4, :cond_b

    iget-object p6, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    if-eqz p6, :cond_b

    array-length p4, p4

    const/16 v1, 0x10

    if-ne p4, v1, :cond_b

    array-length p4, p6

    const/16 p6, 0x20

    if-eq p4, p6, :cond_9

    goto :goto_1

    .line 2353
    :cond_9
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    .line 2354
    iget-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    if-nez p4, :cond_a

    .line 2355
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    .line 2356
    new-instance p6, Lorg/telegram/messenger/FileLoadOperation$Range;

    const-wide/16 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    int-to-long v3, v0

    const/4 v5, 0x0

    move-object v0, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2358
    :cond_a
    iget p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->dc_id:I

    iput p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    .line 2359
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_iv:[B

    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    .line 2360
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->encryption_key:[B

    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    .line 2361
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$upload_File;->file_token:[B

    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    .line 2362
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2363
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto/16 :goto_4

    .line 2348
    :cond_b
    :goto_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    const-string p3, "bad redirect response"

    .line 2349
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/16 p3, 0x190

    .line 2350
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 2351
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    goto/16 :goto_4

    .line 2365
    :cond_c
    instance-of p4, p5, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    if-eqz p4, :cond_d

    .line 2366
    iget-boolean p4, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez p4, :cond_17

    .line 2367
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    .line 2368
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    .line 2369
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFileReuploadNeeded;

    .line 2370
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;-><init>()V

    .line 2371
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->file_token:[B

    .line 2372
    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->request_token:[B

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_reuploadCdnFile;->request_token:[B

    .line 2373
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/FileLoadOperation;ILorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    goto/16 :goto_4

    .line 2399
    :cond_d
    instance-of p2, p5, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    if-eqz p2, :cond_e

    .line 2400
    move-object p2, p5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$502(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    goto :goto_2

    .line 2401
    :cond_e
    instance-of p2, p5, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    if-eqz p2, :cond_f

    .line 2402
    move-object p2, p5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$602(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    .line 2403
    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_10

    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    if-eqz p2, :cond_10

    .line 2404
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->size:I

    int-to-long p2, p2

    iput-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    goto :goto_2

    .line 2407
    :cond_f
    move-object p2, p5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    :cond_10
    :goto_2
    if-eqz p5, :cond_16

    .line 2410
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 p3, 0x3000000

    const/4 p4, 0x4

    if-ne p2, p3, :cond_11

    .line 2411
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget p3, p5, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v0, 0x3

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p5

    add-int/2addr p5, p4

    int-to-long p4, p5

    invoke-virtual {p2, p3, v0, p4, p5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto/16 :goto_3

    :cond_11
    const/high16 p3, 0x2000000

    if-ne p2, p3, :cond_12

    .line 2413
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget p3, p5, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v0, 0x2

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p5

    add-int/2addr p5, p4

    int-to-long p4, p5

    invoke-virtual {p2, p3, v0, p4, p5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    :cond_12
    const/high16 p3, 0x1000000

    if-ne p2, p3, :cond_13

    .line 2415
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget p3, p5, Lorg/telegram/tgnet/TLObject;->networkType:I

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p5

    add-int/2addr p5, p4

    int-to-long v0, p5

    invoke-virtual {p2, p3, p4, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    :cond_13
    const/high16 p3, 0x4000000

    if-ne p2, p3, :cond_16

    .line 2417
    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mp3"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "m4a"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 2418
    :cond_14
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget p3, p5, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v0, 0x7

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p5

    add-int/2addr p5, p4

    int-to-long p4, p5

    invoke-virtual {p2, p3, v0, p4, p5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_3

    .line 2420
    :cond_15
    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    iget p3, p5, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v0, 0x5

    invoke-virtual {p5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p5

    add-int/2addr p5, p4

    int-to-long p4, p5

    invoke-virtual {p2, p3, v0, p4, p5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 2424
    :cond_16
    :goto_3
    invoke-virtual {p0, p1, p6}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    :cond_17
    :goto_4
    return-void
.end method

.method private notifyStreamListeners()V
    .locals 3

    .line 625
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->streamListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 628
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

.method private onFinishLoadingFile(ZIZ)V
    .locals 9

    .line 1433
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1436
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1437
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    .line 1438
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 1439
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1460
    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1461
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1462
    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 1463
    sget-object p2, Lorg/telegram/messenger/FileLoadOperation;->filesQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;

    move-object v2, p3

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 1587
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1588
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1589
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1590
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didPreFinishLoading(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    goto/16 :goto_2

    .line 1440
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1441
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_4

    if-ne p2, v1, :cond_3

    .line 1443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "file already exist "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finished preloading file to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " loaded "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " prefSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1448
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz p1, :cond_6

    .line 1449
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 1450
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1452
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    if-eqz p1, :cond_6

    .line 1453
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {p2, p3}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1456
    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didPreFinishLoading(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    .line 1457
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    :goto_2
    return-void
.end method

.method private removePart(Ljava/util/ArrayList;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/FileLoadOperation$Range;",
            ">;JJ)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    cmp-long v0, p4, p2

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 500
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 504
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 505
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-nez v5, :cond_1

    .line 506
    invoke-static {v4, p4, p5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    :goto_1
    move v0, v3

    goto :goto_2

    .line 509
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    cmp-long v5, p4, v5

    if-nez v5, :cond_2

    .line 510
    invoke-static {v4, p2, p3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$002(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 515
    :goto_2
    sget-object v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda17;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 524
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$Range;

    add-int/lit8 v4, v1, 0x1

    .line 525
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 526
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v6

    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 527
    invoke-static {v5}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$102(Lorg/telegram/messenger/FileLoadOperation$Range;J)J

    .line 528
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 533
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/4 v9, 0x0

    move-object v4, v0

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private requestFileOffsets(J)V
    .locals 10

    .line 1654
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1657
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 1658
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;-><init>()V

    .line 1659
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->file_token:[B

    .line 1660
    iput-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->offset:J

    .line 1661
    iget p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

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

    .line 2082
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2085
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)V

    const/4 v0, 0x1

    .line 2086
    iput-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    .line 2087
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    .line 2088
    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2089
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-gez v3, :cond_1

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_1

    .line 2090
    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    .line 2093
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    .line 2094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file reference expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2096
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    aput-object v5, v4, v1

    aput-object p0, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateParams()V
    .locals 4

    .line 266
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->getfileExperimentalParams:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x80000

    .line 267
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/16 v0, 0x8

    .line 268
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 269
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    goto :goto_0

    :cond_1
    const/high16 v0, 0x20000

    .line 271
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    const/4 v0, 0x4

    .line 272
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    .line 273
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    :goto_0
    const-wide/32 v0, 0x7d000000

    .line 275
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->maxCdnParts:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1269
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->cancel(Z)V

    return-void
.end method

.method public checkPrefixPreloadFinished()Z
    .locals 6

    .line 75
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    move v0, v1

    .line 77
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 78
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 79
    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected getCacheFileFinal()Ljava/io/File;
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    return-object v0
.end method

.method protected getCurrentFile()Ljava/io/File;
    .locals 4

    .line 638
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Ljava/io/File;

    .line 640
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 649
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 651
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 653
    aget-object v0, v1, v0

    return-object v0
.end method

.method protected getCurrentFileFast()Ljava/io/File;
    .locals 2

    .line 657
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    return-object v0

    .line 660
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    .line 493
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getDatacenterId()I
    .locals 1

    .line 456
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->initialDatacenterId:I

    return v0
.end method

.method protected getDownloadedLengthFromOffset(F)F
    .locals 6

    .line 700
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRangesCopy:Ljava/util/ArrayList;

    .line 701
    iget-wide v4, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-long v2, v0

    move-object v0, p0

    .line 704
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

    .line 708
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 710
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v9

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileLoadOperation;[JJJLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 718
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v9
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInQueue()I
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getPosition(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 472
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return v0
.end method

.method public getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-object v0
.end method

.method public isFinished()Z
    .locals 2

    .line 2448
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceRequest()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1232
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    return v0
.end method

.method public isPreloadFinished()Z
    .locals 1

    .line 1265
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    return v0
.end method

.method public isPreloadVideoOperation()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    return v0
.end method

.method protected onFail(ZI)V
    .locals 7

    .line 2000
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 2001
    :goto_0
    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 2002
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz v1, :cond_3

    .line 2003
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_3

    .line 2004
    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    sub-long v3, v1, v3

    :goto_1
    const-string v1, " size = "

    const-string v2, " dc = "

    const-string v5, " time = "

    if-ne p2, v0, :cond_2

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel downloading file to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 2008
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed downloading file to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " reason = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 2013
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2020
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    if-eqz p1, :cond_5

    .line 2021
    invoke-interface {p1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    .line 2023
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->notifyStreamListeners()V

    :goto_3
    return-void
.end method

.method public pause()V
    .locals 2

    .line 746
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 749
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    .line 750
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 46

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1700
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const-string v3, " offset "

    const-string v4, " "

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v9, :cond_1

    .line 1701
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_0

    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1702
    new-instance v1, Lorg/telegram/messenger/FileLog$IgnoreSentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to write to finished file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/FileLog$IgnoreSentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return v10

    .line 1706
    :cond_1
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v11, " local_id = "

    const/4 v7, 0x2

    const-string v13, " id = "

    if-nez v1, :cond_3a

    .line 1709
    :try_start_0
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v15

    cmp-long v1, v1, v15

    if-eqz v1, :cond_2

    .line 1710
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return v10

    .line 1714
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1715
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    :goto_0
    move-object v15, v1

    goto :goto_1

    .line 1716
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1717
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    .line 1718
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1719
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_36

    .line 1723
    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1b

    .line 1727
    :cond_6
    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    .line 1728
    iget-boolean v2, v8, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v2, :cond_8

    .line 1729
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v16

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v5, v2

    div-long v16, v16, v5

    int-to-long v4, v2

    mul-long v4, v4, v16

    .line 1731
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_8

    .line 1733
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 1734
    invoke-direct {v8, v4, v5}, Lorg/telegram/messenger/FileLoadOperation;->requestFileOffsets(J)V

    return v9

    .line 1739
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    const/16 v16, 0xc

    const/16 v17, 0xd

    const/16 v19, 0x8

    const/16 v20, 0xe

    const/16 v21, 0xf

    const-wide/16 v22, 0x10

    const/16 v24, 0x18

    const/16 v25, 0x10

    const-wide/16 v26, 0xff

    if-eqz v2, :cond_9

    .line 1740
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    div-long v4, v4, v22

    .line 1741
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    move-object/from16 v28, v13

    and-long v12, v4, v26

    long-to-int v6, v12

    int-to-byte v6, v6

    aput-byte v6, v2, v21

    shr-long v12, v4, v19

    and-long v12, v12, v26

    long-to-int v6, v12

    int-to-byte v6, v6

    .line 1742
    aput-byte v6, v2, v20

    shr-long v12, v4, v25

    and-long v12, v12, v26

    long-to-int v6, v12

    int-to-byte v6, v6

    .line 1743
    aput-byte v6, v2, v17

    shr-long v4, v4, v24

    and-long v4, v4, v26

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1744
    aput-byte v4, v2, v16

    .line 1745
    iget-object v4, v15, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    invoke-static {v4, v5, v2, v10, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    goto :goto_3

    :cond_9
    move-object/from16 v28, v13

    .line 1750
    :goto_3
    iget-boolean v2, v8, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v2, :cond_13

    .line 1751
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1752
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1753
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v2, v2, 0x10

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1754
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 1755
    iget-object v6, v15, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1756
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_a

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "save preload file part "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1759
    :cond_a
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v2, :cond_b

    .line 1760
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 1762
    :cond_b
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    iget v11, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v11, v11

    const/16 v33, 0x0

    move-object/from16 v28, v6

    move-wide/from16 v29, v11

    move-wide/from16 v31, v4

    invoke-direct/range {v28 .. v33}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    add-int/2addr v2, v1

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 1765
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/2addr v2, v1

    iput v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1767
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-nez v1, :cond_e

    .line 1768
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v4

    move-object/from16 v1, p0

    const-wide/16 v12, 0x0

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->findNextPreloadDownloadOffset(JJLorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-gez v3, :cond_d

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    .line 1771
    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v5, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1772
    iget-wide v5, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v15, 0x2

    div-long/2addr v5, v15

    cmp-long v3, v3, v5

    if-gez v3, :cond_c

    const-wide/32 v3, 0x100000

    add-long/2addr v3, v1

    .line 1773
    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    .line 1774
    iput v9, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    goto :goto_4

    :cond_c
    const-wide/32 v3, 0x200000

    .line 1776
    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    .line 1777
    iput v7, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    :goto_4
    const-wide/16 v3, -0x1

    .line 1779
    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    goto :goto_5

    .line 1781
    :cond_d
    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    iget v5, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1783
    :goto_5
    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    goto :goto_6

    :cond_e
    const-wide/16 v12, 0x0

    .line 1785
    :goto_6
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1786
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1787
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1788
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    add-int/lit8 v1, v1, 0x18

    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    .line 1789
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    cmp-long v3, v1, v12

    if-eqz v3, :cond_11

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v3, :cond_f

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    cmp-long v3, v3, v12

    if-ltz v3, :cond_11

    :cond_f
    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    const/high16 v4, 0x200000

    if-gt v3, v4, :cond_11

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_10

    goto :goto_7

    :cond_10
    move v1, v10

    goto :goto_8

    :cond_11
    :goto_7
    move v1, v9

    :goto_8
    if-eqz v1, :cond_12

    .line 1791
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1792
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v9}, Ljava/io/RandomAccessFile;->write(I)V

    goto/16 :goto_17

    .line 1793
    :cond_12
    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v2, :cond_2f

    .line 1794
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    goto/16 :goto_17

    :cond_13
    const-wide/16 v12, 0x0

    .line 1797
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    .line 1798
    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v18, v6, v12

    if-lez v18, :cond_17

    cmp-long v1, v2, v6

    if-gez v1, :cond_15

    .line 1799
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v1, :cond_14

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-ltz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    move v1, v10

    goto :goto_a

    :cond_15
    :goto_9
    move v1, v9

    .line 1800
    :goto_a
    iget-wide v2, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_16

    move v10, v9

    :cond_16
    move v9, v1

    goto :goto_d

    .line 1804
    :cond_17
    iget v14, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v1, v14, :cond_1a

    cmp-long v1, v6, v2

    if-eqz v1, :cond_18

    int-to-long v9, v14

    rem-long v9, v2, v9

    cmp-long v1, v9, v12

    if-eqz v1, :cond_19

    :cond_18
    cmp-long v1, v6, v12

    if-lez v1, :cond_1a

    cmp-long v1, v6, v2

    if-gtz v1, :cond_19

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v1, 0x1

    :goto_c
    move v9, v1

    const/4 v10, 0x0

    .line 1806
    :goto_d
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 1809
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_1d

    .line 1810
    iget-object v2, v15, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v36

    move-object/from16 v30, v2

    move-object/from16 v31, v1

    move-object/from16 v32, v3

    invoke-static/range {v30 .. v36}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    if-eqz v9, :cond_1d

    .line 1811
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_1d

    .line 1812
    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    iget-wide v6, v8, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:J

    sub-long/2addr v1, v6

    .line 1813
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_1c

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v1, v6

    if-gtz v3, :cond_1b

    goto :goto_e

    .line 1814
    :cond_1b
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

    :cond_1c
    :goto_e
    long-to-int v1, v1

    .line 1816
    invoke-virtual {v15, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    .line 1819
    :cond_1d
    iget-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v1, :cond_1e

    .line 1820
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    div-long v1, v1, v22

    .line 1821
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    and-long v6, v1, v26

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v21

    shr-long v6, v1, v19

    and-long v6, v6, v26

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1822
    aput-byte v6, v3, v20

    shr-long v6, v1, v25

    and-long v6, v6, v26

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1823
    aput-byte v6, v3, v17

    shr-long v1, v1, v24

    and-long v1, v1, v26

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1824
    aput-byte v1, v3, v16

    .line 1825
    iget-object v1, v15, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v7, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 1828
    :cond_1e
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    .line 1829
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1830
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_1f

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save file part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

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

    .line 1834
    :cond_1f
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1835
    iget-object v2, v15, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1836
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v14

    add-long/2addr v14, v4

    const/16 v30, 0x1

    move-object/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v14

    move/from16 v7, v30

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 1837
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 1841
    iget-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v1, :cond_2c

    .line 1842
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v3, v3

    div-long v14, v1, v3

    .line 1844
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    .line 1848
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1849
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-gtz v4, :cond_20

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v3

    cmp-long v3, v14, v3

    if-gtz v3, :cond_20

    const/4 v1, 0x0

    goto :goto_10

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_2c

    .line 1855
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v2, v1

    mul-long v5, v14, v2

    .line 1856
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    int-to-long v3, v1

    move-object/from16 v1, p0

    move-wide/from16 v30, v3

    move-wide v3, v5

    move-wide/from16 v37, v5

    move-wide/from16 v5, v30

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffsetInternal(Ljava/util/ArrayList;JJ)J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_2c

    .line 1857
    iget v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_23

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v5, v3, v12

    if-lez v5, :cond_22

    move-wide/from16 v5, v37

    sub-long v30, v3, v5

    cmp-long v7, v1, v30

    if-eqz v7, :cond_24

    goto :goto_11

    :cond_22
    move-wide/from16 v5, v37

    :goto_11
    cmp-long v3, v3, v12

    if-gtz v3, :cond_2c

    if-eqz v9, :cond_2c

    goto :goto_12

    :cond_23
    move-wide/from16 v5, v37

    .line 1858
    :cond_24
    :goto_12
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_fileHash;

    .line 1859
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_25

    .line 1860
    iget v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnChunkCheckSize:I

    new-array v4, v4, [B

    iput-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    .line 1861
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v12, "r"

    invoke-direct {v4, v7, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    .line 1863
    :cond_25
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1864
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_27

    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v1, v12

    if-gtz v4, :cond_26

    goto :goto_13

    .line 1865
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1867
    :cond_27
    :goto_13
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    long-to-int v12, v1

    const/4 v13, 0x0

    invoke-virtual {v4, v7, v13, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1869
    iget-boolean v4, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v4, :cond_28

    .line 1870
    div-long v12, v5, v22

    .line 1871
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    move/from16 p2, v9

    move/from16 v22, v10

    and-long v9, v12, v26

    long-to-int v7, v9

    int-to-byte v7, v7

    aput-byte v7, v4, v21

    shr-long v9, v12, v19

    and-long v9, v9, v26

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 1872
    aput-byte v7, v4, v20

    shr-long v9, v12, v25

    and-long v9, v9, v26

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 1873
    aput-byte v7, v4, v17

    shr-long v9, v12, v24

    and-long v9, v9, v26

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 1874
    aput-byte v7, v4, v16

    .line 1875
    iget-object v7, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    iget-object v9, v8, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v42, 0x0

    const/16 v45, 0x0

    move-object/from16 v39, v7

    move-object/from16 v40, v9

    move-object/from16 v41, v4

    move-wide/from16 v43, v1

    invoke-static/range {v39 .. v45}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    goto :goto_14

    :cond_28
    move/from16 p2, v9

    move/from16 v22, v10

    .line 1878
    :goto_14
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    const/4 v7, 0x0

    invoke-static {v4, v7, v1, v2}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v1

    .line 1879
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_fileHash;->hash:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1880
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2a

    .line 1881
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_29

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid cdn hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " access_hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " volume_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto :goto_15

    :cond_29
    move-object/from16 v2, v28

    .line 1883
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v0, :cond_2a

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid cdn hash  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2a
    :goto_15
    const/4 v1, 0x0

    .line 1887
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 1888
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v1

    .line 1891
    :cond_2b
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notCheckedCdnRanges:Ljava/util/ArrayList;

    const-wide/16 v3, 0x1

    add-long v5, v14, v3

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-wide v3, v14

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    goto :goto_16

    :cond_2c
    move/from16 p2, v9

    move/from16 v22, v10

    .line 1896
    :goto_16
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2d

    const-wide/16 v2, 0x0

    .line 1897
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1898
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1900
    :cond_2d
    iget-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2e

    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 1901
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 1902
    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-wide v3, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v5, v8, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_2e
    move/from16 v1, p2

    move/from16 v10, v22

    :cond_2f
    :goto_17
    const/4 v2, 0x0

    .line 1906
    :goto_18
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1907
    iget-object v3, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 1908
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-nez v4, :cond_31

    iget-wide v4, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_30

    goto :goto_19

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1909
    :cond_31
    :goto_19
    iget-object v4, v8, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1910
    invoke-virtual {v8, v3, v5}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1911
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1912
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1913
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    goto :goto_1a

    .line 1914
    :cond_32
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1915
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1916
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$600(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_1a

    .line 1917
    :cond_33
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 1918
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    const/4 v4, 0x0

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 1919
    invoke-static {v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    :cond_34
    :goto_1a
    if-eqz v1, :cond_35

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1927
    invoke-direct {v8, v1, v2, v10}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V

    goto/16 :goto_1d

    .line 1928
    :cond_35
    iget v1, v8, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3c

    .line 1929
    iget v0, v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto/16 :goto_1d

    :cond_36
    :goto_1b
    move v1, v9

    move v2, v10

    .line 1724
    invoke-direct {v8, v1, v2, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 1932
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isFilNotFoundException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_1c

    :cond_37
    const/4 v1, 0x0

    :goto_1c
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1933
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 1934
    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1d

    :cond_38
    const/4 v1, 0x0

    .line 1935
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1936
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    const/4 v3, 0x1

    .line 1937
    invoke-virtual {v8, v3, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1d

    .line 1939
    :cond_39
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1d

    :cond_3a
    move-object v2, v13

    const/4 v5, 0x0

    .line 1943
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "LIMIT_INVALID"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1944
    iget-object v2, v8, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v5

    iget v1, v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    int-to-long v9, v1

    add-long/2addr v5, v9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->removePart(Ljava/util/ArrayList;JJ)V

    .line 1945
    iget-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 1946
    iput-boolean v1, v8, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    const v1, 0x8000

    .line 1947
    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v1, 0x4

    .line 1948
    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 1950
    :cond_3b
    iget v0, v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    :cond_3c
    :goto_1d
    const/4 v1, 0x0

    goto/16 :goto_21

    .line 1951
    :cond_3d
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v6, "FILE_MIGRATE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1952
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1953
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v3, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1957
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1e

    :catch_1
    move-object v14, v5

    :goto_1e
    if-nez v14, :cond_3e

    const/4 v1, 0x0

    .line 1962
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1d

    .line 1964
    :cond_3e
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v8, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const-wide/16 v1, 0x0

    .line 1965
    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v1, v8, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1966
    iget v0, v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest(I)V

    goto :goto_1d

    .line 1968
    :cond_3f
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "OFFSET_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1969
    iget-wide v0, v8, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget v2, v8, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1971
    :try_start_2
    invoke-direct {v8, v1, v3, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1f

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1973
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1974
    invoke-virtual {v8, v3, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1f

    :cond_40
    const/4 v3, 0x0

    .line 1977
    invoke-virtual {v8, v3, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_1f

    :cond_41
    const/4 v3, 0x0

    .line 1979
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v5, "RETRY_LIMIT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1980
    invoke-virtual {v8, v3, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_1f
    move v1, v3

    goto/16 :goto_21

    .line 1982
    :cond_42
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_44

    .line 1983
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_43

    .line 1984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " access_hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " volume_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    goto :goto_20

    .line 1985
    :cond_43
    iget-object v0, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v0, :cond_44

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_44
    :goto_20
    const/4 v1, 0x0

    .line 1989
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_21
    return v1
.end method

.method protected removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V
    .locals 2

    .line 730
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0

    .line 2435
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-void
.end method

.method public setEncryptFile(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 451
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    :cond_0
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public setIsPreloadVideoOperation(Z)V
    .locals 5

    .line 1236
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/32 v3, 0x200000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 1240
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1241
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 p1, 0x0

    .line 1242
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 1243
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->preloadFinished:Z

    .line 1244
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    goto :goto_0

    .line 1245
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1246
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1253
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    goto :goto_0

    .line 1256
    :cond_3
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setPaths(ILjava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p4, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 477
    iput-object p5, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 478
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    .line 479
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->fileName:Ljava/lang/String;

    .line 480
    iput-object p6, p0, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    .line 481
    iput-object p3, p0, Lorg/telegram/messenger/FileLoadOperation;->priorityQueue:Lorg/telegram/messenger/FileLoaderPriorityQueue;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 468
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    return-void
.end method

.method public setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    .line 55
    iput-wide p3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    .line 56
    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    .line 57
    sget-object p2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperationStream;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()Z
    .locals 4

    .line 765
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->stream:Lorg/telegram/messenger/FileLoadOperationStream;

    iget-wide v1, p0, Lorg/telegram/messenger/FileLoadOperation;->streamOffset:J

    iget-boolean v3, p0, Lorg/telegram/messenger/FileLoadOperation;->streamPriority:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z

    move-result v0

    return v0
.end method

.method public start(Lorg/telegram/messenger/FileLoadOperationStream;JZ)Z
    .locals 27

    move-object/from16 v7, p0

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->startTime:J

    .line 770
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->updateParams()V

    .line 771
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_storyItem;

    iput-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    .line 772
    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_7

    .line 773
    iget-boolean v1, v7, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    if-eqz v1, :cond_1

    .line 774
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "debug_loading: restart with small chunk"

    .line 775
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const v0, 0x8000

    .line 777
    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    const/4 v0, 0x4

    .line 778
    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 780
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 781
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    .line 782
    :cond_2
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isStream:Z

    if-eqz v0, :cond_3

    .line 783
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeAnimation:I

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 784
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsAnimation:I

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    goto :goto_3

    .line 786
    :cond_3
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->bigFileSizeFrom:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v9

    :goto_0
    if-eqz v0, :cond_5

    .line 787
    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSizeBig:I

    goto :goto_1

    :cond_5
    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadChunkSize:I

    :goto_1
    iput v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-eqz v0, :cond_6

    .line 788
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequestsBig:I

    goto :goto_2

    :cond_6
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->maxDownloadRequests:I

    :goto_2
    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 791
    :cond_7
    :goto_3
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v0, :cond_8

    move v0, v8

    goto :goto_4

    :cond_8
    move v0, v9

    .line 792
    :goto_4
    iget-boolean v10, v7, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    .line 793
    iput-boolean v9, v7, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-eqz p1, :cond_9

    .line 795
    sget-object v11, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-wide/from16 v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileLoadOperation;ZJZ)V

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    .line 834
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v7}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    return v10

    .line 841
    :cond_b
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v0, :cond_c

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-nez v0, :cond_c

    .line 842
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v9

    .line 846
    :cond_c
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v1, v0

    div-long v1, p2, v1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    iput-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 848
    iget-boolean v1, v7, Lorg/telegram/messenger/FileLoadOperation;->allowDisordererFileSave:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    iget-wide v4, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_d

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_d

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    .line 858
    :cond_d
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    const-string v1, "_64.iv.enc"

    const-string v4, "_64.iv"

    const-string v5, ".enc"

    const-string v6, ".temp.enc"

    const-string v10, ".temp"

    const-string v11, "."

    if-eqz v0, :cond_11

    .line 859
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v0, v0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    iget-boolean v13, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v13, :cond_e

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 863
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_10

    .line 864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 867
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 869
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_f

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    goto :goto_6

    :cond_f
    move-object v4, v1

    :cond_10
    const/4 v0, 0x0

    :goto_6
    move-object v1, v0

    :goto_7
    const/4 v2, 0x0

    const/4 v12, 0x0

    goto/16 :goto_e

    .line 874
    :cond_11
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    cmp-long v15, v13, v2

    const-string v12, "_64.pt"

    const-string v2, "_64.preload"

    const-string v3, "_"

    if-eqz v15, :cond_17

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v15, :cond_17

    .line 875
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    const/high16 v15, -0x80000000

    if-eq v0, v15, :cond_16

    const-wide/32 v15, -0x80000000

    cmp-long v13, v13, v15

    if-eqz v13, :cond_16

    if-nez v0, :cond_12

    goto/16 :goto_a

    .line 880
    :cond_12
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_13

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 883
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_19

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 887
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 889
    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_14

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    .line 892
    :goto_8
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_15

    .line 893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    .line 895
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_d

    .line 876
    :cond_16
    :goto_a
    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v9

    .line 898
    :cond_17
    iget v11, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    if-eqz v11, :cond_4e

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-nez v0, :cond_18

    goto/16 :goto_2c

    .line 902
    :cond_18
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v0, :cond_1a

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 905
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_19

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 909
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 911
    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v1, :cond_1b

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    .line 914
    :goto_b
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_1c
    const/4 v4, 0x0

    .line 917
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object v12, v4

    move-object v4, v0

    .line 922
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    sub-int/2addr v3, v8

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 924
    iput v8, v7, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 926
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v3, :cond_1d

    .line 927
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 928
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remote"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".attheme"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_f

    .line 930
    :cond_1d
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-nez v0, :cond_1e

    .line 931
    new-instance v0, Ljava/io/File;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->storeFileName:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    goto :goto_f

    .line 933
    :cond_1e
    new-instance v0, Ljava/io/File;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 936
    :goto_f
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 937
    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->parentObject:Ljava/lang/Object;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez v3, :cond_1f

    iget-wide v10, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v13, 0x0

    cmp-long v3, v10, v13

    if-eqz v3, :cond_22

    iget-boolean v3, v7, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-nez v3, :cond_22

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v3, v10, v13

    if-eqz v3, :cond_22

    .line 938
    :cond_1f
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_20

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_loading: delete existing file cause file size mismatch "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " totalSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " existingFileSize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 941
    :cond_20
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->hasAnotherRefOnFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 942
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    move v0, v9

    :cond_22
    if-nez v0, :cond_4a

    .line 949
    new-instance v0, Ljava/io/File;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 950
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->ungzip:Z

    if-eqz v0, :cond_23

    .line 951
    new-instance v0, Ljava/io/File;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".gz"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileGzipTemp:Ljava/io/File;

    .line 955
    :cond_23
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    const-string/jumbo v4, "rws"

    if-eqz v0, :cond_27

    .line 956
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".key"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 958
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 960
    iput-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/16 v13, 0x10

    new-array v14, v13, [B

    .line 961
    iput-object v14, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-lez v16, :cond_24

    const-wide/16 v16, 0x30

    .line 962
    rem-long v10, v10, v16

    cmp-long v10, v10, v14

    if-nez v10, :cond_24

    .line 963
    invoke-virtual {v5, v6, v9, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 964
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0, v9, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move v6, v9

    goto :goto_10

    .line 966
    :cond_24
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 967
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 968
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 969
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v8

    .line 973
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

    .line 975
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 977
    :goto_11
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    move v6, v9

    .line 979
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 980
    invoke-static {v8}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    .line 981
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_13

    .line 982
    :cond_25
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 983
    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 984
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_13

    .line 986
    :cond_26
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_27
    move v6, v9

    :goto_13
    new-array v5, v8, [Z

    aput-boolean v9, v5, v9

    .line 992
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    const-wide/16 v13, 0x8

    if-eqz v0, :cond_33

    if-eqz v2, :cond_33

    .line 993
    new-instance v0, Ljava/io/File;

    iget-object v15, v7, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 996
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    .line 997
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    .line 999
    iput v8, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    const-wide/16 v17, 0x0

    sub-long v19, v15, v17

    const-wide/16 v17, 0x1

    cmp-long v0, v19, v17

    if-lez v0, :cond_31

    .line 1001
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-eqz v0, :cond_28

    move v0, v8

    goto :goto_14

    :cond_28
    move v0, v9

    :goto_14
    aput-boolean v0, v5, v9

    :goto_15
    cmp-long v0, v17, v15

    if-gez v0, :cond_31

    sub-long v19, v15, v17

    cmp-long v0, v19, v13

    if-gez v0, :cond_29

    goto/16 :goto_19

    .line 1007
    :cond_29
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-long v17, v17, v13

    sub-long v21, v15, v17

    cmp-long v0, v21, v13

    if-ltz v0, :cond_31

    const-wide/16 v21, 0x0

    cmp-long v0, v19, v21

    if-ltz v0, :cond_31

    move-object v2, v4

    .line 1009
    :try_start_4
    iget-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v19, v3

    if-lez v0, :cond_2a

    :goto_16
    goto/16 :goto_1a

    .line 1012
    :cond_2a
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    add-long v17, v17, v13

    sub-long v21, v15, v17

    cmp-long v0, v21, v3

    if-ltz v0, :cond_32

    .line 1014
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v13, v0

    cmp-long v0, v3, v13

    if-lez v0, :cond_2b

    goto :goto_16

    .line 1017
    :cond_2b
    new-instance v0, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    const/16 v26, 0x0

    move-object/from16 v21, v0

    move-wide/from16 v22, v17

    move-wide/from16 v24, v3

    invoke-direct/range {v21 .. v26}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-long v13, v17, v3

    .line 1019
    :try_start_5
    iget-object v9, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v21, v15, v13

    const-wide/16 v23, 0x18

    cmp-long v9, v21, v23

    if-gez v9, :cond_2c

    goto :goto_16

    .line 1023
    :cond_2c
    iget-object v9, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/messenger/FileLoadOperation;->foundMoovSize:J

    const-wide/16 v21, 0x0

    cmp-long v25, v8, v21

    if-eqz v25, :cond_2e

    .line 1025
    iget-wide v10, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v26, v5

    move/from16 v25, v6

    :try_start_6
    iget-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v21, 0x2

    div-long v5, v5, v21

    cmp-long v5, v10, v5

    if-lez v5, :cond_2d

    const/4 v5, 0x2

    goto :goto_17

    :cond_2d
    const/4 v5, 0x1

    :goto_17
    iput v5, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    .line 1026
    iput-wide v8, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    goto :goto_18

    :cond_2e
    move-object/from16 v26, v5

    move/from16 v25, v6

    .line 1028
    :goto_18
    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    iput-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    .line 1029
    iget-object v5, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    iput-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->nextAtomOffset:J

    add-long v5, v13, v23

    .line 1032
    iget-object v8, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v8, :cond_2f

    .line 1033
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    .line 1035
    :cond_2f
    iget-object v8, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v8, :cond_30

    .line 1036
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 1038
    :cond_30
    iget-object v8, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    int-to-long v8, v0

    add-long/2addr v8, v3

    long-to-int v0, v8

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalPreloadedBytes:I

    .line 1042
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v8, v0

    const-wide/16 v10, 0x24

    add-long/2addr v3, v10

    add-long/2addr v8, v3

    long-to-int v0, v8

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    move-object v4, v2

    move-wide/from16 v17, v5

    move/from16 v6, v25

    move-object/from16 v5, v26

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v13, 0x8

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v25, v6

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1c

    :cond_31
    :goto_19
    move-object v2, v4

    :cond_32
    :goto_1a
    move-object/from16 v26, v5

    move/from16 v25, v6

    .line 1045
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStreamFileOffset:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1e

    :catch_5
    move-exception v0

    :goto_1b
    const/4 v3, 0x0

    goto :goto_1d

    :catch_6
    move-exception v0

    move-object v2, v4

    :goto_1c
    move-object/from16 v26, v5

    move/from16 v25, v6

    move v3, v9

    .line 1047
    :goto_1d
    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1049
    :goto_1e
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_34

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-nez v0, :cond_34

    const/4 v3, 0x0

    .line 1050
    iput-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFilePreload:Ljava/io/File;

    .line 1052
    :try_start_7
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_34

    .line 1054
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1f

    :catch_7
    move-exception v0

    .line 1056
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1058
    :goto_1f
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v3, 0x0

    .line 1059
    iput-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_20

    :catch_8
    move-exception v0

    .line 1062
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_33
    move-object v2, v4

    move-object/from16 v26, v5

    move/from16 v25, v6

    :cond_34
    :goto_20
    if-eqz v12, :cond_36

    .line 1068
    new-instance v0, Ljava/io/File;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    .line 1069
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1070
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1073
    :cond_35
    :try_start_a
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    .line 1074
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    .line 1075
    rem-long v5, v3, v5

    const-wide/16 v8, 0x4

    cmp-long v0, v5, v8

    if-nez v0, :cond_36

    sub-long/2addr v3, v8

    .line 1077
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v8, 0x2

    .line 1078
    div-long/2addr v3, v8

    cmp-long v3, v5, v3

    if-gtz v3, :cond_36

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_36

    .line 1080
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 1081
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->filePartsStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 1082
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/16 v16, 0x0

    move-object v8, v13

    move-wide v9, v4

    move-wide v11, v14

    move/from16 p1, v0

    move-object v0, v13

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    const/4 v13, 0x0

    move-object v8, v6

    move-wide v9, v4

    move-wide v11, v14

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_21

    :catch_9
    move-exception v0

    .line 1088
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isFilNotFoundException(Ljava/lang/Throwable;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1092
    :cond_36
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    if-eqz v0, :cond_37

    .line 1093
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileParts:Ljava/io/File;

    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 1094
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->fileMetadata:Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/FilePathDatabase;->saveFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)V

    .line 1098
    :cond_37
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz v25, :cond_38

    .line 1100
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_23

    .line 1102
    :cond_38
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    if-eqz v1, :cond_39

    .line 1103
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v0

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_39

    .line 1104
    iput-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    goto :goto_22

    .line 1106
    :cond_39
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/FileLoadOperation;->floorDiv(JJ)J

    move-result-wide v3

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v5, v0

    mul-long/2addr v3, v5

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1108
    :goto_22
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1109
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v9, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v11, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v9, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iget-wide v11, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1113
    :cond_3a
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1114
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/FileLoadOperation$Range;

    iget-wide v11, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/FileLoadOperation$Range;-><init>(JJLorg/telegram/messenger/FileLoadOperation$1;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_3b
    :goto_23
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    .line 1118
    iget-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    .line 1119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_3c

    .line 1122
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->notLoadedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation$Range;

    .line 1123
    iget-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-static {v4}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long/2addr v5, v8

    iput-wide v5, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1125
    :cond_3c
    iget-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1128
    :cond_3d
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3f

    .line 1129
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_3e

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start preloading file to temp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_25

    .line 1132
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start loading file to temp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " final = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " priority"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->priority:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3f
    :goto_25
    if-eqz v1, :cond_44

    .line 1137
    new-instance v0, Ljava/io/File;

    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 1139
    :try_start_b
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 1140
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_44

    if-nez v25, :cond_44

    .line 1141
    :try_start_c
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-lez v5, :cond_41

    const-wide/16 v5, 0x40

    .line 1142
    rem-long/2addr v0, v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    cmp-long v0, v0, v3

    if-nez v0, :cond_40

    .line 1143
    :try_start_d
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_27

    :cond_40
    const-wide/16 v3, 0x0

    .line 1145
    :cond_41
    :try_start_e
    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_27

    :catch_a
    move-exception v0

    goto :goto_26

    :catch_b
    move-exception v0

    const-wide/16 v3, 0x0

    .line 1149
    :goto_26
    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    iput-wide v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 1150
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    .line 1151
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v1, 0x0

    .line 1152
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_27

    :cond_42
    const/4 v1, 0x0

    .line 1153
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1154
    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1155
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_27

    .line 1157
    :cond_43
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1161
    :cond_44
    :goto_27
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_45

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_45

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_45

    .line 1162
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->copyNotLoadedRanges()V

    .line 1164
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->updateProgress()V

    .line 1166
    :try_start_f
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 1167
    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_46

    .line 1168
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :cond_46
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_28

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    .line 1171
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1172
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    .line 1173
    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v3, -0x1

    .line 1174
    invoke-virtual {v7, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v1

    :cond_47
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1176
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1177
    iget-object v4, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1178
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1179
    invoke-virtual {v7, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v1

    .line 1183
    :cond_48
    :goto_28
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_49

    .line 1184
    invoke-virtual {v7, v2, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v1

    .line 1187
    :cond_49
    iput-boolean v2, v7, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1188
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;

    move-object/from16 v3, v26

    invoke-direct {v1, v7, v3}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileLoadOperation;[Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    move v1, v2

    goto :goto_2b

    :cond_4a
    move v2, v8

    move v1, v9

    .line 1202
    iput-boolean v2, v7, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 1204
    :try_start_10
    invoke-direct {v7, v1, v2, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 1205
    :try_start_11
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    if-eqz v0, :cond_4b

    .line 1206
    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->saveFilePath(Lorg/telegram/messenger/FilePathDatabase$PathData;Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    :cond_4b
    const/4 v1, 0x1

    goto :goto_2b

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    goto :goto_29

    :catch_e
    move-exception v0

    .line 1209
    :goto_29
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1210
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isENOSPC(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    .line 1211
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->checkFreeDiscSpaceStatic(I)V

    const/4 v2, -0x1

    .line 1212
    invoke-virtual {v7, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_2a

    :cond_4c
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1213
    :goto_2a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isEROFS(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1214
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->checkSdCard(Ljava/io/File;)V

    .line 1215
    invoke-virtual {v7, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    const/4 v2, 0x0

    return v2

    :cond_4d
    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v7, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    :goto_2b
    return v1

    :cond_4e
    :goto_2c
    move v1, v8

    move v2, v9

    .line 899
    invoke-virtual {v7, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return v2
.end method

.method protected startDownloadRequest(I)V
    .locals 28

    move-object/from16 v7, p0

    .line 2100
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_1

    .line 2101
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2102
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 2108
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->paused:Z

    if-nez v0, :cond_2b

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    if-nez v0, :cond_2b

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2b

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestingReference:Z

    if-nez v0, :cond_2b

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const-wide/16 v9, 0x0

    if-nez v0, :cond_2

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_2

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v0, :cond_2

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 2109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-ge v0, v1, :cond_2b

    :cond_2
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_3

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2b

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_3

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 2110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    goto/16 :goto_17

    .line 2117
    :cond_3
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    .line 2118
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_2

    .line 2120
    :cond_4
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPartWasPreloaded:Z

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_6

    :cond_5
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_6

    .line 2121
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_6
    move v12, v8

    :goto_2
    move v13, v11

    :goto_3
    if-ge v13, v12, :cond_2a

    .line 2127
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    const/4 v14, 0x2

    if-eqz v0, :cond_f

    .line 2128
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-eqz v0, :cond_7

    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_7

    .line 2129
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    return-void

    .line 2134
    :cond_7
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->nextPreloadDownloadOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/high16 v0, 0x200000

    .line 2137
    iget v1, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v0, v1

    add-int/2addr v0, v14

    move-wide v1, v9

    :goto_4
    if-eqz v0, :cond_b

    .line 2139
    iget-object v3, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-wide v0, v1

    move v2, v8

    goto :goto_6

    .line 2143
    :cond_8
    iget v3, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 2144
    iget-wide v4, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    cmp-long v6, v1, v4

    if-lez v6, :cond_9

    goto :goto_5

    .line 2147
    :cond_9
    iget v6, v7, Lorg/telegram/messenger/FileLoadOperation;->moovFound:I

    if-ne v6, v14, :cond_a

    mul-int/lit8 v6, v3, 0x8

    int-to-long v14, v6

    cmp-long v6, v1, v14

    if-nez v6, :cond_a

    const-wide/32 v1, 0x100000

    sub-long/2addr v4, v1

    int-to-long v1, v3

    .line 2148
    div-long/2addr v4, v1

    int-to-long v1, v3

    mul-long/2addr v4, v1

    move-wide v1, v4

    :cond_a
    add-int/lit8 v0, v0, -0x1

    const/4 v14, 0x2

    goto :goto_4

    :cond_b
    :goto_5
    move-wide v0, v1

    move v2, v11

    :goto_6
    if-nez v2, :cond_c

    .line 2152
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2153
    invoke-direct {v7, v11, v11, v11}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(ZIZ)V

    .line 2158
    :cond_c
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    if-nez v2, :cond_d

    .line 2159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    .line 2161
    :cond_d
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedPreloadedBytesRanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_e

    .line 2163
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

    .line 2165
    :cond_e
    iget-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    iget v4, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadNotRequestedBytesCount:J

    move-wide v8, v0

    move/from16 v16, v12

    goto/16 :goto_b

    .line 2167
    :cond_f
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 2168
    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamStartOffset:J

    .line 2169
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v14, v3

    move v5, v11

    move/from16 v16, v12

    move-wide v11, v14

    :goto_8
    if-ge v5, v0, :cond_13

    .line 2173
    iget-object v6, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/FileLoadOperation$Range;

    cmp-long v17, v1, v9

    if-eqz v17, :cond_12

    .line 2175
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v17, v17, v1

    if-gtz v17, :cond_11

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$100(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v17, v17, v1

    if-lez v17, :cond_11

    move-wide v11, v3

    goto :goto_9

    .line 2180
    :cond_11
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v17, v1, v17

    if-gez v17, :cond_12

    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v17

    cmp-long v17, v17, v14

    if-gez v17, :cond_12

    .line 2181
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v14

    .line 2184
    :cond_12
    invoke-static {v6}, Lorg/telegram/messenger/FileLoadOperation$Range;->access$000(Lorg/telegram/messenger/FileLoadOperation$Range;)J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    goto :goto_8

    :cond_13
    move-wide v1, v14

    :goto_9
    cmp-long v0, v1, v3

    if-eqz v0, :cond_14

    move-wide v0, v1

    goto :goto_a

    :cond_14
    cmp-long v0, v11, v3

    if-eqz v0, :cond_15

    move-wide v0, v11

    goto :goto_a

    .line 2191
    :cond_15
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    goto/16 :goto_16

    :cond_16
    move/from16 v16, v12

    .line 2197
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    :goto_a
    move-wide v8, v0

    .line 2200
    :goto_b
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadPrefixSize:I

    if-lez v0, :cond_17

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->canFinishPreload()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2201
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    goto/16 :goto_16

    .line 2206
    :cond_17
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    cmp-long v4, v8, v2

    if-lez v4, :cond_18

    cmp-long v0, v8, v0

    if-ltz v0, :cond_18

    .line 2207
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    goto/16 :goto_16

    .line 2212
    :cond_18
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_19

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->notRequestedBytesRanges:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    .line 2213
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v0

    add-long v4, v8, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide v2, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoadOperation;->addPart(Ljava/util/ArrayList;JJZ)V

    .line 2214
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 2220
    :cond_19
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    add-int/lit8 v12, v16, -0x1

    if-eq v13, v12, :cond_1b

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v27, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    const/16 v27, 0x1

    :goto_d
    const/4 v0, -0x1

    move/from16 v6, p1

    if-ne v6, v0, :cond_1d

    .line 2224
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_1c

    move v14, v1

    goto :goto_e

    :cond_1c
    const v14, 0x10002

    goto :goto_e

    :cond_1d
    move v14, v6

    .line 2230
    :goto_e
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x20

    goto :goto_f

    :cond_1e
    const/4 v0, 0x0

    .line 2231
    :goto_f
    iget-boolean v1, v7, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v1, :cond_1f

    .line 2232
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;-><init>()V

    .line 2233
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->file_token:[B

    .line 2234
    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->offset:J

    .line 2235
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I

    or-int/lit8 v0, v0, 0x1

    :goto_10
    move/from16 v24, v0

    move-object/from16 v20, v1

    goto :goto_11

    .line 2239
    :cond_1f
    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v1, :cond_20

    .line 2240
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 2241
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    long-to-int v2, v8

    .line 2242
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 2243
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    goto :goto_10

    .line 2246
    :cond_20
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 2247
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2248
    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:J

    .line 2249
    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    const/4 v2, 0x1

    .line 2250
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->cdn_supported:Z

    goto :goto_10

    .line 2254
    :goto_11
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    iget v2, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestedBytesCount:J

    .line 2255
    new-instance v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>()V

    .line 2256
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;J)J

    .line 2258
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->chunkSize:I

    .line 2259
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)Z

    .line 2260
    iput v14, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->connectionType:I

    .line 2262
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation:Z

    if-nez v0, :cond_23

    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->supportsPreloading:Z

    if-eqz v0, :cond_23

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_23

    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadedBytesRanges:Ljava/util/HashMap;

    if-eqz v0, :cond_23

    .line 2263
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;

    if-eqz v0, :cond_23

    .line 2265
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    invoke-static {v10, v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$502(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 2267
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_22

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1000(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_21

    goto :goto_12

    .line 2268
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cast long to integer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2270
    :cond_22
    :goto_12
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1000(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 2271
    iget-object v2, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$PreloadRange;->access$1100(Lorg/telegram/messenger/FileLoadOperation$PreloadRange;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2272
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->preloadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 2273
    iget-object v0, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2274
    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$500(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 2275
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7, v10}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    const-wide/16 v11, 0x0

    goto/16 :goto_15

    :catch_0
    :cond_23
    const/4 v8, 0x0

    .line 2286
    :catch_1
    iget-wide v0, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 2287
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_24

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame get offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_24
    const-wide/16 v11, 0x0

    .line 2290
    iput-wide v11, v7, Lorg/telegram/messenger/FileLoadOperation;->streamPriorityStartOffset:J

    .line 2291
    iput-object v10, v7, Lorg/telegram/messenger/FileLoadOperation;->priorityRequestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    goto :goto_13

    :cond_25
    const-wide/16 v11, 0x0

    .line 2293
    :goto_13
    iget-object v0, v7, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    if-eqz v1, :cond_26

    .line 2294
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;

    .line 2295
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerPhotoFileLocation;->photo_id:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_26

    .line 2296
    invoke-direct {v7, v10}, Lorg/telegram/messenger/FileLoadOperation;->requestReference(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    const/4 v1, 0x1

    goto/16 :goto_15

    .line 2300
    :cond_26
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->forceSmallChunk:Z

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Z)Z

    .line 2301
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_27

    .line 2302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestStartTime:J

    .line 2304
    :cond_27
    iget-boolean v0, v7, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v0, :cond_28

    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    goto :goto_14

    :cond_28
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->datacenterId:I

    :goto_14
    move v9, v0

    .line 2305
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v19

    new-instance v21, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda20;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v9

    move v4, v14

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;IILorg/telegram/tgnet/TLObject;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v25, v9

    move/from16 v26, v14

    invoke-virtual/range {v19 .. v27}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestSync(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    invoke-static {v10, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$402(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 2427
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_29

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug_loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " send reqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " conType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2430
    :cond_29
    iget v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    :goto_15
    add-int/lit8 v13, v13, 0x1

    move-wide v9, v11

    move/from16 v12, v16

    move v11, v8

    move v8, v1

    goto/16 :goto_3

    :cond_2a
    :goto_16
    return-void

    .line 2111
    :cond_2b
    :goto_17
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    return-void
.end method

.method public updateProgress()V
    .locals 8

    .line 1226
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

    .line 1227
    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;JJ)V

    :cond_0
    return-void
.end method

.method public wasStarted()Z
    .locals 1

    .line 489
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
