.class public Lorg/telegram/messenger/FileLoader;
.super Lorg/telegram/messenger/BaseController;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;,
        Lorg/telegram/messenger/FileLoader$FileResolver;,
        Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FILE_SIZE:J = 0x7d000000L

.field public static final DEFAULT_MAX_FILE_SIZE_PREMIUM:J = 0xfa000000L

.field public static final IMAGE_TYPE_ANIMATION:I = 0x2

.field public static final IMAGE_TYPE_LOTTIE:I = 0x1

.field public static final IMAGE_TYPE_SVG:I = 0x3

.field public static final IMAGE_TYPE_SVG_WHITE:I = 0x4

.field public static final IMAGE_TYPE_THEME_PREVIEW:I = 0x5

.field private static final Instance:[Lorg/telegram/messenger/FileLoader;

.field public static final MEDIA_DIR_AUDIO:I = 0x1

.field public static final MEDIA_DIR_CACHE:I = 0x4

.field public static final MEDIA_DIR_DOCUMENT:I = 0x3

.field public static final MEDIA_DIR_FILES:I = 0x5

.field public static final MEDIA_DIR_IMAGE:I = 0x0

.field public static final MEDIA_DIR_IMAGE_PUBLIC:I = 0x64

.field public static final MEDIA_DIR_STORIES:I = 0x6

.field public static final MEDIA_DIR_VIDEO:I = 0x2

.field public static final MEDIA_DIR_VIDEO_PUBLIC:I = 0x65

.field public static final PRELOAD_CACHE_TYPE:I = 0xb

.field public static final PRIORITY_HIGH:I = 0x3

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_NORMAL_UP:I = 0x2

.field private static final PRIORITY_STREAM:I = 0x4

.field private static volatile fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

.field private static mediaDirs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sentPattern:Ljava/util/regex/Pattern;


# instance fields
.field private currentUploadOperationsCount:I

.field private currentUploadSmallOperationsCount:I

.field private delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

.field dumpFilesQueueRunnable:Ljava/lang/Runnable;

.field private final filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

.field private forceLoadingFile:Ljava/lang/String;

.field private final largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

.field private lastReferenceId:I

.field private final loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;",
            ">;"
        }
    .end annotation
.end field

.field private loadingVideos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private priorityIncreasePointer:I

.field private final smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

