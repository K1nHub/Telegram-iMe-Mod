.class public Lorg/telegram/messenger/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageLoader$MessageThumb;,
        Lorg/telegram/messenger/ImageLoader$CacheImage;,
        Lorg/telegram/messenger/ImageLoader$CacheOutTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;,
        Lorg/telegram/messenger/ImageLoader$HttpImageTask;,
        Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;,
        Lorg/telegram/messenger/ImageLoader$HttpFileTask;,
        Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    }
.end annotation


# static fields
.field public static final AUTOPLAY_FILTER:Ljava/lang/String; = "g"

.field private static volatile Instance:Lorg/telegram/messenger/ImageLoader;

.field private static bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static bytesThumbLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static header:[B

.field private static headerThumb:[B


# instance fields
.field private artworkTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapUseCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

.field private cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

.field cachedAnimatedFileDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedFileDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private canForce8888:Z

.field private currentArtworkTasksCount:I

.field private currentHttpFileLoadTasksCount:I

.field private currentHttpTasksCount:I

.field private fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private forceLoadingImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpFileLoadTasksByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$HttpFileTask;",
            ">;"
        }
    .end annotation
.end field

.field private httpTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/ImageLoader$HttpImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreRemoval:Ljava/lang/String;

.field private imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

.field private imageLoadingByKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByTag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoadingByUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$CacheImage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastCacheOutTime:J

.field private lastImageNum:I

.field private lottieMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private memCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private replacedBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retryHttpsTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private smallImagesMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private telegramPath:Ljava/io/File;

.field private testWebFile:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/WebFile;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGenerateTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;",
            ">;"
        }
    .end annotation
.end field

