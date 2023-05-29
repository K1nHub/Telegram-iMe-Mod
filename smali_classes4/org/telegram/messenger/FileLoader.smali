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
.method public static synthetic $r8$lambda$6rOpEcUx0nRO2i6t4c2Gk7D1owg(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoader;->lambda$loadAndSaveDocumentWithForcedFileName$0(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C76Xq7eLiqrIB5v6Hk0lM73g5yY(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$setLoadingVideo$1(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cr_Y8UzLhqL1b0_Jy4mQ-3Jyils(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$deleteFiles$14(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HmjdamaIUE98ZqPPBji-nbprJj4(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$checkDownloadQueue$13(Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V

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

.method public static synthetic $r8$lambda$MW0zEI-Maq2Gf0IrXNo-zA4WOEg(Lorg/telegram/messenger/FileLoader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$onNetworkChanged$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NVTi-3yheoi0hh-N3k5GIXUsNYU(Lorg/telegram/messenger/FileLoader;[Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/FileLoader;->lambda$loadStreamFile$12([Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TlHr89tW1BBrKa8hjgoSGE6uab4(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$checkCurrentDownloadsFiles$15(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TqCGQgQQYQ9N1uxYNCPBRxo-wKw(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$cancelLoadAllFiles$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bGybKDNrErGaOMfJoMNWOEVixZ0(Lorg/telegram/messenger/FileLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoader;->lambda$new$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$gCZqWdZkr1YAL5qaThJRGTYOPIk(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$removeLoadingVideo$2(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTtK_2qosLhqwtwnJAzZgIsg64U(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/FileLoader;->lambda$checkUploadNewDataAvailable$4(ZLjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3Yz5gzZFXz4ApzRCRtNbW3vntw(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->lambda$cancelFileUpload$3(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3gqHTX1v_EUwoQW75q46lUpBsw(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoader;->lambda$cancelLoadFile$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNiFFQ9aNXcM_sxovayNXESr8v0(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/messenger/FileLoader;->lambda$loadFile$11(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 193
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "fileUploadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v0, 0x0

    .line 212
    sput-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/FileLoader;

    .line 218
    sput-object v0, Lorg/telegram/messenger/FileLoader;->Instance:[Lorg/telegram/messenger/FileLoader;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 234
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 185
    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-array v0, v0, [Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 186
    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    .line 198
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    .line 199
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 201
    iput v0, p0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    .line 204
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    .line 205
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 213
    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    .line 216
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1731
    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/FileLoader;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    .line 235
    new-instance v1, Lorg/telegram/messenger/FilePathDatabase;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/FilePathDatabase;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    move v1, v0

    .line 236
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 237
    new-instance v3, Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smallFilesQueue dc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;-><init>(ILjava/lang/String;I)V

    aput-object v3, v2, v1

    .line 238
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v3, Lorg/telegram/messenger/FileLoaderPriorityQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "largeFilesQueue dc"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v3, p1, v4, v6}, Lorg/telegram/messenger/FileLoaderPriorityQueue;-><init>(ILjava/lang/String;I)V

    aput-object v3, v2, v1

    move v1, v5

    goto :goto_0

    .line 240
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

.method static synthetic access$200(Lorg/telegram/messenger/FileLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V

    return-void
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

    .line 971
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v0

    if-lez v0, :cond_2

    .line 973
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 974
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 975
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/FileLoadOperation;

    .line 976
    invoke-virtual {v4}, Lorg/telegram/messenger/FileLoadOperation;->getPriority()I

    move-result v4

    if-ge v4, v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 981
    :cond_1
    :goto_1
    invoke-virtual {p2, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 983
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
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

    .line 1726
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

    .line 921
    instance-of v0, p1, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 922
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 923
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

    .line 932
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 935
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLoader;->getFileMetadataFromParent(ILjava/lang/Object;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 939
    iget-wide v3, v0, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    .line 940
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

    .line 943
    :cond_1
    instance-of v5, p1, Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    .line 944
    move-object v2, p1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 945
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

    .line 949
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

    .line 956
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

    .line 963
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

    .line 570
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 575
    invoke-static {p4, p5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 577
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 579
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 581
    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p6

    .line 585
    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    if-eqz p2, :cond_5

    .line 586
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

    .line 589
    sget-object p4, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p4, p3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 591
    :cond_7
    sget-object p3, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p6}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 599
    new-instance p1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLoader;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public static checkDirectory(I)Ljava/io/File;
    .locals 1

    .line 248
    sget-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method private checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1027
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V

    return-void
.end method

.method private checkDownloadQueue(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoaderPriorityQueue;J)V
    .locals 2

    .line 1031
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static checkUploadFileSize(IJ)Z
    .locals 2

    .line 1705
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

    .line 1582
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

    .line 1586
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    const/4 v1, 0x0

    move v2, v1

    .line 1590
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 1591
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1592
    invoke-virtual {v0, p1, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v3

    if-lez p2, :cond_0

    if-lt v2, p2, :cond_0

    .line 1598
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 1599
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static fixFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "[\u0001-\u001f<>\u202e:\"/\\\\|?*\u007f]+"

    const-string v1, ""

    .line 1369
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

    .line 1442
    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1446
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1453
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Document;

    const-string v1, ""

    const-string v2, "_"

    if-eqz v0, :cond_3

    .line 1454
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1456
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    .line 1458
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1461
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1463
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    .line 1464
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p2, :cond_2

    .line 1467
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

    .line 1469
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

    .line 1471
    :cond_3
    instance-of v0, p0, Lorg/telegram/messenger/SecureDocument;

    const-string v3, ".jpg"

    if-eqz v0, :cond_4

    .line 1472
    check-cast p0, Lorg/telegram/messenger/SecureDocument;

    .line 1473
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

    .line 1474
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v0, :cond_5

    .line 1475
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    .line 1476
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

    .line 1477
    :cond_5
    instance-of v0, p0, Lorg/telegram/messenger/WebFile;

    const-string v3, "."

    if-eqz v0, :cond_6

    .line 1478
    check-cast p0, Lorg/telegram/messenger/WebFile;

    .line 1479
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

    .line 1480
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v4, "jpg"

    if-eqz v0, :cond_a

    .line 1481
    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1482
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p1, :cond_9

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_7

    goto :goto_2

    .line 1485
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

    .line 1486
    :cond_a
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    if-eqz v0, :cond_e

    .line 1487
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    .line 1488
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p1, :cond_d

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_b

    goto :goto_4

    .line 1491
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
    const-string p2, "mp4"

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_4
    return-object v1

    .line 1492
    :cond_e
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_11

    .line 1493
    instance-of p1, p0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz p1, :cond_f

    return-object v1

    .line 1496
    :cond_f
    check-cast p0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1497
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

    .line 1498
    :cond_11
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const-string v5, "s"

    if-eqz v0, :cond_16

    if-nez p1, :cond_12

    move-object p1, v5

    .line 1502
    :cond_12
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1503
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_14

    .line 1504
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1505
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1507
    :cond_13
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1510
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

    .line 1512
    :cond_16
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_1a

    .line 1513
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1514
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_18

    .line 1515
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1516
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1518
    :cond_17
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {p0, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1521
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

    .line 1258
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

    .line 1262
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

    .line 1266
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 1271
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1272
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_6

    if-eq v3, p3, :cond_6

    .line 1273
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

    .line 1277
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz v0, :cond_5

    if-le p1, v5, :cond_2

    .line 1278
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

    .line 1287
    :cond_3
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v0, :cond_5

    if-le p1, v5, :cond_4

    .line 1288
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

    .line 1303
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

    .line 1307
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

    .line 1311
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1316
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1317
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    if-eqz v2, :cond_6

    .line 1318
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v3, :cond_6

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v3, -0x80000000

    const/16 v4, 0x64

    if-eqz p2, :cond_3

    .line 1322
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz p3, :cond_5

    if-le p1, v4, :cond_2

    .line 1323
    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_2

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eq v4, v3, :cond_5

    :cond_2
    if-le p1, v1, :cond_6

    if-ge v1, v5, :cond_6

    goto :goto_1

    .line 1330
    :cond_3
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz p3, :cond_5

    if-le p1, v4, :cond_4

    .line 1331
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

    .line 252
    sget-object v0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 254
    sget-object p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/io/File;

    .line 256
    :cond_0
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 258
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getDocumentExtension(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;
    .locals 3

    .line 1425
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 1426
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1429
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1432
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    .line 1437
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

    .line 1378
    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name_fixed:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 1383
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1386
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1387
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1388
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v3, :cond_3

    .line 1389
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 1394
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

    .line 121
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 122
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

    .line 123
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

    .line 1408
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

    .line 1359
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 1361
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

    const-string p0, "sent_"

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 78
    sget-object p0, Lorg/telegram/messenger/FileLoader;->sentPattern:Ljava/util/regex/Pattern;

    if-nez p0, :cond_0

    const-string p0, "sent_.*_([0-9]+)_([0-9]+)_([0-9]+)_([0-9]+)"

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

    if-eqz p1, :cond_2

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

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/FileLoader;
    .locals 3

    .line 221
    sget-object v0, Lorg/telegram/messenger/FileLoader;->Instance:[Lorg/telegram/messenger/FileLoader;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 223
    const-class v2, Lorg/telegram/messenger/FileLoader;

    monitor-enter v2

    .line 224
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lorg/telegram/messenger/FileLoader;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoader;-><init>(I)V

    aput-object v1, v0, p0

    .line 228
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

    .line 1421
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

    .line 1047
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v1, :cond_1

    .line 1048
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p0, :cond_6

    .line 1049
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1050
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1051
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1053
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1058
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_2

    .line 1059
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1060
    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_3

    .line 1061
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1062
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1063
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1065
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1068
    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5

    .line 1069
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_4

    .line 1070
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1071
    :cond_4
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_6

    .line 1072
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1073
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1074
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1076
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1080
    :cond_5
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_6

    .line 1081
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->webPhoto:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz p0, :cond_6

    .line 1083
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

    .line 1400
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1401
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

    .line 1345
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1348
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1349
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1350
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getPhotoId(Lorg/telegram/tgnet/TLObject;)J
    .locals 2

    .line 1642
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    .line 1643
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    return-wide v0

    .line 1644
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_1

    .line 1645
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_id:J

    return-wide v0

    .line 1646
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_2

    .line 1647
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

    .line 133
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

    .line 136
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

    .line 108
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 112
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 113
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

    .line 1610
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    return v0

    .line 1613
    :cond_4
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_6

    .line 1614
    check-cast p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1615
    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1616
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 1617
    :cond_6
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_7

    .line 1618
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1619
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 1620
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

    .line 1626
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1629
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    .line 1630
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1631
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

    .line 1635
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

    .line 1578
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

    .line 337
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    .line 341
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {p1}, Lorg/telegram/messenger/FileUploadOperation;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$cancelLoadAllFiles$10(Ljava/lang/String;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->cancel(Lorg/telegram/messenger/FileLoadOperation;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelLoadFile$8(Ljava/lang/String;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    .line 595
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->cancel(Lorg/telegram/messenger/FileLoadOperation;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cancelLoadFile$9()V
    .locals 3

    .line 600
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkCurrentDownloadsFiles$15(Ljava/util/ArrayList;)V
    .locals 2

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1680
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkDownloadQueue$13(Lorg/telegram/messenger/FileLoaderPriorityQueue;Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 1

    .line 1032
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->remove(Lorg/telegram/messenger/FileLoadOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lorg/telegram/messenger/FileLoadOperation;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkUploadNewDataAvailable$4(ZLjava/lang/String;JJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileUploadOperation;

    :goto_0
    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p1, p3, p4, p5, p6}, Lorg/telegram/messenger/FileUploadOperation;->checkNewDataAvailable(JJ)V

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p5, p3

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$deleteFiles$14(Ljava/util/ArrayList;I)V
    .locals 6

    const/4 v0, 0x0

    .line 1532
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1533
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1534
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

    .line 1535
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1537
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1538
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1541
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1544
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

    .line 1545
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1546
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1549
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1551
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1553
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1554
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 1557
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1561
    :cond_2
    :goto_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "q_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1563
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1564
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 1568
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    .line 1572
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

.method private synthetic lambda$loadFile$11(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V
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

    .line 1002
    invoke-direct/range {v0 .. v15}, Lorg/telegram/messenger/FileLoader;->loadFileInternal(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JILorg/telegram/messenger/FileLoadOperationStream;JZI)Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method

.method private synthetic lambda$loadStreamFile$12([Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V
    .locals 17

    move-object/from16 v5, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz v5, :cond_0

    .line 1015
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-nez p2, :cond_1

    if-eqz v5, :cond_1

    const-string v0, "mp4"

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

    .line 1016
    invoke-virtual/range {p10 .. p10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$new$16()V
    .locals 3

    const/4 v0, 0x0

    .line 1732
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1733
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1734
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

    .line 1737
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoader;->dumpFilesQueue()V

    return-void
.end method

.method private synthetic lambda$onNetworkChanged$5(Z)V
    .locals 2

    .line 369
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

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileUploadOperation;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/FileUploadOperation;->onNetworkChanged(Z)V

    goto :goto_0

    .line 372
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

    .line 373
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

    .line 319
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method private synthetic lambda$setForceStreamLoadingFile$7(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 0

    .line 513
    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->forceLoadingFile:Ljava/lang/String;

    .line 514
    iget-object p2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 517
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    :cond_0
    const/4 p2, 0x1

    .line 519
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    const/4 p2, 0x4

    .line 520
    invoke-direct {p0, p2}, Lorg/telegram/messenger/FileLoader;->getPriorityValue(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    .line 521
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 522
    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setLoadingVideo$1(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 0

    .line 290
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

    .line 388
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 392
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

    .line 398
    iget-object v3, v0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 401
    iget-object v3, v0, Lorg/telegram/messenger/FileLoader;->uploadSizes:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v5, v1

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p3

    .line 404
    :goto_0
    new-instance v12, Lorg/telegram/messenger/FileUploadOperation;

    iget v2, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object v1, v12

    move-object v3, p2

    move v4, p1

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/FileUploadOperation;-><init>(ILjava/lang/String;ZJI)V

    .line 405
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    if-eqz v1, :cond_3

    if-eqz v8, :cond_3

    const-wide/16 v4, 0x0

    move-object v2, v12

    move-object v3, p2

    move-wide/from16 v6, p3

    move v8, p1

    .line 406
    invoke-interface/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileUploadProgressChanged(Lorg/telegram/messenger/FileUploadOperation;Ljava/lang/String;JJZ)V

    :cond_3
    if-eqz v9, :cond_4

    .line 409
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPathsEnc:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v12}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    :cond_4
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v12}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p6, :cond_5

    .line 414
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->setForceSmallFile()V

    .line 416
    :cond_5
    new-instance v1, Lorg/telegram/messenger/FileLoader$1;

    invoke-direct {v1, p0, p1, p2, v11}, Lorg/telegram/messenger/FileLoader$1;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;Z)V

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/FileUploadOperation;->setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V

    const/4 v1, 0x1

    if-eqz v11, :cond_7

    .line 491
    iget v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    if-ge v2, v1, :cond_6

    add-int/2addr v2, v1

    .line 492
    iput v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadSmallOperationsCount:I

    .line 493
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_2

    .line 495
    :cond_6
    iget-object v1, v0, Lorg/telegram/messenger/FileLoader;->uploadSmallOperationQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    :cond_7
    iget v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    if-ge v2, v1, :cond_8

    add-int/2addr v2, v1

    .line 499
    iput v2, v0, Lorg/telegram/messenger/FileLoader;->currentUploadOperationsCount:I

    .line 500
    invoke-virtual {v12}, Lorg/telegram/messenger/FileUploadOperation;->start()V

    goto :goto_2

    .line 502
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

    .line 990
    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v14, v0

    goto :goto_1

    :cond_0
    move-object/from16 v8, p7

    if-eqz v2, :cond_2

    .line 993
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

    .line 994
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto :goto_0

    .line 996
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 998
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v14, v13

    .line 1002
    :goto_1
    new-instance v15, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;

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

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    const/16 v0, 0xa

    move/from16 v1, p11

    if-eq v1, v0, :cond_4

    .line 1003
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-2147483648"

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1004
    new-instance v0, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    invoke-direct {v0, v13}, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;-><init>(Lorg/telegram/messenger/FileLoader$1;)V

    .line 1005
    iput-object v15, v0, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    move-object/from16 v1, p0

    .line 1006
    iget-object v2, v1, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v14, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    .line 1008
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
    .locals 35

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

    .line 680
    invoke-static {v2, v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v15, v5

    goto :goto_1

    :cond_0
    move-object/from16 v4, p7

    if-eqz v0, :cond_1

    .line 682
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    .line 684
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 686
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v15, v3

    :goto_1
    if-eqz v15, :cond_25

    const-string v5, "-2147483648"

    .line 690
    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_e

    :cond_4
    const/16 v14, 0xa

    if-eq v7, v14, :cond_5

    .line 693
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 694
    iget-object v5, v8, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v14, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    invoke-direct {v14, v3}, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;-><init>(Lorg/telegram/messenger/FileLoader$1;)V

    invoke-virtual {v5, v15, v14}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v9, :cond_6

    .line 697
    instance-of v3, v6, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_6

    move-object v3, v6

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v5

    if-nez v5, :cond_6

    .line 698
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    invoke-virtual {v5, v9, v3}, Lorg/telegram/messenger/DownloadController;->startDownloadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/MessageObject;)V

    .line 702
    :cond_6
    iget-object v3, v8, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/FileLoadOperation;

    move/from16 v5, p10

    .line 704
    invoke-direct {v8, v5}, Lorg/telegram/messenger/FileLoader;->getPriorityValue(I)I

    move-result v14

    const-string v5, " account="

    const-string v6, " position in queue "

    if-eqz v3, :cond_9

    const/16 v9, 0xa

    if-eq v7, v9, :cond_7

    .line 707
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->isPreloadVideoOperation()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 708
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    :cond_7
    if-lez v14, :cond_8

    const/4 v9, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    .line 710
    :goto_2
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/FileLoadOperation;->setForceRequest(Z)V

    .line 711
    invoke-virtual {v3, v14}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    .line 712
    invoke-virtual {v3, v10, v13, v11, v12}, Lorg/telegram/messenger/FileLoadOperation;->setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V

    .line 713
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 714
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->updateProgress()V

    .line 715
    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getQueue()Lorg/telegram/messenger/FileLoaderPriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load operation update position fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/FileLoadOperation;->getPositionInQueue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v3

    :cond_9
    const/4 v9, 0x4

    .line 720
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    const/16 v18, 0x3

    const-wide/16 v20, 0x0

    if-eqz v0, :cond_a

    .line 727
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/messenger/SecureDocument;)V

    move-object/from16 v2, p6

    move-object v4, v3

    move-object/from16 v26, v5

    move/from16 v3, v18

    move-wide/from16 v9, v20

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v5, p1

    goto/16 :goto_6

    :cond_a
    if-eqz v2, :cond_b

    .line 730
    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 731
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 732
    new-instance v18, Lorg/telegram/messenger/FileLoadOperation;

    move-wide/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v25, v3

    move-object/from16 v3, p7

    move-object/from16 v26, v5

    move-wide/from16 v4, p8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;J)V

    move-object/from16 v5, p1

    move-object/from16 v4, v18

    move-wide/from16 v9, v23

    move/from16 v1, v25

    const/4 v0, 0x1

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v26, v5

    const/4 v0, 0x1

    move-object/from16 v5, p1

    if-eqz v5, :cond_10

    .line 735
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    move-object/from16 v2, p6

    invoke-direct {v3, v5, v2}, Lorg/telegram/messenger/FileLoadOperation;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V

    .line 736
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v18, v0

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    goto :goto_4

    .line 738
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 740
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 741
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    const/16 v18, 0x2

    goto :goto_4

    .line 744
    :cond_d
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 745
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 747
    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    move-object v4, v3

    move/from16 v3, v18

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    goto :goto_6

    :cond_f
    move-object v4, v3

    move/from16 v3, v18

    goto :goto_6

    :cond_10
    move-object/from16 v2, p6

    if-eqz v1, :cond_14

    .line 752
    new-instance v3, Lorg/telegram/messenger/FileLoadOperation;

    iget v4, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v3, v4, v1}, Lorg/telegram/messenger/FileLoadOperation;-><init>(ILorg/telegram/messenger/WebFile;)V

    .line 753
    iget-object v4, v1, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    if-eqz v4, :cond_11

    goto :goto_5

    .line 755
    :cond_11
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v3

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    move v3, v0

    goto :goto_6

    .line 757
    :cond_12
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVideoWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v4, v3

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    const/4 v3, 0x2

    goto :goto_6

    .line 759
    :cond_13
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v4, v3

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    goto :goto_3

    :cond_14
    :goto_5
    move-object v4, v3

    move-wide/from16 v9, v20

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 766
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/messenger/FileLoadOperation;->getDatacenterId()I

    move-result v18

    add-int/lit8 v5, v18, -0x1

    move-object/from16 p4, v6

    const/4 v0, 0x4

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    .line 767
    iget-wide v6, v4, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    const-wide/32 v22, 0x1400000

    cmp-long v5, v6, v22

    if-lez v5, :cond_15

    .line 768
    iget-object v5, v8, Lorg/telegram/messenger/FileLoader;->largeFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v0, v5, v0

    goto :goto_7

    .line 770
    :cond_15
    iget-object v5, v8, Lorg/telegram/messenger/FileLoader;->smallFilesQueue:[Lorg/telegram/messenger/FileLoaderPriorityQueue;

    aget-object v0, v5, v0

    :goto_7
    move-object v7, v0

    move/from16 v0, p15

    const/16 v5, 0xa

    if-eqz v0, :cond_18

    if-ne v0, v5, :cond_16

    goto :goto_8

    :cond_16
    const/4 v6, 0x2

    if-ne v0, v6, :cond_17

    const/4 v1, 0x1

    .line 820
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoadOperation;->setEncryptFile(Z)V

    :cond_17
    move-object/from16 v20, v15

    move-object/from16 v18, v19

    goto/16 :goto_d

    :cond_18
    :goto_8
    cmp-long v6, v9, v20

    if-eqz v6, :cond_21

    .line 777
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v27

    const/16 v32, 0x1

    move-wide/from16 v28, v9

    move/from16 v30, v1

    move/from16 v31, v3

    invoke-virtual/range {v27 .. v32}, Lorg/telegram/messenger/FilePathDatabase;->getPath(JIIZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 780
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 783
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 784
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/16 v18, 0x1

    goto :goto_9

    :cond_19
    move-object v6, v15

    move-object/from16 v5, v19

    const/16 v18, 0x0

    :goto_9
    if-nez v18, :cond_20

    .line 789
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    if-eqz v3, :cond_1a

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1d

    .line 792
    :cond_1a
    invoke-direct {v8, v2}, Lorg/telegram/messenger/FileLoader;->canSaveToPublicStorage(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    if-nez v3, :cond_1b

    const/16 v6, 0x64

    .line 795
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    goto :goto_a

    :cond_1b
    const/16 v6, 0x65

    .line 797
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    :goto_a
    if-eqz v6, :cond_1c

    move-object v5, v6

    const/16 v17, 0x1

    goto :goto_b

    :cond_1c
    const/16 v17, 0x0

    :goto_b
    move-object v6, v15

    goto :goto_c

    .line 803
    :cond_1d
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-direct {v8, v2}, Lorg/telegram/messenger/FileLoader;->canSaveAsFile(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 804
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    const/16 v18, 0x5

    .line 805
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v18

    if-eqz v18, :cond_1f

    move-object/from16 v5, v18

    const/16 v17, 0x1

    goto :goto_c

    :cond_1e
    move-object v6, v15

    :cond_1f
    const/16 v17, 0x0

    :goto_c
    if-eqz v17, :cond_20

    .line 813
    new-instance v2, Lorg/telegram/messenger/FilePathDatabase$PathData;

    invoke-direct {v2, v9, v10, v1, v3}, Lorg/telegram/messenger/FilePathDatabase$PathData;-><init>(JII)V

    iput-object v2, v4, Lorg/telegram/messenger/FileLoadOperation;->pathSaveData:Lorg/telegram/messenger/FilePathDatabase$PathData;

    :cond_20
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    goto :goto_d

    .line 817
    :cond_21
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    move-object/from16 v18, v1

    move-object/from16 v20, v15

    .line 822
    :goto_d
    iget v1, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move v9, v14

    const/16 v2, 0xa

    move-object v14, v4

    move-object v10, v15

    move v15, v1

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/messenger/FileLoadOperation;->setPaths(ILjava/lang/String;Lorg/telegram/messenger/FileLoaderPriorityQueue;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    if-ne v0, v2, :cond_22

    const/4 v0, 0x1

    .line 824
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoadOperation;->setIsPreloadVideoOperation(Z)V

    .line 829
    :cond_22
    new-instance v14, Lorg/telegram/messenger/FileLoader$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v18, v3

    move-object/from16 v3, p1

    move-object v15, v4

    move-object v4, v10

    move/from16 v5, v18

    move-object/from16 v33, p4

    move-object/from16 v6, p16

    move-object/from16 v34, v7

    move-object/from16 v7, p17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$2;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 903
    invoke-virtual {v15, v14}, Lorg/telegram/messenger/FileLoadOperation;->setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V

    .line 905
    iget-object v0, v8, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10, v15}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {v15, v9}, Lorg/telegram/messenger/FileLoadOperation;->setPriority(I)V

    move-object/from16 v0, p11

    if-eqz v0, :cond_23

    .line 908
    invoke-virtual {v15, v0, v13, v11, v12}, Lorg/telegram/messenger/FileLoadOperation;->setStream(Lorg/telegram/messenger/FileLoadOperationStream;ZJ)V

    :cond_23
    move-object/from16 v0, v34

    .line 911
    invoke-virtual {v0, v15}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->add(Lorg/telegram/messenger/FileLoadOperation;)V

    .line 912
    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoaderPriorityQueue;->checkLoadingOperations()V

    .line 914
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_24

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create load operation fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " documentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/telegram/messenger/FileLoadOperation;->getPositionInQueue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_24
    return-object v15

    :cond_25
    :goto_e
    return-object v3
.end method

.method public static longToBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    .line 1717
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1718
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1719
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 3

    .line 307
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "p"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 309
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 310
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

    .line 244
    sput-object p0, Lorg/telegram/messenger/FileLoader;->mediaDirs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public cancelFileUpload(Ljava/lang/String;Z)V
    .locals 2

    .line 334
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadAllFiles()V
    .locals 4

    .line 607
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

    .line 608
    iget-object v2, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPathsUI:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$LoadOperationUIObject;->loadInternalRunnable:Ljava/lang/Runnable;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 612
    sget-object v3, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 614
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

    .line 560
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

    .line 536
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

    .line 540
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x0

    .line 528
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

    .line 532
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 552
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

    .line 556
    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V

    return-void
.end method

.method public cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V
    .locals 8

    .line 548
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

    .line 564
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

    .line 565
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

.method public checkCurrentDownloadsFiles()V
    .locals 4

    .line 1669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1670
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 1671
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1672
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    .line 1673
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v3, :cond_0

    .line 1674
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1677
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1678
    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;)V

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

    .line 1689
    invoke-virtual {p0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FilePathDatabase;->checkMediaExistance(Ljava/util/ArrayList;)V

    return-void
.end method

.method public checkUploadNewDataAvailable(Ljava/lang/String;ZJJ)V
    .locals 10

    .line 352
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda15;

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JJ)V

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearFilePaths()V
    .locals 1

    .line 1701
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->clear()V

    return-void
.end method

.method public clearRecentDownloadedFiles()V
    .locals 1

    .line 1697
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

    .line 1528
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1531
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

    .line 1741
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 1744
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1745
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->dumpFilesQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getBufferedProgressFromPosition(FLjava/lang/String;)F
    .locals 2

    .line 634
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadOperationPaths:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/FileLoadOperation;

    if-eqz p2, :cond_1

    .line 639
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

    .line 1653
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1654
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->downloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1655
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1656
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

    .line 1254
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->filePathDatabase:Lorg/telegram/messenger/FilePathDatabase;

    return-object v0
.end method

.method public getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 1

    .line 146
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public getFileReference(Ljava/lang/Object;)I
    .locals 3

    .line 269
    iget v0, p0, Lorg/telegram/messenger/FileLoader;->lastReferenceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoader;->lastReferenceId:I

    .line 270
    iget-object v1, p0, Lorg/telegram/messenger/FileLoader;->parentObjectReferences:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public getParentObject(I)Ljava/lang/Object;
    .locals 1

    .line 275
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

    .line 1139
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p4, :cond_1

    .line 1163
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    :cond_0
    :goto_0
    move v6, v4

    move v7, v6

    move-wide v4, v0

    goto/16 :goto_c

    .line 1165
    :cond_1
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz p4, :cond_6

    .line 1166
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1167
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Document;->localPath:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1168
    new-instance p1, Ljava/io/File;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->localPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1170
    :cond_2
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz p4, :cond_3

    goto :goto_1

    .line 1173
    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p4

    if-eqz p4, :cond_4

    move v3, v7

    goto :goto_1

    .line 1175
    :cond_4
    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p4

    if-eqz p4, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    .line 1181
    :goto_1
    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1182
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1183
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    :goto_2
    move v6, p2

    move v7, v3

    goto/16 :goto_c

    .line 1184
    :cond_6
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p4, :cond_7

    .line 1185
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 1186
    invoke-virtual {p0, p1, p3, v4, p5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_7
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-wide/32 v8, -0x80000000

    if-eqz p4, :cond_d

    .line 1188
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1189
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez p4, :cond_c

    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz p4, :cond_8

    goto :goto_4

    .line 1191
    :cond_8
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p4, :cond_b

    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v2, :cond_b

    iget-wide v5, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_9

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz p4, :cond_b

    :cond_9
    iget p4, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-gez p4, :cond_a

    goto :goto_3

    .line 1194
    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    move-object v2, p4

    goto :goto_4

    .line 1192
    :cond_b
    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    move-object v2, p4

    goto :goto_5

    :cond_c
    :goto_4
    move v3, v4

    .line 1196
    :goto_5
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 1197
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    goto :goto_2

    .line 1199
    :cond_d
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    if-eqz p4, :cond_11

    .line 1200
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_videoSize;

    .line 1201
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p4, :cond_10

    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v2, :cond_10

    iget-wide v5, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_e

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ltz p4, :cond_10

    :cond_e
    iget p4, p2, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    if-gez p4, :cond_f

    goto :goto_6

    .line 1204
    :cond_f
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    move-object v2, p4

    move v3, v4

    goto :goto_7

    .line 1202
    :cond_10
    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    move-object v2, p4

    .line 1206
    :goto_7
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 1207
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    goto/16 :goto_2

    .line 1208
    :cond_11
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p4, :cond_14

    .line 1209
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1210
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez p4, :cond_13

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long p4, v5, v8

    if-nez p4, :cond_12

    iget p4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez p4, :cond_12

    goto :goto_8

    .line 1214
    :cond_12
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 1215
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    move-object v2, p4

    goto :goto_9

    .line 1211
    :cond_13
    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    move-object v2, p2

    move-wide v5, v0

    move p2, v4

    :goto_9
    move v7, v4

    move-wide v4, v5

    move v6, p2

    goto/16 :goto_c

    .line 1217
    :cond_14
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-nez p4, :cond_1b

    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz p4, :cond_15

    goto :goto_b

    .line 1226
    :cond_15
    instance-of p2, p1, Lorg/telegram/messenger/WebFile;

    if-eqz p2, :cond_19

    .line 1227
    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/WebFile;

    .line 1228
    iget-object p4, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 1229
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    :goto_a
    move-object v2, p2

    goto/16 :goto_0

    .line 1230
    :cond_16
    iget-object p4, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string v2, "audio/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 1231
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    goto :goto_a

    .line 1232
    :cond_17
    iget-object p2, p2, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    const-string/jumbo p4, "video/"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1233
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    goto :goto_a

    .line 1235
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    goto :goto_a

    .line 1237
    :cond_19
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-nez p2, :cond_1a

    instance-of p2, p1, Lorg/telegram/messenger/SecureDocument;

    if-eqz p2, :cond_0

    .line 1238
    :cond_1a
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    :goto_b
    const-string p4, "s"

    if-nez p2, :cond_1c

    move-object p2, p4

    .line 1221
    :cond_1c
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1222
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    .line 1224
    :cond_1d
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    goto/16 :goto_0

    :goto_c
    if-nez v2, :cond_1e

    .line 1242
    new-instance p1, Ljava/io/File;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1e
    cmp-long p2, v4, v0

    if-eqz p2, :cond_1f

    .line 1245
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/FilePathDatabase;->getPath(JIIZ)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 1247
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1250
    :cond_1f
    new-instance p2, Ljava/io/File;

    invoke-static {p1, p3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 1147
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1151
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 1143
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 1091
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)Ljava/io/File;
    .locals 6

    const-string v0, ""

    if-nez p1, :cond_0

    .line 1096
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1098
    :cond_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1099
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_8

    .line 1100
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1102
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1104
    invoke-virtual {p0, p1, v3, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1109
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 1110
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz p1, :cond_2

    move v2, v4

    :cond_2
    invoke-virtual {p0, v0, v3, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1111
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_5

    .line 1112
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1114
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v1, v5, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1116
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz p1, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {p0, v1, v3, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1119
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_7

    .line 1120
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    .line 1121
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p0, p1, v3, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_8

    .line 1123
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 1124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1125
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1127
    invoke-virtual {p0, p1, v3, v2, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1131
    :cond_7
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_8

    .line 1132
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p0, p1, v3, v4, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1135
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

    .line 1661
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1662
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1663
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1664
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

    .line 630
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

    .line 326
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "p"

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

    .line 330
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
    new-instance v8, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IILjava/lang/String;Landroid/net/Uri;)V

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

    .line 649
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

    .line 652
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

    .line 659
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

    .line 673
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

    .line 666
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

    .line 669
    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;JII)V

    return-void
.end method

.method protected loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;
    .locals 16

    .line 1012
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v13, v1, [Lorg/telegram/messenger/FileLoadOperation;

    .line 1014
    sget-object v14, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda16;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p1

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/FileLoader;[Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;ILorg/telegram/messenger/FileLoadOperationStream;JZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 1019
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1021
    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 1023
    :goto_0
    aget-object v0, v13, v1

    return-object v0
.end method

.method public onNetworkChanged(Z)V
    .locals 2

    .line 368
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/FileLoader;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 319
    new-instance p3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader;->delegate:Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    return-void
.end method

.method public setForceStreamLoadingFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    sget-object v0, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 290
    new-instance p3, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoInternal(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    const-string v3, "p"

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

    .line 302
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

    .line 279
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "p"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader;->loadingVideos:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
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

.method public uploadFile(Ljava/lang/String;ZZI)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 379
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZJIZ)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;ZZJIZ)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 386
    :cond_0
    sget-object v9, Lorg/telegram/messenger/FileLoader;->fileLoaderQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda14;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/FileLoader;ZLjava/lang/String;JIZZ)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