.field private final uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private uploadSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadSmallOperationQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/FileUploadOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2WJXdTlhBWkGaZYGBXBBS6v0UYk(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$checkCurrentDownloadsFiles$16(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6rOpEcUx0nRO2i6t4c2Gk7D1owg(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoader;->lambda$loadAndSaveDocumentWithForcedFileName$0(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABgcg8G8G-lFgKdjNAttu1YPK1k(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$changePriority$10(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C76Xq7eLiqrIB5v6Hk0lM73g5yY(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$setLoadingVideo$1(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IOKu-423Ay7ZCtrNNOayNG-H1Mw(Lorg/telegram/messenger/FileLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoader;->lambda$cancelLoadFile$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$IlTFi8Ho-HruVwVvGaBBLReB_6Q(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$setForceStreamLoadingFile$7(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IydKbm_yqELsg9R_9n_tvsi2nyU(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/FileLoader;->lambda$uploadFile$6(ZLjava/lang/String;JIZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbdksZRzJfDOLKcAqmC5eqcjJRo(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$deleteFiles$15(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MW0zEI-Maq2Gf0IrXNo-zA4WOEg(Lorg/telegram/messenger/FileLoader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$onNetworkChanged$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$QDBEv6woYTex4jBYVplNDIpPvag(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JJLjava/lang/Float;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/FileLoader;->lambda$checkUploadNewDataAvailable$4(ZLjava/lang/String;JJLjava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHgKsYfNPOmyFh4VWwVZ3FrS4Uo(Lorg/telegram/messenger/FileLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoader;->lambda$new$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$WcEENYBYECQmCw8Rq0bGayr8e6M(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/messenger/FileLoader;->lambda$loadFile$12(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCZqWdZkr1YAL5qaThJRGTYOPIk(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$removeLoadingVideo$2(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gMHrEqUZszlyaHNxhgSyrSdI0Ak(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$checkDownloadQueue$14(Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hfeq8QlQdSc6xVkr8aLbFtdRK7w(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$cancelLoadAllFiles$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3Yz5gzZFXz4ApzRCRtNbW3vntw(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$cancelFileUpload$3(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mkWLkezaNj_tNBpkCSG0bRfIBqA(Lorg/telegram/messenger/FileLoader;[Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/FileLoader;->lambda$loadStreamFile$13([Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3gqHTX1v_EUwoQW75q46lUpBsw(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$cancelLoadFile$8(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 235
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "fileUploadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v0, 0x0

    .line 254
    sput-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/FileLoader;

    .line 260
    sput-object v0, Lorg/telegram/messenger/FileLoader;->Instance:[Lorg/telegram/messenger/FileLoader;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 276
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 227
    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-array v0, v0, [Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 228
    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    .line 240
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    .line 241
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 243
    iput v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    .line 246
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    .line 247
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 258
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1861
    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileLoader;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v1, Lorg/telegram/messenger/FilePathDatabase;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/FilePathDatabase;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    move v1, v0

    .line 278
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 279
    new-instance v3, Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smallFilesQueue dc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-direct {v3, p1, v4, v0, v6}, Lorg/telegram/messenger/FileLoaderPriorityQueue;-><init>(ILjava/lang/String;ILorg/telegram/messenger/DispatchQueue;)V

    aput-object v3, v2, v1

    .line 280
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "largeFilesQueue dc"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v7, 0x1

    invoke-direct {v3, p1, v4, v7, v6}, Lorg/telegram/messenger/FileLoaderPriorityQueue;-><init>(ILjava/lang/String;ILorg/telegram/messenger/DispatchQueue;)V

    aput-object v3, v2, v1

    move v1, v5

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoader;->dumpFilesQueue()V

    return-void
.end method

.method static synthetic access$100()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .line 35
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoader;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return p0
.end method

.method static synthetic access$1008(Lorg/telegram/messenger/FileLoader;)I
    .locals 2

    .line 35
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$1010(Lorg/telegram/messenger/FileLoader;)I
    .locals 2

    .line 35
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileLoader;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return p0
.end method

.method static synthetic access$808(Lorg/telegram/messenger/FileLoader;)I
    .locals 2

    .line 35
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$810(Lorg/telegram/messenger/FileLoader;)I
    .locals 2

    .line 35
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method private addOperationToQueue(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/LinkedList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/FileLoadOperation;",
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/FileLoadOperation;",
            ">;)V"
        }
    .end annotation

    .line 1077
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v0

    if-lez v0, :cond_2

    .line 1079
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 1080
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1081
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation;

    .line 1082
    invoke-virtual {v4}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v4

    if-ge v4, v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    :goto_1
    invoke-virtual {p2, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 1089
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private awaitFileLoadOperation(Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 2

    .line 1136
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1138
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    if-eqz p2, :cond_0

    .line 1139
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/FileLoader;->awaitFileLoadOperation(Ljava/util/concurrent/CountDownLatch;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static bytesToLong([B)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    shl-long/2addr v0, v3

    .line 1856
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    xor-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private canSaveAsFile(Ljava/lang/Object;)Z
    .locals 2

    .line 1027
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1028
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1029
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private canSaveToPublicStorage(Ljava/lang/Object;)Z
    .locals 11

    .line 1038
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1041
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1045
    iget-wide v3, v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    .line 1046
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    instance-of v5, p1, Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    .line 1050
    move-object v2, p1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1051
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz p1, :cond_4

    :cond_2
    return v1

    .line 1055
    :cond_3
    iget p1, v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    const/4 v5, 0x5

    if-eq p1, v5, :cond_7

    const/16 v5, 0xd

    if-eq p1, v5, :cond_7

    if-ne p1, v6, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long p1, v3, v9

    const/4 v3, 0x1

    if-ltz p1, :cond_5

    move v6, v3

    goto :goto_0

    .line 1062
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v6, 0x4

    .line 1069
    :cond_6
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6, v0, v2, p1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->needSave(ILorg/telegram/messenger/FilePathDatabase$FileMeta;Lorg/telegram/messenger/MessageObject;I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v3

    :cond_7
    :goto_1
    return v1
.end method

.method private cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 620
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 625
    invoke-static {p4, p5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 627
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 629
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 631
    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    .line 635
    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    if-eqz p2, :cond_5

    .line 636
    iget-object p3, p2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-eqz p3, :cond_7

    .line 639
    sget-object p4, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 641
    :cond_7
    sget-object p3, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p6}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 649
    new-instance p1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoader;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public static checkDirectory(I)Ljava/io/File;
    .locals 1

    .line 290
    sget-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method private checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1144
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V

    return-void
.end method

.method private checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V
    .locals 2

    .line 1148
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static checkUploadFileSize(IJ)Z
    .locals 2

    .line 1835
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p0

    const-wide/32 v0, 0x7d000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xfa000000L

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1712
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->copyFile(Ljava/io/InputStream;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/File;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1716
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    const/4 v1, 0x0

    move v2, v1

    .line 1720
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 1721
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1722
    invoke-virtual {v0, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v3

    if-lez p2, :cond_0

    if-lt v2, p2, :cond_0

    .line 1728
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 1729
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static fixFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "[\u0001-\u001f<>\u202e:\"/\\\\|?*\u007f]+"

    const-string v1, ""

    .line 1499
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1572
    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1576
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1583
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Document;

    const-string v1, ""

    const-string v2, "_"

    if-eqz v0, :cond_3

    .line 1584
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1586
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    .line 1588
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1591
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1593
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    .line 1594
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p2, :cond_2

    .line 1597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1599
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1601
    :cond_3
    instance-of v0, p0, Lorg/telegram/messenger/SecureDocument;

    const-string v3, ".jpg"

    if-eqz v0, :cond_4

    .line 1602
    check-cast p0, Lorg/telegram/messenger/SecureDocument;

    .line 1603
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1604
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v0, :cond_5

    .line 1605
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    .line 1606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1607
    :cond_5
    instance-of v0, p0, Lorg/telegram/messenger/WebFile;

    const-string v3, "."

    if-eqz v0, :cond_6

    .line 1608
    check-cast p0, Lorg/telegram/messenger/WebFile;

    .line 1609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1610
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v4, "jpg"

    if-eqz v0, :cond_a

    .line 1611
    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1612
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p1, :cond_9

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_7

    goto :goto_2

    .line 1615
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    move-object p2, v4

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_2
    return-object v1

    .line 1616
    :cond_a
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    if-eqz v0, :cond_e

    .line 1617
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    .line 1618
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p1, :cond_d

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_b

    goto :goto_4

    .line 1621
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    const-string/jumbo p2, "mp4"

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_4
    return-object v1

    .line 1622
    :cond_e
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_11

    .line 1623
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_f

    return-object v1

    .line 1626
    :cond_f
    check-cast p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1627
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_10
    move-object p2, v4

    :goto_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1628
    :cond_11
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const-string/jumbo v5, "s"

    if-eqz v0, :cond_16

    if-nez p1, :cond_12

    move-object p1, v5

    .line 1632
    :cond_12
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1633
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_14

    .line 1634
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1635
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1637
    :cond_13
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1640
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_15

    goto :goto_6

    :cond_15
    move-object p2, v4

    :goto_6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1642
    :cond_16
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_1a

    .line 1643
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1644
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_18

    .line 1645
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1646
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1648
    :cond_17
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1651
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_19

    goto :goto_7

    :cond_19
    move-object p2, v4

    :goto_7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v1
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;I)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1388
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IZ)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1392
    invoke-static {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;IZ",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            "Z)",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1396
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 1401
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1402
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_6

    if-eq v3, p3, :cond_6

    .line 1403
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v4, :cond_6

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-nez v4, :cond_6

    if-eqz p4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v4, -0x80000000

    const/16 v5, 0x64

    if-eqz p2, :cond_3

    .line 1407
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v0, :cond_5

    if-le p1, v5, :cond_2

    .line 1408
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v4, :cond_5

    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v4, :cond_5

    if-le p1, v2, :cond_6

    if-ge v2, v6, :cond_6

    goto :goto_1

    .line 1417
    :cond_3
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v0, :cond_5

    if-le p1, v5, :cond_4

    .line 1418
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_4

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v5, v4, :cond_5

    :cond_4
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v4, :cond_5

    if-gt v6, p1, :cond_6

    if-ge v2, v6, :cond_6

    :cond_5
    :goto_1
    move-object v0, v3

    move v2, v6

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;",
            ">;I)",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1433
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getClosestVideoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;",
            ">;IZ)",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1437
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;IZZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getClosestVideoSizeWithSize(Ljava/util/ArrayList;IZZ)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;",
            ">;IZZ)",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;"
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p0, :cond_7

    .line 1441
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1446
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1447
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz v2, :cond_6

    .line 1448
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v3, :cond_6

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v3, -0x80000000

    const/16 v4, 0x64

    if-eqz p2, :cond_3

    .line 1452
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz p3, :cond_5

    if-le p1, v4, :cond_2

    .line 1453
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_2

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v4, v3, :cond_5

    :cond_2
    if-le p1, v1, :cond_6

    if-ge v1, v5, :cond_6

    goto :goto_1

    .line 1460
    :cond_3
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz p3, :cond_5

    if-le p1, v4, :cond_4

    .line 1461
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v4, v3, :cond_5

    :cond_4
    if-gt v5, p1, :cond_6

    if-ge v1, v5, :cond_6

    :cond_5
    :goto_1
    move-object p3, v2

    move v1, v5

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-object p3
.end method

.method public static getDirectory(I)Ljava/io/File;
    .locals 2

    .line 294
    sget-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 296
    sget-object p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    .line 298
    :cond_0
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 300
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getDocumentExtension(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 3

    .line 1555
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 1556
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1559
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1562
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    .line 1567
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1508
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 1513
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1516
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1517
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1518
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v3, :cond_3

    .line 1519
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 1524
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->fixFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static getEmojiMarkup(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;",
            ">;)",
            "Lorg/telegram/tgnet/TLRPC$VideoSize;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 128
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$VideoSize;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, -0x1

    .line 1538
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "video/x-matroska"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "video/mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "audio/ogg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, ".mkv"

    return-object p0

    :pswitch_1
    const-string p0, ".mp4"

    return-object p0

    :pswitch_2
    const-string p0, ".ogg"

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_2
        0x4f62635d -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1489
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 1491
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;
    .locals 2

    .line 75
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 76
    check-cast p1, Ljava/lang/String;

    const-string/jumbo p0, "sent_"

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 78
    sget-object p0, Lorg/telegram/messenger/FileLoader;->sentPattern:Ljava/util/regex/Pattern;

    if-nez p0, :cond_0

    const-string/jumbo p0, "sent_.*_([0-9]+)_([0-9]+)_([0-9]+)_([0-9]+)"

    .line 79
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/FileLoader;->sentPattern:Ljava/util/regex/Pattern;

    .line 82
    :cond_0
    :try_start_0
    sget-object p0, Lorg/telegram/messenger/FileLoader;->sentPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    new-instance p1, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {p1}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    const/4 v0, 0x2

    .line 86
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    const/4 v0, 0x3

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    const/4 v0, 0x4

    .line 88
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 92
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_1
    instance-of p0, p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p0, :cond_2

    .line 96
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 97
    new-instance p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    .line 99
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    .line 100
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    iput v0, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    .line 101
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageSize:J

    return-object p0

    .line 103
    :cond_2
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz p0, :cond_3

    .line 104
    check-cast p1, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 105
    new-instance p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    invoke-direct {p0}, Lorg/telegram/messenger/FilePathDatabase$FileMeta;-><init>()V

    .line 106
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    iput-wide v0, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    const/16 p1, 0x17

    .line 107
    iput p1, p0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/FileLoader;
    .locals 3

    .line 263
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:[Lorg/telegram/messenger/FileLoader;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 265
    const-class v2, Lorg/telegram/messenger/FileLoader;

    monitor-enter v2

    .line 266
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lorg/telegram/messenger/FileLoader;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoader;-><init>(I)V

    aput-object v1, v0, p0

    .line 270
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getInternalCacheDir()Ljava/io/File;
    .locals 1

    .line 1551
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1164
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v1, :cond_1

    .line 1165
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p0, :cond_6

    .line 1166
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1167
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1168
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1170
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1175
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_2

    .line 1176
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1177
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_3

    .line 1178
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1179
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1180
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1182
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1185
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5

    .line 1186
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_4

    .line 1187
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1188
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_6

    .line 1189
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1190
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1191
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1193
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1197
    :cond_5
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_6

    .line 1198
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->webPhoto:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz p0, :cond_6

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebDocument;->mime_type:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1530
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1531
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getPathPhotoSize(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;)",
            "Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1475
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1478
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1479
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1480
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getPhotoId(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    .line 1772
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    .line 1773
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    return-wide v0

    .line 1774
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_1

    .line 1775
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    return-wide v0

    .line 1776
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_2

    .line 1777
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getPriorityValue(I)I
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    return p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 139
    iget p1, p0, Lorg/telegram/messenger/FileLoader;->priorityIncreasePointer:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/messenger/FileLoader;->priorityIncreasePointer:I

    const/high16 v0, 0x100000

    add-int/2addr p1, v0

    return p1

    :cond_1
    const/4 v0, 0x2

    const/high16 v2, 0x10000

    if-ne p1, v0, :cond_2

    .line 142
    iget p1, p0, Lorg/telegram/messenger/FileLoader;->priorityIncreasePointer:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/messenger/FileLoader;->priorityIncreasePointer:I

    add-int/2addr p1, v2

    return p1

    :cond_2
    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 114
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 118
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 119
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static isSamePhoto(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x1

    if-nez p0, :cond_3

    if-nez p1, :cond_3

    return v1

    .line 1740
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    return v0

    .line 1743
    :cond_4
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_6

    .line 1744
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1745
    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1746
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 1747
    :cond_6
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_7

    .line 1748
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1749
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1750
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method public static isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1756
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1759
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    .line 1760
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1761
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v5, v6, :cond_1

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1765
    :cond_2
    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    neg-long v1, v1

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    :goto_1
    return v0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/mp4"

    .line 1708
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video/x-matroska"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$cancelFileUpload$3(ZLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    .line 386
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 388
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p1}, Lorg/telegram/messenger/FileUploadOperation;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$cancelLoadAllFiles$11(Ljava/lang/String;)V
    .locals 1

    .line 698
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_0

    .line 700
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->cancel(Lorg/telegram/messenger/FileLoadOperation;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelLoadFile$8(Ljava/lang/String;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    .line 645
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->cancel(Lorg/telegram/messenger/FileLoadOperation;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelLoadFile$9()V
    .locals 3

    .line 650
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$changePriority$10(Ljava/lang/String;I)V
    .locals 2

    .line 672
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz v0, :cond_1

    .line 674
    invoke-direct {p0, p2}, Lorg/telegram/messenger/FileLoader;->getPriorityValue(I)I

    move-result p2

    .line 675
    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-void

    .line 678
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    .line 679
    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p2

    .line 680
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->remove(Lorg/telegram/messenger/FileLoadOperation;)Z

    .line 681
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 682
    invoke-virtual {p2}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update priority "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " position in queue "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getPositionInQueue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " account="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkCurrentDownloadsFiles$16(Ljava/util/ArrayList;)V
    .locals 2

    .line 1809
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1810
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkDownloadQueue$14(Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 1

    .line 1149
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->remove(Lorg/telegram/messenger/FileLoadOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkUploadNewDataAvailable$4(ZLjava/lang/String;JJLjava/lang/Float;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    :goto_0
    move-object v0, p1

    if-eqz v0, :cond_1

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, p7

    .line 409
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation;->checkNewDataAvailable(JJLjava/lang/Float;)V

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p5, p3

    if-eqz p1, :cond_2

    .line 411
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$deleteFiles$15(Ljava/util/ArrayList;I)V
    .locals 6

    const/4 v0, 0x0

    .line 1662
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1663
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1664
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".enc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1667
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1668
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1671
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1674
    :cond_0
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".enc.key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1676
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1679
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1681
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1683
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1684
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 1687
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1691
    :cond_2
    :goto_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "q_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1693
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1694
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1698
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    .line 1702
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadAndSaveDocumentWithForcedFileName$0(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v10, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 42
    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZILjava/lang/String;Landroid/net/Uri;)Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method

.method private synthetic lambda$loadFile$12(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    .locals 16

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v15, p11

    .line 1108
    invoke-direct/range {v0 .. v15}, Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZI)Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method

.method private synthetic lambda$loadStreamFile$13([Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V
    .locals 17

    move-object/from16 v5, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz v5, :cond_0

    .line 1121
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz v5, :cond_1

    const-string/jumbo v0, "mp4"

    :cond_1
    move-object v7, v0

    if-nez p2, :cond_2

    if-eqz v5, :cond_2

    iget-wide v0, v5, Lorg/telegram/messenger/ImageLocation;->currentSize:J

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v8, v0

    const/16 v16, 0x0

    if-nez p2, :cond_3

    const/4 v0, 0x1

    move v15, v0

    goto :goto_2

    :cond_3
    move/from16 v15, v16

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v12, p7

    move/from16 v14, p9

    invoke-direct/range {v0 .. v15}, Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    aput-object v0, p1, v16

    .line 1122
    invoke-virtual/range {p10 .. p10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$new$17()V
    .locals 3

    const/4 v0, 0x0

    .line 1862
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1863
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1864
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download queue: dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " small_operations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " large_operations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1870
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoader;->dumpFilesQueue()V

    return-void
.end method

.method private synthetic lambda$onNetworkChanged$5(Z)V
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileUploadOperation;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/FileUploadOperation;->onNetworkChanged(Z)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileUploadOperation;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/FileUploadOperation;->onNetworkChanged(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private synthetic lambda$removeLoadingVideo$2(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method private synthetic lambda$setForceStreamLoadingFile$7(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0

    .line 562
    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->forceLoadingFile:Ljava/lang/String;

    .line 563
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_1

    .line 565
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 566
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    :cond_0
    const/4 p2, 0x1

    .line 568
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    const/4 p2, 0x4

    .line 569
    invoke-direct {p0, p2}, Lorg/telegram/messenger/FileLoader;->getPriorityValue(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    .line 570
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->remove(Lorg/telegram/messenger/FileLoadOperation;)Z

    .line 571
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 572
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setLoadingVideo$1(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method private synthetic lambda$uploadFile$6(ZLjava/lang/String;JIZZ)V
    .locals 13

    move-object v0, p0

    move v9, p1

    move-object v10, p2

    move/from16 v11, p7

    if-eqz v9, :cond_0

    .line 437
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 441
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v8, p3, v1

    if-eqz v8, :cond_2

    .line 447
    iget-object v3, v0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, v0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v5, v1

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p3

    .line 453
    :goto_0
    new-instance v12, Lorg/telegram/messenger/FileUploadOperation;

    iget v2, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object v1, v12

    move-object v3, p2

    move v4, p1

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileUploadOperation;-><init>(ILjava/lang/String;ZJI)V

    .line 454
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    const-wide/16 v4, 0x0

    move-object v2, v12

    move-object v3, p2

    move-wide/from16 v6, p3

    move v8, p1

    .line 455
    invoke-interface/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileUploadProgressChanged(Lorg/telegram/messenger/FileUploadOperation;Ljava/lang/String;JJZ)V

    :cond_3
    if-eqz v9, :cond_4

    .line 458
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v12}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 460
    :cond_4
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v12}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p6, :cond_5

    .line 463
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->setForceSmallFile()V

    .line 465
    :cond_5
    new-instance v1, Lorg/telegram/messenger/FileLoader$1;

    invoke-direct {v1, p0, p1, p2, v11}, Lorg/telegram/messenger/FileLoader$1;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;Z)V

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/FileUploadOperation;->setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V

    const/4 v1, 0x1

    if-eqz v11, :cond_7

    .line 540
    iget v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    if-ge v2, v1, :cond_6

    add-int/2addr v2, v1

    .line 541
    iput v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    .line 542
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_2

    .line 544
    :cond_6
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 547
    :cond_7
    iget v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    if-ge v2, v1, :cond_8

    add-int/2addr v2, v1

    .line 548
    iput v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 549
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_2

    .line 551
    :cond_8
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    .locals 16

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    const/4 v13, 0x0

    if-eqz v5, :cond_0

    move-object/from16 v8, p7

    .line 1096
    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v14, v0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p7

    if-eqz v2, :cond_2

    .line 1099
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto :goto_0

    .line 1102
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 1104
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v14, v13

    .line 1108
    :goto_1
    new-instance v15, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda9;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    const/16 v0, 0xa

    move/from16 v1, p11

    if-eq v1, v0, :cond_4

    .line 1109
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-2147483648"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1110
    new-instance v0, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    invoke-direct {v0, v13}, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;-><init>(Lorg/telegram/messenger/FileLoader$1;)V

    .line 1111
    iput-object v15, v0, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    move-object/from16 v1, p0

    .line 1112
    iget-object v2, v1, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v14, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    .line 1114
    :goto_2
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZI)Lorg/telegram/messenger/FileLoadOperation;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 57
    invoke-direct/range {v0 .. v17}, Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZILjava/lang/String;Landroid/net/Uri;)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    return-object v0
.end method

.method private loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZILjava/lang/String;Landroid/net/Uri;)Lorg/telegram/messenger/FileLoadOperation;
    .locals 33

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v6, p6

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move/from16 v13, p14

    move/from16 v7, p15

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object/from16 v4, p7

    .line 763
    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v15, v5

    goto :goto_1

    :cond_0
    move-object/from16 v4, p7

    if-eqz v0, :cond_1

    .line 765
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 767
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 769
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v15, v3

    :goto_1
    if-eqz v15, :cond_2e

    const-string v5, "-2147483648"

    .line 773
    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_17

    :cond_4
    const-string v14, "0_0"

    .line 776
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 777
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cant get hash from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v3

    :cond_5
    const/16 v14, 0xa

    if-eq v7, v14, :cond_6

    .line 780
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 781
    iget-object v5, v8, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v14, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    invoke-direct {v14, v3}, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;-><init>(Lorg/telegram/messenger/FileLoader$1;)V

    invoke-virtual {v5, v15, v14}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v9, :cond_7

    .line 784
    instance-of v3, v6, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_7

    move-object v3, v6

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v5

    if-nez v5, :cond_7

    .line 785
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5, v9, v3}, Lorg/telegram/messenger/DownloadController;->startDownloadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V

    .line 789
    :cond_7
    iget-object v3, v8, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation;

    move/from16 v5, p10

    .line 791
    invoke-direct {v8, v5}, Lorg/telegram/messenger/FileLoader;->getPriorityValue(I)I

    move-result v14

    const-string v5, " position in queue "

    if-eqz v3, :cond_c

    const/16 v8, 0xa

    if-eq v7, v8, :cond_8

    .line 794
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x0

    .line 795
    invoke-virtual {v3, v8}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    if-lez v14, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v8

    .line 797
    :goto_3
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    .line 798
    invoke-virtual {v3, v10, v13, v11, v12}, Lorg/telegram/messenger/FileLoadOperation;->setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V

    .line 800
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v0

    if-eq v0, v14, :cond_a

    .line 802
    invoke-virtual {v3, v14}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    const/4 v8, 0x1

    .line 804
    :cond_a
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 805
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->updateProgress()V

    if-eqz v8, :cond_b

    .line 807
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    .line 809
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load operation update position fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPositionInQueue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " preloadFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v3

    :cond_c
    const/4 v8, 0x4

    .line 813
    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    const-wide/16 v17, 0x0

    if-eqz v0, :cond_d

    .line 820
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/messenger/SecureDocument;)V

    const/16 p2, 0x0

    const/4 v2, 0x3

    move-object/from16 v4, p0

    move-object/from16 v26, v5

    move-wide/from16 v0, v17

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_d
    if-eqz v2, :cond_e

    .line 823
    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 824
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    shl-int/lit8 v2, v2, 0x10

    add-int v22, v3, v2

    .line 825
    new-instance v23, Lorg/telegram/messenger/FileLoadOperation;

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v26, v5

    move-wide/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;J)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move/from16 p2, v22

    move-object/from16 v3, v23

    move-wide/from16 v0, v24

    goto/16 :goto_7

    :cond_e
    move-object/from16 v26, v5

    if-eqz v9, :cond_12

    .line 828
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {v3, v9, v6}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 829
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide/from16 v0, v17

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_4

    .line 831
    :cond_f
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 833
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 834
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    const/4 v4, 0x2

    goto :goto_4

    .line 837
    :cond_10
    iget-wide v0, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 838
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    const/4 v4, 0x3

    .line 840
    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 p2, 0x0

    const/4 v5, 0x0

    move v2, v4

    move-wide/from16 v0, v17

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    move/from16 p2, v2

    move v2, v4

    :goto_5
    move-object/from16 v4, p0

    goto :goto_7

    :cond_12
    if-eqz v1, :cond_17

    .line 845
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    iget v0, v4, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;-><init>(ILorg/telegram/messenger/WebFile;)V

    .line 846
    iget-object v0, v1, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v0, :cond_13

    goto :goto_6

    .line 848
    :cond_13
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v0

    if-eqz v0, :cond_14

    move/from16 p2, v5

    move-wide/from16 v0, v17

    const/4 v2, 0x1

    goto :goto_7

    .line 850
    :cond_14
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVideoWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 p2, v5

    move-wide/from16 v0, v17

    const/4 v2, 0x2

    goto :goto_7

    .line 852
    :cond_15
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v0

    if-eqz v0, :cond_16

    move/from16 p2, v5

    move/from16 v2, p2

    move-wide/from16 v0, v17

    goto :goto_7

    :cond_16
    move/from16 p2, v5

    move-wide/from16 v0, v17

    const/4 v2, 0x3

    goto :goto_7

    :cond_17
    const/4 v5, 0x0

    move-object/from16 v4, p0

    :goto_6
    move/from16 p2, v5

    move-wide/from16 v0, v17

    const/4 v2, 0x4

    .line 859
    :goto_7
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getDatacenterId()I

    move-result v22

    const/16 v21, 0x1

    add-int/lit8 v8, v22, -0x1

    const/4 v9, 0x4

    invoke-static {v8, v9, v5}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v8

    .line 860
    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 861
    iget-wide v5, v3, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/32 v23, 0x1400000

    cmp-long v5, v5, v23

    if-gtz v5, :cond_19

    if-eqz v9, :cond_18

    goto :goto_8

    .line 864
    :cond_18
    iget-object v5, v4, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v5, v5, v8

    goto :goto_9

    .line 862
    :cond_19
    :goto_8
    iget-object v5, v4, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v5, v5, v8

    :goto_9
    move-object v8, v5

    const/16 v5, 0xa

    if-eqz v7, :cond_1c

    if-eq v7, v5, :cond_1c

    if-eqz v9, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v6, 0x2

    if-ne v7, v6, :cond_1b

    const/4 v0, 0x1

    .line 920
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoadOperation;->setEncryptFile(Z)V

    :cond_1b
    move-object/from16 v9, p6

    move-object/from16 v20, v15

    move-object/from16 v18, v19

    goto/16 :goto_14

    :cond_1c
    :goto_a
    cmp-long v6, v0, v17

    if-eqz v6, :cond_29

    .line 871
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v27

    const/16 v32, 0x1

    move-wide/from16 v28, v0

    move/from16 v30, p2

    move/from16 v31, v2

    invoke-virtual/range {v27 .. v32}, Lorg/telegram/messenger/FilePathDatabase;->getPath(JIIZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 874
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 877
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/16 v17, 0x1

    goto :goto_b

    :cond_1d
    move-object v6, v15

    move-object/from16 v5, v19

    const/16 v17, 0x0

    :goto_b
    if-nez v17, :cond_28

    .line 883
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    if-eqz v9, :cond_1f

    const/4 v6, 0x6

    .line 887
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1e

    move-object v5, v6

    const/4 v6, 0x1

    goto :goto_c

    :cond_1e
    const/4 v6, 0x0

    :goto_c
    move-object/from16 v9, p6

    :goto_d
    move/from16 v17, v6

    move-object v6, v15

    goto :goto_11

    :cond_1f
    if-eqz v2, :cond_21

    const/4 v6, 0x2

    if-ne v2, v6, :cond_20

    goto :goto_e

    :cond_20
    move-object/from16 v9, p6

    goto :goto_10

    :cond_21
    :goto_e
    move-object/from16 v9, p6

    .line 892
    invoke-direct {v4, v9}, Lorg/telegram/messenger/FileLoader;->canSaveToPublicStorage(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    if-nez v2, :cond_22

    const/16 v6, 0x64

    .line 895
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    goto :goto_f

    :cond_22
    const/16 v6, 0x65

    .line 897
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    :goto_f
    if-eqz v6, :cond_23

    move-object v5, v6

    const/4 v6, 0x1

    goto :goto_d

    :cond_23
    const/4 v6, 0x0

    goto :goto_d

    .line 903
    :cond_24
    :goto_10
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-direct {v4, v9}, Lorg/telegram/messenger/FileLoader;->canSaveAsFile(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 904
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x5

    .line 905
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_26

    move-object/from16 v5, v17

    const/16 v17, 0x1

    goto :goto_11

    :cond_25
    move-object v6, v15

    :cond_26
    const/16 v17, 0x0

    :goto_11
    move-object/from16 p3, v5

    if-eqz v17, :cond_27

    .line 913
    new-instance v5, Lorg/telegram/messenger/FilePathDatabase$PathData;

    move-object/from16 p4, v6

    move/from16 v6, p2

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/telegram/messenger/FilePathDatabase$PathData;-><init>(JII)V

    iput-object v5, v3, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    goto :goto_12

    :cond_27
    move-object/from16 p4, v6

    :goto_12
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto :goto_13

    :cond_28
    move-object/from16 v9, p6

    :goto_13
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    goto :goto_14

    :cond_29
    move-object/from16 v9, p6

    .line 917
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v20, v15

    .line 922
    :goto_14
    iget v0, v4, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move v6, v14

    const/16 v1, 0xa

    move-object v14, v3

    move-object v5, v15

    move v15, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(ILjava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const/4 v14, 0x1

    if-ne v7, v1, :cond_2a

    .line 924
    invoke-virtual {v3, v14}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    .line 929
    :cond_2a
    new-instance v15, Lorg/telegram/messenger/FileLoader$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object/from16 v2, p6

    move-object v9, v3

    move-object/from16 v3, p1

    move-object v7, v4

    move-object v4, v5

    move-object v14, v5

    const/16 v16, 0x0

    move/from16 v5, v20

    move-object/from16 p2, v8

    move v8, v6

    move-object/from16 v6, p16

    move-object v11, v7

    move-object/from16 v7, p17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$2;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1009
    invoke-virtual {v9, v15}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 1011
    iget-object v0, v11, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v14, v9}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    invoke-virtual {v9, v8}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    if-eqz v10, :cond_2b

    move-wide/from16 v1, p12

    move-object v0, v11

    .line 1014
    invoke-virtual {v9, v10, v13, v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V

    goto :goto_15

    :cond_2b
    move-object v0, v11

    :goto_15
    move-object/from16 v5, p2

    .line 1017
    invoke-virtual {v5, v9}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 1018
    iget-boolean v1, v9, Lorg/telegram/messenger/FileLoadOperation;->isStory:Z

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    if-lt v8, v1, :cond_2c

    const/4 v8, 0x1

    goto :goto_16

    :cond_2c
    move/from16 v8, v16

    :goto_16
    invoke-virtual {v5, v8}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations(Z)V

    .line 1020
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2d

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create load operation fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " documentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v9, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/telegram/messenger/FileLoadOperation;->getPositionInQueue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2d
    return-object v9

    :cond_2e
    :goto_17
    move-object v0, v8

    return-object v3
.end method

.method public static longToBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    .line 1847
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1848
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1849
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    .line 349
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "p"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->videoLoadingStateChanged:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setMediaDirs(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 286
    sput-object p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public cancelFileUpload(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 379
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadAllFiles()V
    .locals 4

    .line 690
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 691
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 695
    sget-object v3, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 697
    :cond_1
    sget-object v2, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelLoadFile(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, p1

    .line 610
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/messenger/SecureDocument;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 586
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/messenger/WebFile;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 590
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 582
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .line 606
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1

    const/4 v0, 0x0

    .line 594
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V
    .locals 8

    .line 598
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFiles(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 615
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changePriority(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p5, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    .line 656
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 661
    invoke-static {p5, p6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 663
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 665
    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 667
    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p7

    .line 671
    :cond_4
    :goto_0
    sget-object p2, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p7, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkCurrentDownloadsFiles()V
    .locals 4

    .line 1799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 1801
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1802
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 1803
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v3, :cond_0

    .line 1804
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1807
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1808
    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public checkMediaExistance(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 1819
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FilePathDatabase;->checkMediaExistance(Ljava/util/ArrayList;)V

    return-void
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 397
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJJLjava/lang/Float;)V

    return-void
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJJLjava/lang/Float;)V
    .locals 11

    .line 401
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda16;

    move-object v1, v10

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JJLjava/lang/Float;)V

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearFilePaths()V
    .locals 1

    .line 1831
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->clear()V

    return-void
.end method

.method public clearRecentDownloadedFiles()V
    .locals 1

    .line 1827
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->clearRecentDownloadedFiles()V

    return-void
.end method

.method public deleteFiles(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1658
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1661
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpFilesQueue()V
    .locals 4

    .line 1874
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 1877
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1878
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getBufferedProgressFromPosition(FLjava/lang/String;)F
    .locals 2

    .line 717
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p2, :cond_1

    .line 722
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(F)F

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public getCurrentLoadingFiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 1783
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1784
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->downloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1785
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1786
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isDownloadingFile:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;
    .locals 1

    .line 1384
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    return-object v0
.end method

.method public getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .line 152
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getFileReference(Ljava/lang/Object;)I
    .locals 3

    .line 311
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->lastReferenceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->lastReferenceId:I

    .line 312
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public getParentObject(I)Ljava/lang/Object;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1260
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/io/File;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz p4, :cond_0

    .line 1285
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v7, p0

    move/from16 v13, p5

    :goto_0
    move-wide v9, v2

    move v11, v6

    move v12, v11

    :goto_1
    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_e

    .line 1287
    :cond_0
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    .line 1288
    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1289
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->localPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1290
    new-instance v0, Ljava/io/File;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$Document;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1292
    :cond_1
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1295
    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v10

    goto :goto_2

    .line 1297
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v9

    goto :goto_2

    .line 1300
    :cond_4
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    if-eqz p6, :cond_5

    .line 1301
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x5

    move-object/from16 v16, v5

    move v5, v4

    move-object/from16 v4, v16

    goto :goto_2

    :cond_5
    move v5, v8

    .line 1309
    :goto_2
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1310
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1311
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v9

    move/from16 v13, p5

    move v12, v5

    move v11, v6

    move-object v5, v4

    move-object v4, v9

    move-wide v9, v7

    move-object/from16 v7, p0

    goto/16 :goto_e

    .line 1312
    :cond_6
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_7

    .line 1313
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    move-object/from16 v7, p0

    move/from16 v13, p5

    .line 1314
    invoke-virtual {v7, v0, v1, v6, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v7, p0

    move/from16 v13, p5

    .line 1315
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-wide/32 v14, -0x80000000

    if-eqz v11, :cond_d

    .line 1316
    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1317
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v9, :cond_c

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v9, :cond_8

    goto :goto_4

    .line 1319
    :cond_8
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_b

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v10, :cond_b

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v10, v14

    if-nez v10, :cond_9

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v9, :cond_b

    :cond_9
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez v9, :cond_a

    goto :goto_3

    .line 1322
    :cond_a
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto :goto_5

    .line 1320
    :cond_b
    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    move-object/from16 v16, v6

    move v6, v5

    move-object/from16 v5, v16

    goto :goto_5

    :cond_c
    :goto_4
    move-object v5, v4

    .line 1324
    :goto_5
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 1325
    iget v11, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    :goto_6
    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v11

    move v12, v6

    move v11, v8

    goto/16 :goto_1

    .line 1326
    :cond_d
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    if-eqz v11, :cond_11

    .line 1327
    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    .line 1328
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_10

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v10, :cond_10

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v10, v14

    if-nez v10, :cond_e

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v9, :cond_10

    :cond_e
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    if-gez v9, :cond_f

    goto :goto_7

    .line 1331
    :cond_f
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto :goto_8

    .line 1329
    :cond_10
    :goto_7
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    move-object/from16 v16, v6

    move v6, v5

    move-object/from16 v5, v16

    .line 1333
    :goto_8
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 1334
    iget v11, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    goto :goto_6

    .line 1335
    :cond_11
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_14

    .line 1336
    move-object v8, v0

    check-cast v8, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1337
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v9, :cond_13

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v11, v9, v14

    if-nez v11, :cond_12

    iget v11, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v11, :cond_12

    goto :goto_9

    .line 1341
    :cond_12
    iget v5, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v5, v8

    .line 1342
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    goto :goto_a

    .line 1338
    :cond_13
    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    move-wide v9, v2

    move v5, v6

    :goto_a
    move v11, v5

    move v12, v6

    move-object v5, v4

    move-object v4, v8

    goto/16 :goto_e

    .line 1344
    :cond_14
    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-nez v11, :cond_1c

    instance-of v11, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v11, :cond_15

    goto :goto_c

    .line 1353
    :cond_15
    instance-of v11, v0, Lorg/telegram/messenger/WebFile;

    if-eqz v11, :cond_19

    .line 1354
    move-object v5, v0

    check-cast v5, Lorg/telegram/messenger/WebFile;

    .line 1355
    iget-object v11, v5, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v12, "image/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1356
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    .line 1357
    :cond_16
    iget-object v11, v5, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v12, "audio/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1358
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    .line 1359
    :cond_17
    iget-object v5, v5, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string/jumbo v10, "video/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1360
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    .line 1362
    :cond_18
    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    .line 1364
    :cond_19
    instance-of v8, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-nez v8, :cond_1b

    instance-of v8, v0, Lorg/telegram/messenger/SecureDocument;

    if-eqz v8, :cond_1a

    goto :goto_b

    :cond_1a
    move-wide v9, v2

    move-object v5, v4

    move v11, v6

    move v12, v11

    goto :goto_e

    .line 1365
    :cond_1b
    :goto_b
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    :cond_1c
    :goto_c
    const-string/jumbo v8, "s"

    if-nez p2, :cond_1d

    move-object v9, v8

    goto :goto_d

    :cond_1d
    move-object/from16 v9, p2

    .line 1348
    :goto_d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1349
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    .line 1351
    :cond_1e
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_0

    :goto_e
    if-nez v4, :cond_1f

    .line 1369
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1f
    cmp-long v2, v9, v2

    if-eqz v2, :cond_20

    .line 1372
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v8

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/FilePathDatabase;->getPath(JIIZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_20
    if-nez v5, :cond_21

    .line 1378
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1380
    :cond_21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 1268
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1272
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 1264
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 1208
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 1212
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;ZZ)Ljava/io/File;
    .locals 12

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1217
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1219
    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1220
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_8

    .line 1221
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1222
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 1223
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1225
    invoke-virtual {p0, p1, v2, v3, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1230
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 1231
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz p1, :cond_2

    move v9, v4

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    move-object v5, p0

    move v10, p2

    move v11, p3

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1232
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz p3, :cond_5

    .line 1233
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1234
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1235
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p3, v1, v3, v2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 1237
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz p1, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p0, p3, v2, v3, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1240
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz p3, :cond_7

    .line 1241
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_6

    .line 1242
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, p1, v2, v3, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1243
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p3, :cond_8

    .line 1244
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 1246
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1248
    invoke-virtual {p0, p1, v2, v3, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1252
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz p3, :cond_8

    .line 1253
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p0, p1, v2, v4, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1256
    :cond_8
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getRecentLoadingFiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 1791
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1792
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1793
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1794
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isDownloadingFile:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isLoadingFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 713
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;Z)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p1, "p"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isLoadingVideoAny(Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 3

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public loadAndSaveDocumentWithForcedFileName(Ljava/lang/String;Landroid/net/Uri;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    .locals 9

    .line 42
    new-instance v8, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V

    const/16 p2, 0xa

    if-eq p6, p2, :cond_0

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const/high16 p2, -0x80000000

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 44
    new-instance p2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;-><init>(Lorg/telegram/messenger/FileLoader$1;)V

    .line 45
    iput-object v8, p2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    .line 46
    iget-object p3, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    sget-object p1, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 12

    move-object v5, p1

    if-nez v5, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_2

    .line 732
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v5, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    :cond_2
    move/from16 v11, p5

    .line 735
    :goto_0
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v5, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    iget-object v3, v5, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v4, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLocation;->getSize()J

    move-result-wide v8

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method public loadFile(Lorg/telegram/messenger/SecureDocument;I)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move v10, p2

    .line 742
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method public loadFile(Lorg/telegram/messenger/WebFile;II)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v10, p2

    move v11, p3

    .line 756
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method public loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V
    .locals 12

    move-object v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 749
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    move/from16 v11, p4

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move v10, p3

    .line 752
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method protected loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;
    .locals 16

    .line 1118
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v14, v13, [Lorg/telegram/messenger/FileLoadOperation;

    .line 1120
    sget-object v15, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda17;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p1

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-object v13, v11

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/FileLoader;[Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v15, v13}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    .line 1124
    invoke-direct {v0, v12, v1}, Lorg/telegram/messenger/FileLoader;->awaitFileLoadOperation(Ljava/util/concurrent/CountDownLatch;Z)V

    const/4 v1, 0x0

    .line 1125
    aget-object v1, v14, v1

    return-object v1
.end method

.method public onNetworkChanged(Z)V
    .locals 2

    .line 417
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileLoader;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 361
    new-instance p3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-void
.end method

.method public setForceStreamLoadingFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 561
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 332
    new-instance p3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    const-string/jumbo v3, "p"

    if-eqz p2, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public setLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    .line 321
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "p"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->videoLoadingStateChanged:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setLocalPathTo(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 9

    .line 159
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 160
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 161
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v0, :cond_0

    :goto_0
    move v6, v1

    goto :goto_1

    .line 164
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 172
    :goto_1
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 173
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 174
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    const/4 v7, 0x1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/FilePathDatabase;->putPath(JIIILjava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_8

    .line 176
    check-cast p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 177
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v0, :cond_8

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v0, :cond_4

    goto :goto_3

    .line 179
    :cond_4
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_7

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v2, :cond_7

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz v2, :cond_7

    :cond_5
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    move v6, v1

    .line 184
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 185
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    shl-int/lit8 v0, v0, 0x10

    add-int v5, p1, v0

    .line 186
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    const/4 v7, 0x1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/FilePathDatabase;->putPath(JIIILjava/lang/String;)V

    nop

    :cond_8
    :goto_3
    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZI)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 428
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZJIZ)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    sget-object v9, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda15;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JIZZ)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