.field private thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private waitingForQualityThumb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForQualityThumbByTag:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wallpaperMemCache:Lorg/telegram/messenger/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0SIMIAFb6yjWcei18nnR7aJru_0(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidFailedLoad$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$41ypbGDiBd6bFLuDT8i-V89mgyQ(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAlIzU7eROvAy7aqHtH2XkrLxS0(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelForceLoadingForImageReceiver$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXRu3MnzyW8fuoXOelf0mVcHerA(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelLoadingForImageReceiver$3(ZLorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fuJjBwhBz4PEIlbv9W8e4olEBUs(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$artworkLoadError$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEVvKzjp4xwLa5NzaLJcbKj1e9I(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbgbKT7PpwzYtyw8AOpkH2BTjf4(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$12(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kt7Z0e5XUuYAeRjX0Hqj7X9UdbI(Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$checkMediaPaths$0(Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kw0idaPrv_iWOQCAmgKlf_T-ZbE(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Lorg/telegram/messenger/ImageLoader;->lambda$createLoadOperationForImageReceiver$6(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nAXnG2x5DGvOa2YUexMzb31VX7w(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidLoaded$10(Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvS1PGh6JAGAk9sstmlzPfbuLmY(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$moveDirectory$2(Ljava/io/File;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oFZs-XGpnQMIE9RW2pe1EXSl-GI(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$httpFileLoadError$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6EYetVFQoES5g3JaQtgLGavWJQ(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$replaceImageInCache$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vFU40JUkKky4tsQyxKkimVpKYpA(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$preloadArtwork$7(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 119
    sput-object v1, Lorg/telegram/messenger/ImageLoader;->header:[B

    new-array v0, v0, [B

    .line 120
    sput-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    const/4 v0, 0x0

    .line 1919
    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    .line 109
    new-instance v0, Lorg/telegram/DispatchQueuePriority;

    const-string v1, "cacheOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/DispatchQueuePriority;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    .line 110
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cacheThumbOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 111
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "thumbGeneratingQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 112
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "imageLoadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 122
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 125
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    .line 127
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    .line 130
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 134
    iput-wide v2, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    .line 135
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 137
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 1935
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1937
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v3, 0xc0

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1939
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    .line 1944
    :goto_1
    div-int/lit8 v1, v1, 0x7

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 1949
    new-instance v4, Lorg/telegram/messenger/ImageLoader$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/ImageLoader$1;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 1971
    new-instance v3, Lorg/telegram/messenger/ImageLoader$2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$2;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 1993
    new-instance v2, Lorg/telegram/messenger/ImageLoader$3;

    const/4 v3, 0x4

    div-int/2addr v1, v3

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/ImageLoader$3;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    .line 2000
    new-instance v1, Lorg/telegram/messenger/ImageLoader$4;

    const/high16 v2, 0xa00000

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/ImageLoader$4;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    .line 2032
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2033
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 2034
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2036
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 2038
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2041
    :cond_2
    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2042
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 2046
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ImageLoader$5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/ImageLoader$5;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2126
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    .line 2128
    new-instance v0, Lorg/telegram/messenger/ImageLoader$6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$6;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    .line 2143
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 2144
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    .line 2145
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 2146
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 2147
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_NOFS"

    .line 2148
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    .line 2149
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    .line 2150
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 2151
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 2152
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 2153
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2155
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2160
    :catchall_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700()[B
    .locals 1

    .line 94
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    return-object v0
.end method

.method static synthetic access$1800()[B
    .locals 1

    .line 94
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/ImageLoader;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 94
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/ImageLoader;)J
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/ImageLoader;J)J
    .locals 0

    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide p1
.end method

.method static synthetic access$2300()Ljava/lang/ThreadLocal;
    .locals 1

    .line 94
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/ImageLoader;)Landroid/util/SparseArray;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->artworkLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/DispatchQueuePriority;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V

    return-void
.end method

.method private artworkLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3431
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "000000000_999999.f"

    const-string v2, "000000000_999999_temp.f"

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 2430
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2431
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v4, 0x3

    if-eq p3, v4, :cond_4

    const/4 v4, 0x5

    if-ne p3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 2436
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2437
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 2439
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2440
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p1, v3

    move-object p3, p1

    goto :goto_1

    .line 2433
    :cond_4
    :goto_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2434
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 2443
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 2444
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2445
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2446
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2448
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    .line 2449
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 2450
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    return v0

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v1

    .line 2455
    :goto_2
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    .line 2459
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 2462
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return p1

    :goto_4
    if-eqz v3, :cond_6

    .line 2459
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 2462
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2464
    :cond_6
    :goto_5
    throw p1
.end method

.method private createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v9, p10

    if-eqz v14, :cond_4

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    if-nez p5, :cond_0

    goto/16 :goto_2

    .line 2724
    :cond_0
    invoke-virtual {v14, v9}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2726
    iget v0, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    invoke-virtual {v14, v0, v9}, Lorg/telegram/messenger/ImageReceiver;->setTag(II)V

    .line 2727
    iget v3, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    add-int/2addr v3, v2

    iput v3, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 2729
    iput v1, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    :cond_1
    move v5, v0

    .line 2734
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v16

    .line 2735
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v12

    .line 2736
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v17

    .line 2737
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isShouldGenerateQualityThumb()Z

    move-result v18

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v13

    if-nez v9, :cond_2

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_0

    :cond_2
    move v11, v1

    .line 2741
    :goto_0
    new-instance v10, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v7, p12

    move-object/from16 v8, p6

    move/from16 v9, p10

    move-object/from16 v21, v10

    move-object/from16 v10, p5

    move-object/from16 v14, v17

    move/from16 v15, v16

    move/from16 v16, v18

    move-object/from16 v17, p4

    move/from16 v18, p9

    move-wide/from16 v19, p7

    invoke-direct/range {v0 .. v20}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V

    move-object/from16 v0, p0

    .line 3049
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x1

    :goto_1
    move-object/from16 v4, v21

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    move-object/from16 v1, p1

    .line 3050
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    move-object v0, v15

    return-void
.end method

.method public static decompressGzip(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    .line 807
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 809
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 810
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 807
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v1
.end method

.method private fileDidFailedLoad(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 3500
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    .line 3446
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 3798
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3801
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 3803
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3804
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_1

    .line 3806
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 p0, 0x0

    .line 3807
    array-length v2, v0

    invoke-virtual {v1, v0, p0, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3810
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 5

    .line 4052
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4053
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 4054
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4055
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_0

    :goto_1
    move-object v3, v1

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4060
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_3

    .line 4061
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 4062
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4063
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4068
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5

    .line 4069
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_6

    .line 4070
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 4071
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4072
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4078
    :cond_5
    instance-of p0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz p0, :cond_6

    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v0, :cond_6

    .line 4079
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    :cond_6
    :goto_4
    return-object v3
.end method

.method public static generateMessageThumb(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/ImageLoader$MessageThumb;
    .locals 17

    move-object/from16 v0, p0

    .line 4095
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 4097
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v7, :cond_1

    array-length v7, v7

    if-eqz v7, :cond_1

    .line 4098
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 4100
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4101
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4102
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4103
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4104
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4105
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4107
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 4108
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4109
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4110
    invoke-static {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 4111
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v10

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v3

    iget v1, v0, Lorg/telegram/ui/Components/Point;->y:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const-string v1, "%d_%d@%d_%d_b"

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4112
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4113
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v8, v0, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v7, v7

    invoke-static {v2, v4, v3, v7, v6}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v9, 0x3

    const/4 v10, 0x1

    .line 4115
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v13

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4116
    iget v3, v0, Lorg/telegram/ui/Components/Point;->x:F

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v2, v3, v0, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_0

    .line 4118
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    .line 4121
    :cond_0
    new-instance v0, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/ImageLoader$MessageThumb;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0

    .line 4125
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_7

    .line 4126
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_7

    .line 4127
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4128
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v9, :cond_6

    .line 4129
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v10, 0x140

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 4133
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4134
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto :goto_2

    :cond_2
    move v9, v6

    .line 4136
    :goto_1
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 4137
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v10, :cond_3

    .line 4138
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .line 4139
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 4140
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move v9, v6

    move v10, v9

    .line 4146
    :goto_2
    invoke-static {v9, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v9

    .line 4147
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v0, v0, v8}, Lorg/telegram/messenger/ImageLocation;->getStrippedKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    iget v12, v9, Lorg/telegram/ui/Components/Point;->x:F

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    iget v12, v9, Lorg/telegram/ui/Components/Point;->y:F

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    const-string v12, "%s_false@%d_%d_b"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 4148
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4149
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-static {v8, v4}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v12, 0x3

    const/4 v13, 0x1

    .line 4151
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    move-object v11, v8

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4152
    iget v0, v9, Lorg/telegram/ui/Components/Point;->x:F

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, v9, Lorg/telegram/ui/Components/Point;->y:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v8, v0, v1, v5}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v8, :cond_5

    .line 4154
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    .line 4157
    :cond_5
    new-instance v0, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v10, v1}, Lorg/telegram/messenger/ImageLoader$MessageThumb;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v4
.end method

.method private generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2701
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 2702
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    if-nez v0, :cond_2

    .line 2704
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 2705
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 3394
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3395
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 3396
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3397
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getHttpFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3541
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 3545
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3546
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3946
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 3947
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    move-object p0, v0

    :cond_0
    const/16 v0, 0x2e

    .line 3950
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 3952
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 3954
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static getInstance()Lorg/telegram/messenger/ImageLoader;
    .locals 2

    .line 1922
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_1

    .line 1924
    const-class v1, Lorg/telegram/messenger/ImageLoader;

    monitor-enter v1

    .line 1925
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_0

    .line 1927
    new-instance v0, Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageLoader;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 1929
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getPublicStorageDir()Ljava/io/File;
    .locals 4

    .line 2412
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2413
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2414
    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2415
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2416
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2417
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    .line 1720
    array-length v0, p0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    sget-object v2, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v2, v2

    add-int/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/Bitmaps;->footer:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1721
    sget-object v2, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    .line 1722
    array-length v3, v2

    if-lt v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 1724
    new-array v2, v0, [B

    .line 1725
    sget-object v3, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1727
    :cond_1
    sget-object v3, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1728
    sget-object v3, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v3, v3

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1729
    sget-object v3, Lorg/telegram/messenger/Bitmaps;->footer:[B

    sget-object v4, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v4, v4

    array-length v6, p0

    add-int/2addr v4, v6

    sub-int/2addr v4, v1

    sget-object v1, Lorg/telegram/messenger/Bitmaps;->footer:[B

    array-length v1, v1

    invoke-static {v3, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa4

    const/4 v3, 0x1

    .line 1731
    aget-byte v3, p0, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xa6

    const/4 v3, 0x2

    .line 1732
    aget-byte p0, p0, v3

    aput-byte p0, v2, v1

    .line 1734
    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 1736
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_2
    return-object p0
.end method

.method public static hasAutoplayFilter(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "_"

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 146
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 147
    aget-object v2, p0, v1

    const-string v3, "g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private httpFileLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3416
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAnimatedAvatar(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "avatar"

    .line 1702
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$artworkLoadError$9(Ljava/lang/String;)V
    .locals 2

    .line 3432
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3436
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    if-eqz v0, :cond_1

    .line 3438
    new-instance v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;->access$4500(Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3439
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3441
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$cancelForceLoadingForImageReceiver$5(Ljava/lang/String;)V
    .locals 1

    .line 2717
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$cancelLoadingForImageReceiver$3(ZLorg/telegram/messenger/ImageReceiver;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    if-lez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    move v2, v0

    .line 2616
    :cond_2
    :goto_1
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 2619
    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V

    .line 2621
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_4

    .line 2623
    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static synthetic lambda$checkMediaPaths$0(Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    .line 2171
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    if-eqz p1, :cond_0

    .line 2173
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V
    .locals 2

    .line 2169
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Landroid/util/SparseArray;

    move-result-object v0

    .line 2170
    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createLoadOperationForImageReceiver$6(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move-object/from16 v8, p16

    move/from16 v7, p17

    move-wide/from16 v5, p18

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    .line 2744
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2745
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2746
    iget-object v12, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v12, :cond_3

    if-ne v12, v4, :cond_0

    move/from16 v9, p6

    .line 2749
    invoke-virtual {v12, v11, v9}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageReceiverGuid(Lorg/telegram/messenger/ImageReceiver;I)V

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v9, v8

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/16 v18, 0x0

    goto :goto_2

    :cond_0
    move/from16 v9, p6

    if-ne v12, v3, :cond_2

    move-object/from16 v16, v3

    if-nez v4, :cond_1

    const/16 v18, 0x0

    move-object v3, v12

    move-object/from16 v17, v4

    const/4 v12, 0x2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move v9, v7

    move/from16 v7, p8

    move-object v9, v8

    move/from16 v8, p6

    .line 2753
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->replaceImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move-object/from16 v17, v4

    move-object v9, v8

    const/4 v12, 0x2

    const/16 v18, 0x0

    :goto_0
    move v8, v12

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v9, v8

    const/4 v8, 0x2

    const/16 v18, 0x0

    .line 2757
    invoke-virtual {v12, v11}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v9, v8

    const/4 v8, 0x2

    const/16 v18, 0x0

    :goto_1
    move/from16 v3, v18

    :goto_2
    if-nez v3, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v3, v17

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move v12, v8

    move/from16 v8, p6

    .line 2762
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v12, v8

    :goto_3
    if-nez v3, :cond_6

    if-eqz v16, :cond_6

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p6

    .line 2766
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v12, v4

    move-object v9, v8

    const/16 v18, 0x0

    move/from16 v3, v18

    :cond_6
    :goto_4
    if-nez v3, :cond_51

    .line 2777
    iget-object v3, v13, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    const-string v8, "athumb"

    const-string v4, "_"

    const/16 v16, 0x4

    if-eqz v3, :cond_b

    const-string v6, "http"

    .line 2779
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "thumb://"

    .line 2781
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v10, ":"

    if-eqz v6, :cond_8

    const/16 v6, 0x8

    .line 2782
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 2784
    new-instance v10, Ljava/io/File;

    const/4 v15, 0x1

    add-int/2addr v6, v15

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const-string/jumbo v6, "vthumb://"

    .line 2786
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x9

    .line 2787
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 2789
    new-instance v10, Ljava/io/File;

    const/4 v15, 0x1

    add-int/2addr v6, v15

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 2792
    :cond_9
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    move/from16 v3, v18

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v20, v8

    move v6, v12

    move/from16 v5, v18

    const/4 v12, 0x1

    move-object/from16 v8, p7

    goto/16 :goto_d

    :cond_b
    if-nez v1, :cond_19

    if-eqz p10, :cond_19

    .line 2805
    instance-of v3, v14, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_c

    .line 2806
    move-object v3, v14

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2807
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    .line 2808
    iget-object v15, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2809
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v12, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v7

    .line 2810
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getMediaType()I

    move-result v3

    move-object v12, v7

    move-object/from16 p13, v15

    move v7, v3

    move-object v15, v6

    move/from16 v3, v18

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    if-eqz v15, :cond_e

    .line 2814
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v15, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 2815
    invoke-static/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_7

    :cond_d
    const/4 v3, 0x3

    :goto_7
    move-object v12, v7

    const/16 p13, 0x0

    move v7, v3

    move v3, v6

    goto :goto_8

    :cond_e
    const/4 v6, 0x1

    move/from16 v3, v18

    move v7, v3

    const/16 p13, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_18

    if-eqz p14, :cond_10

    .line 2831
    new-instance v6, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    const-string v12, "q_"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v15, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v15, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ".jpg"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    move-object/from16 v20, v8

    move-object/from16 v21, v12

    :goto_9
    move/from16 v5, v18

    const/4 v6, 0x0

    .line 2840
    :goto_a
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2841
    new-instance v8, Ljava/io/File;

    move-object/from16 v12, p13

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_12

    :cond_11
    const/4 v8, 0x0

    :cond_12
    if-nez v8, :cond_13

    move-object/from16 v12, v21

    goto :goto_b

    :cond_13
    move-object v12, v8

    :goto_b
    if-nez v6, :cond_17

    .line 2851
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 2852
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v2, :cond_14

    .line 2854
    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader$1;)V

    .line 2855
    invoke-static {v2, v15}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1002(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v8, p7

    .line 2856
    invoke-static {v2, v8}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2857
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1102(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Z)Z

    .line 2858
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    :cond_14
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2861
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1300(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    :cond_15
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2865
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p15, :cond_16

    .line 2866
    invoke-direct {v0, v7, v12, v2}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    :cond_16
    return-void

    :cond_17
    move-object/from16 v8, p7

    const/4 v12, 0x1

    move-object v10, v6

    move v3, v12

    const/4 v6, 0x2

    goto :goto_d

    :cond_18
    move v12, v6

    move-object/from16 v20, v8

    move-object/from16 v8, p7

    move v3, v12

    move/from16 v5, v18

    goto :goto_c

    :cond_19
    move-object/from16 v20, v8

    const/4 v12, 0x1

    move-object/from16 v8, p7

    move/from16 v3, v18

    move v5, v3

    :goto_c
    const/4 v6, 0x2

    const/4 v10, 0x0

    :goto_d
    if-eq v1, v6, :cond_51

    .line 2874
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result v7

    .line 2875
    new-instance v13, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v15, 0x0

    invoke-direct {v13, v0, v15}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 2876
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v15

    if-nez v15, :cond_1a

    move/from16 v15, v18

    goto :goto_e

    :cond_1a
    move v15, v12

    :goto_e
    iput v15, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    move-object/from16 v15, p9

    if-nez p10, :cond_20

    .line 2878
    iget v12, v15, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq v12, v6, :cond_1f

    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/messenger/WebFile;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_10

    .line 2880
    :cond_1b
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v6, :cond_20

    const-string/jumbo v12, "vthumb"

    .line 2882
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "thumb"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "jpg"

    .line 2883
    invoke-static {v6, v12}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "webm"

    .line 2884
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "mp4"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "gif"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_f

    :cond_1c
    const-string v6, "tgs"

    .line 2886
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    .line 2887
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_11

    :cond_1d
    :goto_f
    const/4 v6, 0x2

    .line 2885
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_11

    :cond_1e
    :goto_10
    const/4 v6, 0x2

    .line 2879
    :cond_1f
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_20
    :goto_11
    const-wide/16 v21, 0x0

    if-nez v10, :cond_42

    .line 2895
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v12, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    move/from16 p4, v3

    const-string v3, "g"

    if-nez v12, :cond_3e

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v6, :cond_21

    goto/16 :goto_22

    .line 2897
    :cond_21
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v6, :cond_23

    .line 2898
    iput-object v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 2899
    iget-object v4, v6, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_22

    const/4 v4, 0x1

    goto :goto_12

    :cond_22
    move/from16 v4, v18

    .line 2900
    :goto_12
    new-instance v10, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v10, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move/from16 v11, p17

    move v12, v4

    move-object v6, v8

    move-wide/from16 v1, v21

    const/4 v8, 0x3

    move-object v4, v3

    goto/16 :goto_23

    .line 2901
    :cond_23
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, ".svg"

    const-string v12, "application/x-tgwallpattern"

    move/from16 p13, v5

    const-string v5, "application/x-tgsticker"

    const-string v9, "application/x-tgsdice"

    if-nez v6, :cond_2d

    invoke-direct {v0, v8}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    move-object/from16 v6, p16

    move/from16 v11, p17

    move-object/from16 p14, v3

    if-nez v11, :cond_24

    move-object/from16 v19, v4

    move-wide/from16 v3, p18

    cmp-long v23, v3, v21

    if-lez v23, :cond_24

    iget-object v3, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-nez v3, :cond_24

    if-eqz v7, :cond_2e

    .line 2902
    :cond_24
    new-instance v3, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2903
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v1, 0x1

    goto :goto_13

    :cond_25
    const/4 v4, 0x2

    if-ne v11, v4, :cond_26

    .line 2906
    new-instance v3, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".enc"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_26
    move/from16 v1, p13

    .line 2908
    :goto_13
    iget-object v4, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2c

    .line 2909
    instance-of v7, v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v7, :cond_28

    .line 2910
    check-cast v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 2911
    iget-object v4, v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_27

    const/4 v4, 0x5

    const/4 v12, 0x1

    goto :goto_14

    :cond_27
    move/from16 v12, p4

    const/4 v4, 0x5

    .line 2914
    :goto_14
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_17

    .line 2915
    :cond_28
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    .line 2916
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move v5, v1

    move-object v10, v3

    move v12, v4

    move-object v6, v8

    move-wide/from16 v1, v21

    const/4 v8, 0x3

    :goto_15
    move-object/from16 v4, p14

    goto/16 :goto_23

    :cond_29
    const/4 v4, 0x1

    .line 2918
    iget-object v7, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2919
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_16

    .line 2920
    :cond_2a
    iget-object v4, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x3

    .line 2921
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_16

    :cond_2b
    const/4 v4, 0x3

    .line 2923
    iget-object v5, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 2924
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2925
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_2c
    :goto_16
    move/from16 v12, p4

    :goto_17
    move-object/from16 v4, p14

    move v5, v1

    move-object v10, v3

    move-object v6, v8

    move-wide/from16 v1, v21

    const/4 v8, 0x3

    goto/16 :goto_23

    :cond_2d
    move-object/from16 v6, p16

    move/from16 v11, p17

    move-object/from16 p14, v3

    move-object/from16 v19, v4

    .line 2929
    :cond_2e
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v3, ".temp"

    if-eqz v1, :cond_39

    .line 2931
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v4, :cond_2f

    .line 2932
    new-instance v4, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18

    .line 2933
    :cond_2f
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2934
    new-instance v4, Ljava/io/File;

    const/4 v7, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v4, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18

    .line 2936
    :cond_30
    new-instance v4, Ljava/io/File;

    const/4 v7, 0x3

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v4, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2938
    :goto_18
    invoke-direct {v0, v8}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    move-object/from16 v7, p14

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_19

    :cond_31
    move-object/from16 v7, p14

    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_32

    .line 2939
    new-instance v4, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p14, v7

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1a

    :cond_32
    move-object/from16 p14, v7

    .line 2941
    :goto_1a
    instance-of v3, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v3, :cond_34

    .line 2942
    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 2943
    iget-object v3, v3, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_33

    const/4 v3, 0x5

    const/4 v12, 0x1

    goto :goto_1b

    :cond_33
    move/from16 v12, p4

    const/4 v3, 0x5

    .line 2946
    :goto_1b
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_1c

    .line 2947
    :cond_34
    iget-object v3, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    .line 2948
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move v12, v3

    :goto_1c
    const/4 v8, 0x3

    goto :goto_1e

    :cond_35
    const/4 v3, 0x1

    .line 2950
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2951
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v8, 0x3

    goto :goto_1d

    .line 2952
    :cond_36
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v8, 0x3

    .line 2953
    iput v8, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_1d

    :cond_37
    const/4 v8, 0x3

    .line 2955
    iget-object v3, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    .line 2956
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2957
    iput v8, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_38
    :goto_1d
    move/from16 v12, p4

    .line 2960
    :goto_1e
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    move-object v10, v4

    move-wide v1, v5

    move-object/from16 v6, p7

    move/from16 v5, p13

    goto/16 :goto_15

    :cond_39
    move-object/from16 v7, v19

    const/4 v8, 0x3

    .line 2961
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v1, :cond_3a

    .line 2962
    new-instance v10, Ljava/io/File;

    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move/from16 v12, p4

    move-object/from16 v6, p7

    move/from16 v5, p13

    move-object/from16 v4, p14

    :goto_1f
    move-wide/from16 v1, v21

    goto/16 :goto_23

    :cond_3a
    const/4 v1, 0x1

    if-ne v11, v1, :cond_3b

    .line 2965
    new-instance v4, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_20

    .line 2967
    :cond_3b
    new-instance v4, Ljava/io/File;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_20
    move-object/from16 v6, p7

    move-object v10, v4

    .line 2969
    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    move-object/from16 v4, p14

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v15, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v5, :cond_3d

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_21

    :cond_3c
    move-object/from16 v4, p14

    .line 2970
    :goto_21
    new-instance v10, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v15, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-wide v1, v12, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_3d
    move/from16 v12, p4

    move/from16 v5, p13

    goto :goto_1f

    :cond_3e
    :goto_22
    move/from16 v11, p17

    move-object v4, v3

    move/from16 p13, v5

    move-object v6, v8

    const/4 v8, 0x3

    move/from16 v5, p13

    move-wide/from16 v1, v21

    const/4 v12, 0x1

    .line 2973
    :goto_23
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageLoader;->hasAutoplayFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_3f
    const/4 v3, 0x2

    .line 2974
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 2975
    iput-wide v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    .line 2976
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_24

    :cond_40
    move/from16 v2, p8

    move v1, v5

    goto :goto_25

    :cond_41
    :goto_24
    move/from16 v2, p8

    move v1, v5

    const/4 v12, 0x1

    goto :goto_25

    :cond_42
    move/from16 v11, p17

    move/from16 p4, v3

    move/from16 p13, v5

    move-object v6, v8

    const/4 v8, 0x3

    move/from16 v12, p4

    move/from16 v2, p8

    move/from16 v1, p13

    .line 2982
    :goto_25
    iput v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    move-object/from16 v9, p3

    .line 2983
    iput-object v9, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 2984
    iput-object v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 2985
    iput-object v15, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v7, p16

    .line 2986
    iput-object v7, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    move/from16 v14, p12

    .line 2987
    iput v14, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    move-object/from16 v5, p11

    .line 2988
    iput-object v5, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 2989
    iget v3, v15, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v3, :cond_43

    .line 2990
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_43
    const/4 v3, 0x2

    if-ne v11, v3, :cond_44

    .line 2993
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".enc.key"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    goto :goto_26

    :cond_44
    move-object/from16 v2, p2

    :goto_26
    move-wide/from16 v4, p18

    move-object v3, v13

    move-object/from16 v4, p5

    move-object/from16 v8, p11

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    const/16 v17, 0x3

    move/from16 v7, p8

    move-object v14, v8

    move-object/from16 v9, v20

    move/from16 v8, p6

    .line 2995
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    if-nez v12, :cond_4f

    if-nez v1, :cond_4f

    .line 2997
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    goto/16 :goto_2a

    .line 3009
    :cond_45
    iput-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3011
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 3013
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3014
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3015
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp.jpg"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 3016
    iput-object v10, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3017
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3018
    new-instance v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {v1, v0, v13}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3019
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v18

    .line 3020
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    goto/16 :goto_2b

    :cond_46
    move/from16 v7, v18

    .line 3022
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-wide/from16 v2, p18

    invoke-direct {v1, v0, v13, v2, v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3023
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3024
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    goto/16 :goto_2b

    :cond_47
    move-wide/from16 v2, p18

    move/from16 v7, v18

    if-eqz p1, :cond_48

    move/from16 v5, v17

    goto :goto_27

    .line 3027
    :cond_48
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v1

    move v5, v1

    .line 3028
    :goto_27
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v1, :cond_4b

    if-nez v11, :cond_4a

    cmp-long v1, v2, v21

    if-lez v1, :cond_49

    .line 3030
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->key:[B

    if-eqz v1, :cond_4a

    :cond_49
    const/4 v6, 0x1

    goto :goto_28

    :cond_4a
    move v6, v11

    .line 3033
    :goto_28
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p16

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_29

    .line 3034
    :cond_4b
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_4c

    .line 3035
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v14, v5, v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_29

    .line 3036
    :cond_4c
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v1, :cond_4d

    .line 3037
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/SecureDocument;I)V

    goto :goto_29

    .line 3038
    :cond_4d
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v1, :cond_4e

    .line 3039
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    invoke-virtual {v1, v2, v5, v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/WebFile;II)V

    .line 3041
    :cond_4e
    :goto_29
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->isForceLoding()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3042
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2998
    :cond_4f
    :goto_2a
    iput-object v10, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 2999
    iput-object v15, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3000
    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v1, v0, v13}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3002
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_50

    .line 3004
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 3006
    :cond_50
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->runningTask:Ljava/lang/Runnable;

    :cond_51
    :goto_2b
    return-void
.end method

.method private synthetic lambda$fileDidFailedLoad$11(Ljava/lang/String;)V
    .locals 1

    .line 3501
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3503
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fileDidLoaded$10(Ljava/lang/String;ILjava/io/File;)V
    .locals 9

    .line 3447
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v0, :cond_0

    .line 3448
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3449
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 3450
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p2, :cond_1

    return-void

    .line 3456
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 3458
    :goto_0
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3459
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 3460
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 3461
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3462
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/telegram/messenger/ImageReceiver;

    .line 3463
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverGuidsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3464
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez v2, :cond_2

    .line 3466
    new-instance v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 3467
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    .line 3468
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 3469
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    .line 3470
    iput-object p3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3471
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3472
    iput-object v5, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3473
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3474
    iput v7, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3475
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3476
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    .line 3477
    new-instance v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3478
    iput-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3479
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3480
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    iget-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v3, v2

    .line 3483
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3485
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 3486
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3487
    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$4400(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    .line 3488
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3490
    :cond_4
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$4400(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {p3, p2, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private synthetic lambda$httpFileLoadError$8(Ljava/lang/String;)V
    .locals 5

    .line 3417
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3421
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz v0, :cond_1

    .line 3423
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$4600(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v2

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$4700(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)J

    move-result-wide v3

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3424
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3426
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method private static synthetic lambda$moveDirectory$2(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 2

    .line 2200
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/nio/file/LinkOption;

    .line 2201
    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2202
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLoader;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 2205
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array p0, p0, [Ljava/nio/file/CopyOption;

    invoke-static {p1, v0, p0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2207
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$preloadArtwork$7(Ljava/lang/String;)V
    .locals 8

    const-string v0, "jpg"

    .line 3055
    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3057
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3058
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 3061
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3062
    new-instance v5, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    const/4 v7, 0x1

    .line 3063
    iput v7, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3064
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3065
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3066
    iput-object v4, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3067
    iput-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3068
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3069
    iget p1, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz p1, :cond_1

    .line 3070
    iput p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3072
    :cond_1
    iput-object v1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3073
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    iget-object p1, v4, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3075
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3076
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_temp.jpg"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 3077
    iput-object v2, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3078
    new-instance p1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {p1, p0, v5}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3079
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3080
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$replaceImageInCache$4(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 2683
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$12(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 1

    .line 3587
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3588
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3580
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    if-ne p2, v0, :cond_2

    .line 3584
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3800(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3585
    new-instance p2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v8

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3586
    new-instance v3, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    .line 3590
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x3e8

    .line 3591
    invoke-static {v3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 3593
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_4

    .line 3597
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    new-instance p2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3599
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4000(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3600
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$3900(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3603
    :cond_4
    :goto_1
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    if-ge p1, v2, :cond_5

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3604
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 3605
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v4, v3, v0

    aput-object v4, v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3606
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 3647
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3648
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 3651
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3653
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3654
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3655
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3657
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3659
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 3665
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 3669
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3670
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3671
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3672
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 3674
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2

    :cond_4
    :goto_1
    move-object v3, v2

    .line 3678
    :goto_2
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    .line 3679
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v4, p2

    div-float/2addr v5, p3

    if-eqz p4, :cond_5

    .line 3680
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_3

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_3
    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p4, p2, p3

    if-gez p4, :cond_6

    move p2, p3

    :cond_6
    const/4 p4, 0x0

    .line 3684
    iput-boolean p4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v4, p2

    .line 3685
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3686
    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    move v4, v1

    :goto_4
    mul-int/lit8 v5, v4, 0x2

    .line 3688
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v5, v6, :cond_7

    move v4, v5

    goto :goto_4

    .line 3691
    :cond_7
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3693
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, p4

    :goto_5
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const-string v4, "Orientation"

    if-eqz p0, :cond_a

    .line 3699
    :try_start_2
    new-instance p4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p4, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3700
    invoke-virtual {p4, v4, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_c

    .line 3702
    :try_start_3
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3703
    :try_start_4
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 3704
    invoke-virtual {v6, v4, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_c

    .line 3705
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :catchall_2
    move-exception v1

    if-eqz v5, :cond_b

    .line 3702
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v4

    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_c
    :goto_7
    const/4 v1, 0x3

    if-eq p4, v1, :cond_f

    const/4 v1, 0x6

    if-eq p4, v1, :cond_e

    const/16 v1, 0x8

    if-eq p4, v1, :cond_d

    :catchall_5
    move-object p4, v2

    goto :goto_8

    .line 3719
    :cond_d
    :try_start_8
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/high16 v1, 0x43870000    # 270.0f

    .line 3720
    :try_start_9
    invoke-virtual {p4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_8

    .line 3711
    :cond_e
    :try_start_a
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/high16 v1, 0x42b40000    # 90.0f

    .line 3712
    :try_start_b
    invoke-virtual {p4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    .line 3715
    :cond_f
    :try_start_c
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/high16 v1, 0x43340000    # 180.0f

    .line 3716
    :try_start_d
    invoke-virtual {p4, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 3727
    :catchall_6
    :goto_8
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    cmpl-float v1, p2, p3

    if-lez v1, :cond_11

    if-nez p4, :cond_10

    .line 3730
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    :cond_10
    div-float/2addr p3, p2

    .line 3732
    invoke-virtual {p4, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_11
    if-eqz p0, :cond_14

    .line 3738
    :try_start_e
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 3740
    iget-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p1, :cond_12

    .line 3741
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    :cond_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3743
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v2

    move-object v9, p4

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v2, :cond_17

    .line 3745
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v2, p1

    goto/16 :goto_e

    :catchall_7
    move-exception p1

    .line 3750
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3751
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    if-nez v2, :cond_13

    .line 3754
    :try_start_f
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 3755
    iget-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p0, :cond_13

    .line 3756
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_9

    :catchall_8
    move-exception p0

    goto :goto_a

    :cond_13
    :goto_9
    if-eqz v2, :cond_17

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3760
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v2

    move-object v9, p4

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v2, :cond_17

    .line 3762
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object v2, p0

    goto :goto_e

    .line 3767
    :goto_a
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_14
    if-eqz p1, :cond_17

    .line 3772
    :try_start_10
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz p0, :cond_16

    .line 3774
    :try_start_11
    iget-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p1, :cond_15

    .line 3775
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3777
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p0

    move-object v9, p4

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_16

    .line 3779
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object v2, p1

    goto :goto_b

    :catchall_9
    move-exception p1

    move-object v2, p0

    goto :goto_c

    :cond_16
    move-object v2, p0

    .line 3787
    :goto_b
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception p0

    .line 3789
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_b
    move-exception p1

    .line 3784
    :goto_c
    :try_start_13
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 3787
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_e

    :catchall_c
    move-exception p0

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    goto :goto_d

    :catchall_d
    move-exception p1

    .line 3789
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3791
    :goto_d
    throw p0

    :cond_17
    :goto_e
    return-object v2
.end method

.method private static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 2195
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2198
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lj$/wrappers/$r8$wrapper$java$util$stream$Stream$-V-WRP;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;-><init>(Ljava/io/File;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2211
    :try_start_2
    invoke-interface {p0}, Lj$/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 2198
    :try_start_3
    invoke-interface {p0}, Lj$/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2212
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private performReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2497
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 2498
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 2500
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 2501
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2503
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 2505
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2507
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2508
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2509
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2510
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 2515
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 2516
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2517
    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2518
    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    goto :goto_0

    .line 2520
    :cond_3
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2523
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2525
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    .line 2574
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2576
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v1, :cond_1

    .line 2578
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2580
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2581
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1300(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2583
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2584
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method private replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_0

    .line 2662
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 2664
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v6, v0

    .line 2667
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2668
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2669
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2670
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2671
    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v8, v11, v0

    aput-object v7, v11, v5

    aput-object p3, v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2675
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v5

    aput-object p3, v4, v2

    invoke-virtual {v3, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private runArtworkTasks(Z)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3523
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 3525
    :cond_0
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3527
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3528
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, p1

    aput-object v4, v3, v0

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3529
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3531
    :catchall_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 1

    .line 3578
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runHttpTasks(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3510
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 3512
    :cond_0
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3513
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz p1, :cond_0

    .line 3515
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3516
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 15

    .line 3961
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    return-void

    .line 3964
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3966
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v1, :cond_d

    array-length v1, v1

    if-eqz v1, :cond_d

    .line 3968
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v1, :cond_2

    .line 3969
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v2, -0x80000000

    .line 3970
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 3971
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 3973
    :cond_2
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-gt v1, v2, :cond_3

    .line 3974
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;-><init>()V

    .line 3975
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3976
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 3977
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3978
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto/16 :goto_3

    .line 3980
    :cond_3
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 3982
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3983
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".enc"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    :cond_4
    move v2, v3

    .line 3986
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "rws"

    if-eqz v2, :cond_6

    .line 3989
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3990
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3991
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const/16 v2, 0x20

    new-array v9, v2, [B

    const/16 v8, 0x10

    new-array v10, v8, [B

    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_5

    const-wide/16 v13, 0x30

    .line 3994
    rem-long/2addr v6, v13

    cmp-long v6, v6, v11

    if-nez v6, :cond_5

    .line 3995
    invoke-virtual {v5, v9, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 3996
    invoke-virtual {v5, v10, v3, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_1

    .line 3998
    :cond_5
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3999
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4000
    invoke-virtual {v5, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4001
    invoke-virtual {v5, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4003
    :goto_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 4004
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v11, 0x0

    array-length v2, v8

    int-to-long v12, v2

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    .line 4006
    :cond_6
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4007
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4008
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 4010
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4014
    :cond_7
    :goto_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4015
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4016
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4017
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4018
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4019
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4022
    :goto_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_9

    .line 4023
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_d

    .line 4024
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4025
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_8

    .line 4026
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4030
    :cond_9
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_b

    .line 4031
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_d

    .line 4032
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4033
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_a

    .line 4034
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4038
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_d

    .line 4039
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_d

    .line 4040
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4041
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_c

    .line 4042
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    return-void
.end method

.method public static saveMessagesThumbs(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 4085
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4088
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4089
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4090
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 3883
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 3891
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFZIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 3895
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 3899
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;FFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 3887
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 21

    move/from16 v0, p8

    move/from16 v1, p9

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 3906
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v15, v3

    .line 3907
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v14, v3

    const/4 v3, 0x0

    cmpl-float v4, v15, v3

    if-eqz v4, :cond_7

    cmpl-float v3, v14, v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x0

    div-float v4, v15, p4

    div-float v5, v14, p5

    .line 3912
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    int-to-float v0, v0

    cmpg-float v5, v15, v0

    if-ltz v5, :cond_2

    int-to-float v6, v1

    cmpg-float v6, v14, v6

    if-gez v6, :cond_5

    :cond_2
    if-gez v5, :cond_3

    int-to-float v3, v1

    cmpl-float v3, v14, v3

    if-lez v3, :cond_3

    div-float v0, v15, v0

    goto :goto_0

    :cond_3
    cmpl-float v3, v15, v0

    if-lez v3, :cond_4

    int-to-float v3, v1

    cmpg-float v4, v14, v3

    if-gez v4, :cond_4

    div-float v0, v14, v3

    goto :goto_0

    :cond_4
    div-float v0, v15, v0

    int-to-float v1, v1

    div-float v1, v14, v1

    .line 3919
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    const/4 v1, 0x1

    move/from16 v16, v1

    move v1, v0

    goto :goto_1

    :cond_5
    move/from16 v16, v3

    move v1, v4

    :goto_1
    div-float v0, v15, v1

    float-to-int v13, v0

    div-float v0, v14, v1

    float-to-int v12, v0

    if-eqz v12, :cond_7

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v13

    move v8, v12

    move v9, v15

    move v10, v14

    move v11, v1

    move/from16 v17, v12

    move/from16 v12, p6

    move/from16 v18, v13

    move/from16 v13, p7

    move/from16 v19, v14

    move/from16 v14, v16

    move/from16 v20, v15

    move/from16 v15, p10

    .line 3930
    :try_start_0
    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 3932
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3933
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 3934
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v18

    move/from16 v8, v17

    move/from16 v9, v20

    move/from16 v10, v19

    move v11, v1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, v16

    move/from16 v15, p10

    .line 3936
    :try_start_1
    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 3938
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-object v2
.end method

.method private static scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p8, p3

    if-gtz p3, :cond_1

    if-eqz p11, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 3817
    invoke-static {p1, p4, p5, p3}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_1
    const/4 p4, 0x0

    const-wide/32 p5, -0x80000000

    if-eqz p0, :cond_3

    .line 3824
    iget-object p7, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of p8, p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez p8, :cond_2

    goto :goto_2

    .line 3847
    :cond_2
    check-cast p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    goto :goto_3

    .line 3825
    :cond_3
    :goto_2
    new-instance p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p7}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    .line 3826
    iput-wide p5, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 p0, -0x80000000

    .line 3827
    iput p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 3828
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result p0

    iput p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    new-array p0, p4, [B

    .line 3829
    iput-object p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 3831
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 3832
    iput-object p7, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3833
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p8

    iput p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3834
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    iput p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3835
    iget p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v0, 0x64

    if-gt p11, v0, :cond_4

    if-gt p8, v0, :cond_4

    const-string p8, "s"

    .line 3836
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/16 v0, 0x140

    if-gt p11, v0, :cond_5

    if-gt p8, v0, :cond_5

    const-string p8, "m"

    .line 3838
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/16 v0, 0x320

    if-gt p11, v0, :cond_6

    if-gt p8, v0, :cond_6

    const-string/jumbo p8, "x"

    .line 3840
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/16 v0, 0x500

    if-gt p11, v0, :cond_7

    if-gt p8, v0, :cond_7

    const-string/jumbo p8, "y"

    .line 3842
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string/jumbo p8, "w"

    .line 3844
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3850
    :goto_3
    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p11, "_"

    invoke-virtual {p8, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p11, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p8, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p11, ".jpg"

    invoke-virtual {p8, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    const/4 p11, 0x4

    if-eqz p12, :cond_8

    .line 3853
    invoke-static {p11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    goto :goto_4

    .line 3855
    :cond_8
    iget-wide v0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long p5, v0, p5

    if-eqz p5, :cond_9

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    goto :goto_4

    :cond_9
    invoke-static {p11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    .line 3857
    :goto_4
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p4, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3862
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3863
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-nez p10, :cond_a

    .line 3865
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p5

    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p5

    long-to-int p5, p5

    iput p5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3867
    :cond_a
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p10, :cond_b

    .line 3870
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3871
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3872
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 3873
    array-length p2, p2

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3874
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eq p3, p1, :cond_c

    .line 3877
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    return-object p0
.end method

.method public static shouldSendImageAsDocument(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 4

    .line 3612
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3613
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 3615
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3617
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3618
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3621
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3623
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 3629
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 3633
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 3634
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3635
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 3637
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2

    .line 3641
    :cond_3
    :goto_1
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    .line 3642
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    div-float v0, p0, p1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    div-float/2addr p1, p0

    cmpl-float p0, p1, v3

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method private useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "_firstframe"

    .line 3405
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "_lastframe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3408
    iget-object v2, p1, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eq v2, v0, :cond_2

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public addTestWebFile(Ljava/lang/String;Lorg/telegram/messenger/WebFile;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2183
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelForceLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2713
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2717
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadHttpFile(Ljava/lang/String;)V
    .locals 2

    .line 3564
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3566
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3567
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3570
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3572
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3574
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2595
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLoadingOperations()Ljava/util/ArrayList;

    move-result-object v0

    .line 2596
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 2597
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2598
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2600
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 2602
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    .line 2603
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkMediaPaths()V
    .locals 1

    const/4 v0, 0x0

    .line 2164
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkMediaPaths(Ljava/lang/Runnable;)V
    .locals 2

    .line 2168
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 2568
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2569
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2570
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    return-void
.end method

.method public createMediaPaths()Landroid/util/SparseArray;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2218
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2219
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2221
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2223
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2226
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    const/4 v2, 0x4

    .line 2228
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2229
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    .line 2230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2233
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected SD card = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :try_start_1
    const-string v2, "mounted"

    .line 2236
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2237
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2238
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 2239
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    const-string v7, " "

    if-eqz v4, :cond_3

    .line 2241
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_3

    .line 2242
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 2243
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "root dir "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v2, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2250
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2251
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    move v8, v6

    .line 2253
    :goto_3
    array-length v9, v4

    if-ge v8, v9, :cond_5

    .line 2254
    aget-object v9, v4, v8

    if-nez v9, :cond_4

    goto :goto_4

    .line 2257
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dirsDebug "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2263
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external storage = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    const/16 v7, 0x1e

    const-string v8, "Telegram"

    const/4 v9, 0x1

    if-lt v4, v7, :cond_7

    .line 2269
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2270
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader;->getPublicStorageDir()Ljava/io/File;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2271
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2272
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto :goto_5

    :cond_6
    move-object v4, v5

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v4, v5

    .line 2275
    :goto_5
    :try_start_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2277
    :goto_6
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2278
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    move-object v5, v4

    goto :goto_9

    .line 2280
    :cond_7
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v9

    goto :goto_7

    :cond_8
    move v4, v6

    :goto_7
    if-nez v4, :cond_a

    .line 2281
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    :goto_8
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2282
    :cond_b
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2284
    :cond_c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2286
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2288
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_e

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_e

    .line 2289
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getDataDirs()Ljava/util/ArrayList;

    move-result-object v2

    .line 2290
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :goto_a
    if-ge v7, v4, :cond_e

    .line 2291
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    if-eqz v10, :cond_d

    .line 2292
    sget-object v11, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2295
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_b

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2301
    :cond_e
    :goto_b
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    const-string/jumbo v4, "video path = "

    const-string v7, "image path = "

    const-string v8, "Telegram Video"

    const-string v10, "Telegram Images"

    const/4 v11, 0x2

    if-eqz v2, :cond_13

    .line 2303
    :try_start_7
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2305
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2306
    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2307
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_f

    .line 2308
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_c

    :catch_4
    move-exception v2

    .line 2312
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 2316
    :cond_f
    :goto_c
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v12, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2318
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2319
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2320
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_10

    .line 2321
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_d

    :catch_5
    move-exception v2

    .line 2325
    :try_start_a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 2329
    :cond_10
    :goto_d
    :try_start_b
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v13, "Telegram Audio"

    invoke-direct {v2, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2331
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2332
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2333
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2334
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_11

    .line 2335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio path = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_e

    :catch_6
    move-exception v2

    .line 2339
    :try_start_c
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 2343
    :cond_11
    :goto_e
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "Telegram Documents"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2344
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2345
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x3

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2346
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2347
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2348
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_12

    .line 2349
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "documents path = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_f

    :catch_7
    move-exception v2

    .line 2353
    :try_start_e
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 2357
    :cond_12
    :goto_f
    :try_start_f
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "Telegram Files"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2359
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x5

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2360
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2361
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2362
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_13

    .line 2363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "files path = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_10

    :catch_8
    move-exception v2

    .line 2367
    :try_start_10
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_10
    if-eqz v5, :cond_16

    .line 2370
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    if-eqz v2, :cond_16

    .line 2372
    :try_start_11
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2374
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x64

    .line 2375
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2376
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_14

    .line 2377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v2

    .line 2381
    :try_start_12
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 2385
    :cond_14
    :goto_11
    :try_start_13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2386
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2387
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x65

    .line 2388
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2389
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    .line 2394
    :try_start_14
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12

    .line 2398
    :cond_15
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    const-string v1, "this Android can\'t rename files"

    .line 2399
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2402
    :cond_16
    :goto_12
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->checkSaveToGalleryFiles()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_13

    :catch_b
    move-exception v1

    .line 2404
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_13
    return-object v0
.end method

.method public decrementUseCount(Ljava/lang/String;)Z
    .locals 3

    .line 2540
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2544
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2545
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2548
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public getCacheOutQueue()Lorg/telegram/DispatchQueuePriority;
    .locals 1

    .line 4173
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object v0
.end method

.method public getFileProgress(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2472
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 2476
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 p1, 0x0

    .line 2477
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2479
    aget-wide v2, p1, v2

    long-to-float v2, v2

    aget-wide v3, p1, v0

    long-to-float p1, v3

    div-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFileProgressSizes(Ljava/lang/String;)[J
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2486
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method public getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1706
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    if-nez v0, :cond_1

    .line 1711
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    if-nez v0, :cond_2

    .line 1714
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2636
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2638
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v1, "_"

    if-eqz p2, :cond_2

    .line 2639
    check-cast p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2640
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2641
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p2, :cond_3

    .line 2642
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2644
    :cond_3
    instance-of p2, p1, Lorg/telegram/messenger/SecureDocument;

    if-eqz p2, :cond_4

    .line 2645
    check-cast p1, Lorg/telegram/messenger/SecureDocument;

    .line 2646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2647
    :cond_4
    instance-of p2, p1, Lorg/telegram/messenger/WebFile;

    if-eqz p2, :cond_5

    .line 2648
    check-cast p1, Lorg/telegram/messenger/WebFile;

    .line 2649
    iget-object p1, p1, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 2653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2655
    :cond_6
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public getLottieMemCahce()Lorg/telegram/messenger/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/telegram/messenger/LruCache<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object v0
.end method

.method public getReplacedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2493
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasLottieMemCache(Ljava/lang/String;)Z
    .locals 1

    .line 3412
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public incrementUseCount(Ljava/lang/String;)V
    .locals 3

    .line 2531
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2533
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2535
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public isInMemCache(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2561
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2563
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public isLoadingHttpFile(Ljava/lang/String;)Z
    .locals 1

    .line 3537
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3553
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3554
    new-instance v4, Ljava/io/File;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3557
    new-instance p2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3558
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3559
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3560
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 37

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    if-nez v14, :cond_0

    return-void

    .line 3090
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaKey()Ljava/lang/String;

    move-result-object v6

    .line 3091
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getNewGuid()I

    move-result v15

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_9

    .line 3093
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 3095
    invoke-direct {v13, v0, v6}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3096
    invoke-direct {v13, v6}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 3098
    :cond_2
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 3100
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    .line 3103
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 3105
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_1

    .line 3109
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3111
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_0

    .line 3116
    :goto_1
    instance-of v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_5

    .line 3117
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v0

    goto :goto_2

    .line 3118
    :cond_5
    instance-of v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_6

    .line 3119
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v8

    :goto_2
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 3122
    invoke-virtual {v13, v14, v8}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v2, v6

    move v5, v15

    .line 3123
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3125
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    move/from16 v16, v7

    move v0, v8

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v2, v6

    move v5, v15

    .line 3130
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move v0, v7

    move/from16 v16, v8

    goto :goto_3

    :cond_9
    move v0, v7

    move/from16 v16, v0

    .line 3133
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_10

    if-eqz v2, :cond_10

    .line 3135
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 3137
    invoke-direct {v13, v1, v2}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3138
    invoke-direct {v13, v2}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_d

    .line 3141
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 3143
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_b
    if-nez v1, :cond_c

    .line 3146
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 3148
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_c
    if-nez v1, :cond_d

    .line 3152
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 3154
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_d
    if-eqz v1, :cond_10

    .line 3159
    invoke-virtual {v13, v14, v8}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v5, v15

    .line 3160
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3162
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v6, :cond_e

    if-eqz v16, :cond_f

    :cond_e
    return-void

    :cond_f
    move/from16 v17, v8

    goto :goto_5

    :cond_10
    move/from16 v17, v0

    .line 3168
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 3170
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 3172
    invoke-direct {v13, v0, v2}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3173
    invoke-direct {v13, v2}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_11
    :goto_6
    move-object v1, v0

    goto :goto_7

    .line 3175
    :cond_12
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 3177
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_13
    if-nez v0, :cond_14

    .line 3180
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 3182
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_14
    if-nez v0, :cond_11

    .line 3186
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 3188
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_16

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v5, v15

    .line 3193
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3194
    invoke-virtual {v13, v14, v7}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    if-eqz v17, :cond_15

    .line 3195
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    move v0, v8

    goto :goto_8

    :cond_16
    move v0, v7

    .line 3203
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v1

    .line 3204
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 3205
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 3206
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbFilter()Ljava/lang/String;

    move-result-object v6

    .line 3207
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    .line 3208
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaFilter()Ljava/lang/String;

    move-result-object v12

    .line 3209
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3210
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageFilter()Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_18

    .line 3212
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 3213
    instance-of v10, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_17

    .line 3214
    move-object v2, v1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3215
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_9
    move v10, v8

    goto :goto_a

    :cond_17
    if-eqz v2, :cond_18

    .line 3218
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_9

    :cond_18
    move-object v2, v4

    move v10, v7

    :goto_a
    const-string v18, "mp4"

    const/4 v9, 0x2

    if-eqz v2, :cond_19

    .line 3231
    iget v8, v2, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v8, v9, :cond_19

    move-object/from16 v8, v18

    goto :goto_b

    :cond_19
    const/4 v8, 0x0

    :goto_b
    if-eqz v3, :cond_1a

    .line 3237
    iget v7, v3, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v7, v9, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v18, 0x0

    .line 3242
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v7

    const-string v9, "jpg"

    if-nez v7, :cond_1b

    move-object v7, v9

    :cond_1b
    if-nez v8, :cond_1c

    move-object/from16 v23, v7

    goto :goto_d

    :cond_1c
    move-object/from16 v23, v8

    :goto_d
    if-nez v18, :cond_1d

    move-object/from16 v18, v7

    :cond_1d
    move-object v8, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    :goto_e
    const-string v13, "."

    const/4 v14, 0x2

    if-ge v2, v14, :cond_34

    if-nez v2, :cond_1e

    move-object v14, v8

    move/from16 v29, v15

    move-object/from16 v15, v23

    goto :goto_f

    :cond_1e
    move/from16 v29, v15

    move-object/from16 v15, v18

    move-object/from16 v14, v26

    :goto_f
    if-nez v14, :cond_1f

    move/from16 v30, v0

    move-object/from16 v31, v8

    goto :goto_11

    :cond_1f
    move/from16 v30, v0

    if-eqz v26, :cond_20

    move-object/from16 v31, v8

    move-object/from16 v0, v26

    goto :goto_10

    :cond_20
    move-object v0, v8

    move-object/from16 v31, v0

    :goto_10
    const/4 v8, 0x0

    .line 3266
    invoke-virtual {v14, v1, v0, v8}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    :goto_11
    move-object/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    :cond_21
    move-object/from16 v8, v31

    goto/16 :goto_1a

    :cond_22
    move-object/from16 v32, v6

    if-eqz v26, :cond_23

    move-object/from16 v8, v26

    goto :goto_12

    :cond_23
    move-object/from16 v8, v31

    :goto_12
    const/4 v6, 0x1

    .line 3270
    invoke-virtual {v14, v1, v8, v6}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v8

    .line 3271
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v6, :cond_24

    .line 3272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    goto/16 :goto_18

    .line 3273
    :cond_24
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v33, v11

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v11, :cond_30

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v6, :cond_25

    goto/16 :goto_17

    .line 3275
    :cond_25
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v6, :cond_27

    .line 3276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3277
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_26

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v11, :cond_26

    move-object/from16 v34, v12

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v35, -0x80000000

    cmp-long v11, v11, v35

    if-nez v11, :cond_31

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v6, :cond_31

    goto :goto_13

    :cond_26
    move-object/from16 v34, v12

    :goto_13
    const/16 v28, 0x1

    goto/16 :goto_18

    :cond_27
    move-object/from16 v34, v12

    .line 3280
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v6, :cond_28

    .line 3281
    iget-object v6, v6, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3282
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v8, v8, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v8, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18

    .line 3283
    :cond_28
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v6, :cond_29

    .line 3284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18

    .line 3285
    :cond_29
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_31

    if-nez v2, :cond_2a

    if-eqz v10, :cond_2a

    .line 3287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "q_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3289
    :cond_2a
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x2e

    .line 3291
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v12, -0x1

    const-string v13, ""

    if-ne v11, v12, :cond_2b

    move-object v6, v13

    goto :goto_14

    .line 3294
    :cond_2b
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3296
    :goto_14
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_2d

    .line 3297
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v11, "video/mp4"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v13, ".mp4"

    goto :goto_15

    .line 3299
    :cond_2c
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v11, "video/x-matroska"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v13, ".mkv"

    goto :goto_15

    :cond_2d
    move-object v13, v6

    .line 3305
    :cond_2e
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3306
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_16

    :cond_2f
    const/4 v6, 0x0

    :goto_16
    move/from16 v28, v6

    goto :goto_18

    :cond_30
    :goto_17
    move-object/from16 v34, v12

    .line 3274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_31
    :goto_18
    if-nez v2, :cond_32

    move-object v4, v0

    move-object/from16 v24, v8

    goto :goto_19

    :cond_32
    move-object v3, v0

    move-object/from16 v25, v8

    :goto_19
    if-ne v14, v5, :cond_21

    if-nez v2, :cond_33

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v24, 0x0

    goto :goto_1a

    :cond_33
    move-object/from16 v8, v31

    const/4 v3, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, p1

    move/from16 v15, v29

    move/from16 v0, v30

    move-object/from16 v6, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    goto/16 :goto_e

    :cond_34
    move/from16 v30, v0

    move-object/from16 v32, v6

    move-object/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v29, v15

    if-eqz v5, :cond_3b

    .line 3329
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getStrippedLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-nez v0, :cond_36

    if-eqz v26, :cond_35

    move-object/from16 v27, v26

    :cond_35
    move-object/from16 v0, v27

    :cond_36
    const/4 v2, 0x0

    .line 3333
    invoke-virtual {v5, v1, v0, v2}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    .line 3334
    invoke-virtual {v5, v1, v0, v6}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    .line 3335
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v5, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {v0, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_37
    :goto_1b
    move-object/from16 v19, v0

    move-object v9, v2

    goto :goto_1d

    .line 3337
    :cond_38
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v8, :cond_3a

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v1, :cond_39

    goto :goto_1c

    .line 3339
    :cond_39
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v1, :cond_37

    .line 3340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 3338
    :cond_3a
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_3b
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/16 v19, 0x0

    :goto_1d
    const-string v0, "@"

    if-eqz v3, :cond_3c

    if-eqz v34, :cond_3c

    .line 3345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v34

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_3c
    move-object/from16 v12, v34

    :goto_1e
    if-eqz v4, :cond_3d

    if-eqz v33, :cond_3d

    .line 3348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v33

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    :cond_3d
    move-object/from16 v11, v33

    :goto_1f
    if-eqz v9, :cond_3e

    if-eqz v32, :cond_3e

    .line 3351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v32

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_20

    :cond_3e
    move-object/from16 v8, v32

    move-object v2, v9

    .line 3354
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    if-eqz v4, :cond_3f

    .line 3355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_21

    :cond_3f
    move-object v13, v4

    .line 3358
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    if-eqz v3, :cond_40

    .line 3359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_22

    :cond_40
    move-object v14, v3

    :goto_22
    if-eqz v31, :cond_43

    move-object/from16 v9, v31

    .line 3363
    iget-object v0, v9, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_42

    const-wide/16 v14, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x1

    if-eqz v30, :cond_41

    const/16 v22, 0x2

    goto :goto_23

    :cond_41
    move/from16 v22, v6

    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v19

    move-object v4, v7

    move-object v6, v8

    move-object/from16 v20, v9

    move-wide v7, v14

    move v9, v10

    move v10, v12

    move-object v15, v11

    move/from16 v11, v22

    move/from16 v12, v29

    .line 3364
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3365
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v23

    move-object/from16 v5, v20

    move-object v6, v15

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto/16 :goto_2b

    :cond_42
    move-object/from16 v20, v9

    move-object v15, v11

    goto :goto_24

    :cond_43
    move-object v15, v11

    move-object/from16 v20, v31

    :goto_24
    if-eqz v26, :cond_48

    .line 3367
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    const/16 v21, 0x1

    if-nez v0, :cond_44

    if-eqz v28, :cond_44

    move/from16 v22, v6

    goto :goto_25

    :cond_44
    move/from16 v22, v0

    :goto_25
    if-nez v22, :cond_45

    move v9, v6

    goto :goto_26

    :cond_45
    move/from16 v9, v22

    :goto_26
    if-nez v30, :cond_46

    const-wide/16 v10, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v19

    move-object v4, v7

    move-object v6, v8

    move-wide v7, v10

    move/from16 v10, v27

    move/from16 v11, v28

    move-object/from16 v19, v12

    move/from16 v12, v29

    .line 3374
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto :goto_27

    :cond_46
    move-object/from16 v19, v12

    :goto_27
    if-nez v17, :cond_47

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v23

    move-object/from16 v5, v20

    move-object v6, v15

    move/from16 v9, v21

    move/from16 v12, v29

    .line 3377
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_47
    if-nez v16, :cond_4c

    .line 3380
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, v25

    move-object/from16 v4, v18

    move-object/from16 v5, v26

    move-object/from16 v6, v19

    move/from16 v9, v22

    move/from16 v12, v29

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto :goto_2b

    .line 3383
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    if-nez v0, :cond_49

    if-eqz v28, :cond_49

    move v14, v6

    goto :goto_28

    :cond_49
    move v14, v0

    :goto_28
    if-nez v14, :cond_4a

    move v9, v6

    goto :goto_29

    :cond_4a
    move v9, v14

    :goto_29
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v30, :cond_4b

    const/16 v22, 0x2

    goto :goto_2a

    :cond_4b
    move/from16 v22, v6

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v19

    move-object v4, v7

    move-object v6, v8

    move-wide v7, v10

    move v10, v12

    move/from16 v11, v22

    move/from16 v12, v29

    .line 3388
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3389
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v23

    move-object/from16 v5, v20

    move-object v6, v15

    move v9, v14

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_4c
    :goto_2b
    return-void
.end method

.method public moveToFront(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onFragmentStackChanged()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4167
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4168
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput v0, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preloadArtwork(Ljava/lang/String;)V
    .locals 2

    .line 3054
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2691
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2693
    :cond_0
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public putThumbsToCache(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageLoader$MessageThumb;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$MessageThumb;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$MessageThumb;->key:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeImage(Ljava/lang/String;)V
    .locals 1

    .line 2554
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2556
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public removeTestWebFile(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2190
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 2683
    new-instance p4, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2685
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    :goto_0
    return-void
.end method
