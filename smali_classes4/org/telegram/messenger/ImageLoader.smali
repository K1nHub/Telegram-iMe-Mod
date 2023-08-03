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

.field private imageLoadingByUrlPframe:Ljava/util/HashMap;
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
.method public static synthetic $r8$lambda$-g6JmJO9Z8dHi4o4vG67VDaBS50(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$replaceImageInCache$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8EycKsD-S8qWnx6FbEWFVuRqd68(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidFailedLoad$12(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GwWELPH-La6ZkyygNXU-pxgKTA8(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$artworkLoadError$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWhSmsjBYsTOtMgtpYAHBc0Ft5Q(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$httpFileLoadError$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MzoBoc7OQlya24AUNYsGylNr_Kc(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->lambda$fileDidLoaded$11(Ljava/lang/String;ILjava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-PCnMqsggzlCv1iESJHI5ry67w(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelLoadingForImageReceiver$4(ZLorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QhErFUDF85fH8vrtN68QWF0lbgg(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$changeFileLoadingPriorityForImageReceiver$3(Lorg/telegram/messenger/ImageReceiver;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFq6pJ4Ccahn-8nP-s12diWK834(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$preloadArtwork$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNZb0XUPjA7PexnBdEEmRJ3qYK4(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$14(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmsWZ_Jo8epLbXaf2pg8errYNdU(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Lorg/telegram/messenger/ImageLoader;->lambda$createLoadOperationForImageReceiver$7(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEVvKzjp4xwLa5NzaLJcbKj1e9I(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iwTX6Mc9CyIQsv-fFy0c7KA9AeE(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kt7Z0e5XUuYAeRjX0Hqj7X9UdbI(Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$checkMediaPaths$0(Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvS1PGh6JAGAk9sstmlzPfbuLmY(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$moveDirectory$2(Ljava/io/File;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uL7NOk5xgNDRUWH3PEvhy2-l4tQ(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->lambda$cancelForceLoadingForImageReceiver$6(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 129
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 130
    sput-object v1, Lorg/telegram/messenger/ImageLoader;->header:[B

    new-array v0, v0, [B

    .line 131
    sput-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    const/4 v0, 0x0

    .line 2046
    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 2061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    .line 120
    new-instance v0, Lorg/telegram/DispatchQueuePriority;

    const-string v1, "cacheOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/DispatchQueuePriority;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    .line 121
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cacheThumbOutQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 122
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "thumbGeneratingQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 123
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "imageLoadQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    .line 125
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 133
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 136
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    .line 138
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    .line 141
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    .line 146
    iput v0, p0, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    .line 148
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2062
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 2064
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

    .line 2066
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto :goto_1

    :cond_1
    const/16 v2, 0xf

    .line 2071
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

    .line 2076
    new-instance v4, Lorg/telegram/messenger/ImageLoader$1;

    invoke-direct {v4, p0, v3}, Lorg/telegram/messenger/ImageLoader$1;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 2098
    new-instance v3, Lorg/telegram/messenger/ImageLoader$2;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$2;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 2120
    new-instance v2, Lorg/telegram/messenger/ImageLoader$3;

    const/4 v3, 0x4

    div-int/2addr v1, v3

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/ImageLoader$3;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    .line 2127
    new-instance v1, Lorg/telegram/messenger/ImageLoader$4;

    const/high16 v2, 0xa00000

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/ImageLoader$4;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    .line 2159
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2160
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 2161
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2163
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 2165
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2168
    :cond_2
    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2169
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 2173
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ImageLoader$5;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/ImageLoader$5;-><init>(Lorg/telegram/messenger/ImageLoader;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->setDelegate(Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2301
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    .line 2303
    new-instance v0, Lorg/telegram/messenger/ImageLoader$6;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$6;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    .line 2318
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 2319
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    .line 2320
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 2321
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 2322
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_NOFS"

    .line 2323
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    .line 2324
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    .line 2325
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 2326
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 2327
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 2328
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2330
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    :catchall_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1700()[B
    .locals 1

    .line 104
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->headerThumb:[B

    return-object v0
.end method

.method static synthetic access$1800()[B
    .locals 1

    .line 104
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->header:[B

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/ImageLoader;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lorg/telegram/messenger/ImageLoader;->canForce8888:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 104
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/ImageLoader;)J
    .locals 2

    .line 104
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide v0
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/ImageLoader;J)J
    .locals 0

    .line 104
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J

    return-wide p1
.end method

.method static synthetic access$2300()Ljava/lang/ThreadLocal;
    .locals 1

    .line 104
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->bytesThumbLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/ImageLoader;)Landroid/util/SparseArray;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->artworkLoadError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/DispatchQueuePriority;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->fileDidFailedLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/ImageLoader;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->httpFileLoadError(Ljava/lang/String;)V

    return-void
.end method

.method private artworkLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3674
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

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

    .line 2622
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2623
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

    if-eq p3, v4, :cond_4

    const/4 v4, 0x6

    if-ne p3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 2628
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2629
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 2631
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2632
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p1, v3

    move-object p3, p1

    goto :goto_1

    .line 2625
    :cond_4
    :goto_0
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2626
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 2635
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 2636
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rws"

    invoke-direct {v1, p3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2637
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 2638
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2640
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    .line 2641
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 2642
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

    .line 2647
    :goto_2
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    .line 2651
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 2654
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return p1

    :goto_4
    if-eqz v3, :cond_6

    .line 2651
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 2654
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2656
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

    .line 2942
    :cond_0
    invoke-virtual {v14, v9}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2944
    iget v0, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    invoke-virtual {v14, v0, v9}, Lorg/telegram/messenger/ImageReceiver;->setTag(II)V

    .line 2945
    iget v3, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    add-int/2addr v3, v2

    iput v3, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 2947
    iput v1, v15, Lorg/telegram/messenger/ImageLoader;->lastImageNum:I

    :cond_1
    move v5, v0

    .line 2952
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v16

    .line 2953
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v12

    .line 2954
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v17

    .line 2955
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isShouldGenerateQualityThumb()Z

    move-result v18

    .line 2956
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAccount()I

    move-result v13

    if-nez v9, :cond_2

    .line 2957
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v0

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_0

    :cond_2
    move v11, v1

    .line 2959
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

    .line 3271
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

    .line 3272
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    move-object v0, v15

    return-void
.end method

.method public static createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 167
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 169
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v2, "b"

    invoke-static {p0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decompressGzip(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    .line 840
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

    .line 842
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 843
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
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

    .line 840
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

    .line 3745
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    .line 3689
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 4040
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4043
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4045
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4046
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_1

    .line 4048
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 p0, 0x0

    .line 4049
    array-length v2, v0

    invoke-virtual {v1, v0, p0, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4052
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3624
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3625
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 3626
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3627
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 3629
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getMediaKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3630
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getMediaDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 5

    .line 4294
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4295
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 4296
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4297
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_0

    :goto_1
    move-object v3, v1

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4302
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_3

    .line 4303
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_6

    .line 4304
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_6

    .line 4305
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4306
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4312
    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_5

    .line 4313
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_6

    .line 4314
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 4315
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4316
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4322
    :cond_5
    instance-of p0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz p0, :cond_6

    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v0, :cond_6

    .line 4323
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    :cond_6
    :goto_4
    return-object v3
.end method

.method public static generateMessageThumb(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/messenger/ImageLoader$MessageThumb;
    .locals 17

    move-object/from16 v0, p0

    .line 4339
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 4341
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v7, :cond_1

    array-length v7, v7

    if-eqz v7, :cond_1

    .line 4342
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 4344
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4345
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4346
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4347
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4348
    iget v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4349
    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4351
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    .line 4352
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4353
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4354
    invoke-static {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    .line 4355
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

    .line 4356
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4357
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

    .line 4359
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v13

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4360
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

    .line 4362
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    .line 4365
    :cond_0
    new-instance v0, Lorg/telegram/messenger/ImageLoader$MessageThumb;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/ImageLoader$MessageThumb;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0

    .line 4369
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_7

    .line 4370
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_7

    .line 4371
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4372
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v9, :cond_6

    .line 4373
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v10, 0x140

    invoke-static {v9, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 4377
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4378
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto :goto_2

    :cond_2
    move v9, v6

    .line 4380
    :goto_1
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 4381
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v10, :cond_3

    .line 4382
    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .line 4383
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 4384
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move v9, v6

    move v10, v9

    .line 4390
    :goto_2
    invoke-static {v9, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageSize(II)Lorg/telegram/ui/Components/Point;

    move-result-object v9

    .line 4391
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

    .line 4392
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4393
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-static {v8, v4}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    const/4 v12, 0x3

    const/4 v13, 0x1

    .line 4395
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    move-object v11, v8

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 4396
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

    .line 4398
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    .line 4401
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

    .line 2919
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 2920
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGenerateTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    if-nez v0, :cond_2

    .line 2922
    new-instance v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateTask;-><init>(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 2923
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->thumbGeneratingQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 3637
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3638
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 3639
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3640
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getHttpFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3786
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 3790
    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3791
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

    .line 4188
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 4189
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

    .line 4192
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 4194
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 4196
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

    .line 2049
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_1

    .line 2051
    const-class v1, Lorg/telegram/messenger/ImageLoader;

    monitor-enter v1

    .line 2052
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    if-nez v0, :cond_0

    .line 2054
    new-instance v0, Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageLoader;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ImageLoader;->Instance:Lorg/telegram/messenger/ImageLoader;

    .line 2056
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

    .line 2604
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2605
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2606
    :goto_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2607
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2608
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2609
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

    .line 1819
    array-length v0, p0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    sget-object v2, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v2, v2

    add-int/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/Bitmaps;->footer:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1820
    sget-object v2, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_0

    .line 1821
    array-length v3, v2

    if-lt v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 1823
    new-array v2, v0, [B

    .line 1824
    sget-object v3, Lorg/telegram/messenger/ImageLoader;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1826
    :cond_1
    sget-object v3, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1827
    sget-object v3, Lorg/telegram/messenger/Bitmaps;->header:[B

    array-length v3, v3

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1828
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

    .line 1830
    aget-byte v3, p0, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xa6

    const/4 v3, 0x2

    .line 1831
    aget-byte p0, p0, v3

    aput-byte p0, v2, v1

    .line 1833
    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 1835
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

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v1, v0

    .line 157
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 158
    aget-object v2, p0, v1

    const-string v3, "g"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    const-string/jumbo v3, "pframe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private httpFileLoadError(Ljava/lang/String;)V
    .locals 2

    .line 3659
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAnimatedAvatar(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "avatar"

    .line 1797
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

.method private isPFrame(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "pframe"

    .line 1801
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

.method public static isSdCardPath(Ljava/io/File;)Z
    .locals 1

    .line 176
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$artworkLoadError$10(Ljava/lang/String;)V
    .locals 2

    .line 3675
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3679
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    if-eqz v0, :cond_1

    .line 3681
    new-instance v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;->access$4700(Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3682
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3684
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$cancelForceLoadingForImageReceiver$6(Ljava/lang/String;)V
    .locals 1

    .line 2935
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$cancelLoadingForImageReceiver$4(ZLorg/telegram/messenger/ImageReceiver;)V
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

    .line 2834
    :cond_2
    :goto_1
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 2837
    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/ImageLoader;->removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V

    .line 2839
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_4

    .line 2841
    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private synthetic lambda$changeFileLoadingPriorityForImageReceiver$3(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    move v2, v0

    .line 2798
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->getTag(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2800
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v2, :cond_2

    .line 2802
    invoke-virtual {v2, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->changePriority(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static synthetic lambda$checkMediaPaths$0(Landroid/util/SparseArray;Ljava/lang/Runnable;)V
    .locals 0

    .line 2346
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->setMediaDirs(Landroid/util/SparseArray;)V

    if-eqz p1, :cond_0

    .line 2348
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkMediaPaths$1(Ljava/lang/Runnable;)V
    .locals 2

    .line 2344
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Landroid/util/SparseArray;

    move-result-object v0

    .line 2345
    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createLoadOperationForImageReceiver$7(ILjava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/ImageReceiver;ILjava/lang/String;ILorg/telegram/messenger/ImageLocation;ZLjava/lang/Object;ILorg/telegram/tgnet/TLRPC$Document;ZZLjava/lang/String;IJ)V
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

    .line 2962
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2963
    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 2964
    iget-object v12, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByTag:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v12, :cond_3

    if-ne v12, v4, :cond_0

    move/from16 v9, p6

    .line 2967
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

    .line 2971
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

    .line 2975
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

    .line 2980
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

    .line 2984
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
    if-nez v3, :cond_52

    .line 2995
    iget-object v3, v13, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    const-string v8, "athumb"

    const-string v4, "_"

    const/16 v16, 0x4

    if-eqz v3, :cond_b

    const-string v6, "http"

    .line 2997
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "thumb://"

    .line 2999
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v10, ":"

    if-eqz v6, :cond_8

    const/16 v6, 0x8

    .line 3000
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 3002
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

    .line 3004
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x9

    .line 3005
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_7

    .line 3007
    new-instance v10, Ljava/io/File;

    const/4 v15, 0x1

    add-int/2addr v6, v15

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 3010
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

    .line 3023
    instance-of v3, v14, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_c

    .line 3024
    move-object v3, v14

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3025
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    .line 3026
    iget-object v15, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3027
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v12, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v12}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v7

    .line 3028
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

    .line 3032
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v15, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 3033
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

    .line 3049
    new-instance v6, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    const-string/jumbo v12, "q_"

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

    .line 3050
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

    .line 3058
    :goto_a
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 3059
    new-instance v8, Ljava/io/File;

    move-object/from16 v12, p13

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3060
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

    .line 3069
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 3070
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-nez v2, :cond_14

    .line 3072
    new-instance v2, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader$1;)V

    .line 3073
    invoke-static {v2, v15}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1002(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v8, p7

    .line 3074
    invoke-static {v2, v8}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 3075
    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1102(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Z)Z

    .line 3076
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    :cond_14
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3079
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3080
    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1300(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3082
    :cond_15
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v3, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3083
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p15, :cond_16

    .line 3084
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
    if-eq v1, v6, :cond_52

    .line 3092
    invoke-virtual/range {p9 .. p9}, Lorg/telegram/messenger/ImageLocation;->isEncrypted()Z

    move-result v7

    .line 3093
    new-instance v13, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v15, 0x0

    invoke-direct {v13, v0, v15}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 3094
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

    .line 3096
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

    .line 3098
    :cond_1b
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v6, :cond_20

    const-string/jumbo v12, "vthumb"

    .line 3100
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string/jumbo v12, "thumb"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "jpg"

    .line 3101
    invoke-static {v6, v12}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "webm"

    .line 3102
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
    const-string/jumbo v6, "tgs"

    .line 3104
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x1

    .line 3105
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_11

    :cond_1d
    :goto_f
    const/4 v6, 0x2

    .line 3103
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_11

    :cond_1e
    :goto_10
    const/4 v6, 0x2

    .line 3097
    :cond_1f
    iput v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_20
    :goto_11
    const-wide/16 v21, 0x0

    if-nez v10, :cond_42

    .line 3113
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v12, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    move/from16 p4, v3

    const-string v3, "g"

    if-nez v12, :cond_3e

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v6, :cond_21

    goto/16 :goto_22

    .line 3115
    :cond_21
    iget-object v6, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v6, :cond_23

    .line 3116
    iput-object v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 3117
    iget-object v4, v6, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_22

    const/4 v4, 0x1

    goto :goto_12

    :cond_22
    move/from16 v4, v18

    .line 3118
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

    .line 3119
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

    .line 3120
    :cond_24
    new-instance v3, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3121
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v1, 0x1

    goto :goto_13

    :cond_25
    const/4 v4, 0x2

    if-ne v11, v4, :cond_26

    .line 3124
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

    .line 3126
    :goto_13
    iget-object v4, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_2c

    .line 3127
    instance-of v7, v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v7, :cond_28

    .line 3128
    check-cast v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 3129
    iget-object v4, v4, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_27

    const/4 v4, 0x5

    const/4 v12, 0x1

    goto :goto_14

    :cond_27
    move/from16 v12, p4

    const/4 v4, 0x5

    .line 3132
    :goto_14
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_17

    .line 3133
    :cond_28
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    .line 3134
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

    .line 3136
    iget-object v7, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3137
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_16

    .line 3138
    :cond_2a
    iget-object v4, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x3

    .line 3139
    iput v4, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_16

    :cond_2b
    const/4 v4, 0x3

    .line 3141
    iget-object v5, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v5

    .line 3142
    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3143
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

    .line 3147
    :cond_2e
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v3, ".temp"

    if-eqz v1, :cond_39

    .line 3149
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v4, :cond_2f

    .line 3150
    new-instance v4, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v4, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18

    .line 3151
    :cond_2f
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3152
    new-instance v4, Ljava/io/File;

    const/4 v7, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v4, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18

    .line 3154
    :cond_30
    new-instance v4, Ljava/io/File;

    const/4 v7, 0x3

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v4, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3156
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

    .line 3157
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

    .line 3159
    :goto_1a
    instance-of v3, v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    if-eqz v3, :cond_34

    .line 3160
    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    .line 3161
    iget-object v3, v3, Lorg/telegram/messenger/DocumentObject$ThemeDocument;->wallpaper:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_33

    const/4 v3, 0x5

    const/4 v12, 0x1

    goto :goto_1b

    :cond_33
    move/from16 v12, p4

    const/4 v3, 0x5

    .line 3164
    :goto_1b
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_1c

    .line 3165
    :cond_34
    iget-object v3, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v3, 0x1

    .line 3166
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    move v12, v3

    :goto_1c
    const/4 v8, 0x3

    goto :goto_1e

    :cond_35
    const/4 v3, 0x1

    .line 3168
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3169
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v8, 0x3

    goto :goto_1d

    .line 3170
    :cond_36
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v8, 0x3

    .line 3171
    iput v8, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    goto :goto_1d

    :cond_37
    const/4 v8, 0x3

    .line 3173
    iget-object v3, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    .line 3174
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3175
    iput v8, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_38
    :goto_1d
    move/from16 v12, p4

    .line 3178
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

    .line 3179
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v1, :cond_3a

    .line 3180
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

    .line 3183
    new-instance v4, Ljava/io/File;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_20

    .line 3185
    :cond_3b
    new-instance v4, Ljava/io/File;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_20
    move-object/from16 v6, p7

    move-object v10, v4

    .line 3187
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

    .line 3188
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

    .line 3191
    :goto_23
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageLoader;->hasAutoplayFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isAnimatedAvatar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_3f
    const/4 v3, 0x2

    .line 3192
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3193
    iput-wide v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    .line 3194
    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageLoader;->isPFrame(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    .line 3195
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

    .line 3201
    :goto_25
    iput v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    move-object/from16 v9, p3

    .line 3202
    iput-object v9, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3203
    iput-object v6, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3204
    iput-object v15, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v7, p16

    .line 3205
    iput-object v7, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    move/from16 v14, p12

    .line 3206
    iput v14, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    move-object/from16 v5, p11

    .line 3207
    iput-object v5, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3208
    iget v3, v15, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz v3, :cond_43

    .line 3209
    iput v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    :cond_43
    const/4 v3, 0x2

    if-ne v11, v3, :cond_44

    .line 3212
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

    .line 3214
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    if-nez v12, :cond_50

    if-nez v1, :cond_50

    .line 3216
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_45

    goto/16 :goto_2a

    .line 3228
    :cond_45
    iput-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3230
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3231
    iget-boolean v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    if-eqz v1, :cond_46

    .line 3232
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    :cond_46
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 3235
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3236
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3237
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

    .line 3238
    iput-object v10, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3239
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 3240
    new-instance v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {v1, v0, v13}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3241
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v18

    .line 3242
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    goto/16 :goto_2b

    :cond_47
    move/from16 v7, v18

    .line 3244
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-wide/from16 v2, p18

    invoke-direct {v1, v0, v13, v2, v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3245
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3246
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    goto/16 :goto_2b

    :cond_48
    move-wide/from16 v2, p18

    move/from16 v7, v18

    if-eqz p1, :cond_49

    move/from16 v5, v17

    goto :goto_27

    .line 3249
    :cond_49
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v1

    move v5, v1

    .line 3250
    :goto_27
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v1, :cond_4c

    if-nez v11, :cond_4b

    cmp-long v1, v2, v21

    if-lez v1, :cond_4a

    .line 3252
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->key:[B

    if-eqz v1, :cond_4b

    :cond_4a
    const/4 v6, 0x1

    goto :goto_28

    :cond_4b
    move v6, v11

    .line 3255
    :goto_28
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    move-object/from16 v4, p16

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_29

    .line 3256
    :cond_4c
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_4d

    .line 3257
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v14, v5, v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_29

    .line 3258
    :cond_4d
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v1, :cond_4e

    .line 3259
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/SecureDocument;I)V

    goto :goto_29

    .line 3260
    :cond_4e
    iget-object v1, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v1, :cond_4f

    .line 3261
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    invoke-virtual {v1, v2, v5, v11}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/WebFile;II)V

    .line 3263
    :cond_4f
    :goto_29
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/ImageReceiver;->isForceLoding()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3264
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->forceLoadingImages:Ljava/util/HashMap;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 3217
    :cond_50
    :goto_2a
    iput-object v10, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3218
    iput-object v15, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3219
    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v1, v0, v13}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3221
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_51

    .line 3223
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 3225
    :cond_51
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    iget-object v2, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget v3, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->runningTask:Ljava/lang/Runnable;

    :cond_52
    :goto_2b
    return-void
.end method

.method private synthetic lambda$fileDidFailedLoad$12(Ljava/lang/String;)V
    .locals 1

    .line 3746
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3748
    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fileDidLoaded$11(Ljava/lang/String;ILjava/io/File;)V
    .locals 9

    .line 3690
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v0, :cond_0

    .line 3691
    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1000(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3692
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/messenger/ImageLoader;->generateThumb(ILjava/io/File;Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)V

    .line 3693
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3695
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p2, :cond_1

    return-void

    .line 3699
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3700
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrlPframe:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3701
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 3702
    :goto_0
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3703
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 3704
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 3705
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3706
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/telegram/messenger/ImageReceiver;

    .line 3707
    iget-object v2, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverGuidsArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3708
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez v2, :cond_2

    .line 3710
    new-instance v2, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 3711
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    .line 3712
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    .line 3713
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    .line 3714
    iput-object p3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3715
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3716
    iget-boolean v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    iput-boolean v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->isPFrame:Z

    .line 3717
    iput-object v5, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3718
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3719
    iput v7, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3720
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3721
    iget-object v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    .line 3722
    new-instance v3, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3723
    iput-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3724
    iget v3, p2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    iput v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3725
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByKeys:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    iget-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v3, v2

    .line 3728
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3730
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 3731
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 3732
    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$3900(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    .line 3733
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheThumbOutQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3735
    :cond_4
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->access$3900(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    invoke-virtual {p3, p2, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private synthetic lambda$httpFileLoadError$9(Ljava/lang/String;)V
    .locals 5

    .line 3660
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-nez p1, :cond_0

    return-void

    .line 3664
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz v0, :cond_1

    .line 3666
    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$4800(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-result-object v2

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->access$4900(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)J

    move-result-wide v3

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V

    iput-object v1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 3667
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x0

    .line 3669
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runHttpTasks(Z)V

    return-void
.end method

.method private static synthetic lambda$moveDirectory$2(Ljava/io/File;Ljava/nio/file/Path;)V
    .locals 2

    .line 2375
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/nio/file/LinkOption;

    .line 2376
    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2377
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/telegram/messenger/ImageLoader;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 2380
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

    .line 2382
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$preloadArtwork$8(Ljava/lang/String;)V
    .locals 8

    const-string v0, "jpg"

    .line 3277
    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3278
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

    .line 3279
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3280
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 3283
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3284
    new-instance v5, Lorg/telegram/messenger/ImageLoader$CacheImage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    const/4 v7, 0x1

    .line 3285
    iput v7, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    .line 3286
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 3287
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 3288
    iput-object v4, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 3289
    iput-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 3290
    iput-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    .line 3291
    iget p1, v4, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-eqz p1, :cond_1

    .line 3292
    iput p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    .line 3294
    :cond_1
    iput-object v1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 3295
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadingByUrl:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    iget-object p1, v4, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3297
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3298
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

    .line 3299
    iput-object v2, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 3300
    new-instance p1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    invoke-direct {p1, p0, v5}, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object p1, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->artworkTask:Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3301
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 3302
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    return-void
.end method

.method private synthetic lambda$replaceImageInCache$5(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 2901
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$13(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V
    .locals 1

    .line 3836
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3837
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method private synthetic lambda$runHttpFileLoadTasks$14(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3825
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_7

    if-nez p2, :cond_1

    .line 3829
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3830
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    if-ne p2, v0, :cond_4

    .line 3833
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4300(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3834
    new-instance p2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4400(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4500(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4600(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v8

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3835
    new-instance v3, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;)V

    .line 3839
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x3e8

    .line 3840
    invoke-static {v3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 3842
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4600(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    :goto_0
    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-ne p2, v2, :cond_7

    .line 3846
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3847
    new-instance p2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4500(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3848
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4400(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4400(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/io/File;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3849
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4100(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4600(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    :goto_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;->access$4200(Lorg/telegram/messenger/ImageLoader$HttpFileTask;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3852
    :cond_7
    :goto_3
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    if-ge p1, v2, :cond_8

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 3853
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    .line 3854
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v4, v3, v0

    aput-object v4, v3, v2

    invoke-virtual {p1, p2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3855
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpFileLoadTasksCount:I

    goto :goto_3

    :cond_8
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v1, p1

    .line 3896
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 3897
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_2

    if-eqz v1, :cond_2

    .line 3900
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3902
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3903
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 3904
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3906
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 3908
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 3914
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 3918
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 3919
    invoke-static {v0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3920
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3921
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 3923
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v5

    :cond_4
    :goto_2
    move-object v6, v5

    .line 3927
    :goto_3
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 3928
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    div-float v0, v0, p2

    div-float v7, v7, p3

    if-eqz p4, :cond_5

    .line 3929
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_4

    :cond_5
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v0, v7

    if-gez v8, :cond_6

    move v0, v7

    :cond_6
    const/4 v8, 0x0

    .line 3933
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v9, v0

    .line 3934
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x2

    .line 3935
    rem-int/2addr v9, v10

    if-eqz v9, :cond_8

    move v9, v3

    :goto_5
    mul-int/lit8 v11, v9, 0x2

    .line 3937
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v11, v12, :cond_7

    move v9, v11

    goto :goto_5

    .line 3940
    :cond_7
    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3942
    :cond_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v9, v11, :cond_9

    move v8, v3

    :cond_9
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3946
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 3947
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v9, :cond_a

    .line 3950
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3951
    :try_start_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v9, :cond_a

    .line 3956
    :goto_6
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_2
    move-object v9, v5

    :catchall_3
    if-eqz v9, :cond_a

    goto :goto_6

    .line 3960
    :cond_a
    :goto_7
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :catchall_4
    :cond_b
    move-object v9, v5

    goto :goto_b

    .line 3961
    :cond_c
    :goto_8
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 3962
    :try_start_6
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_f

    .line 3963
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    if-ne v11, v3, :cond_d

    move v3, v12

    goto :goto_9

    :cond_d
    move v3, v7

    :goto_9
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_e

    goto :goto_a

    :cond_e
    move v12, v7

    :goto_a
    invoke-virtual {v9, v3, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3964
    :cond_f
    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_10

    .line 3965
    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 3969
    :catchall_5
    :cond_10
    :goto_b
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpl-float v3, v0, v7

    if-lez v3, :cond_12

    if-nez v9, :cond_11

    .line 3972
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v3

    :cond_11
    div-float/2addr v7, v0

    .line 3974
    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_12
    if-eqz v4, :cond_15

    .line 3980
    :try_start_7
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 3982
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_13

    .line 3983
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    :cond_13
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3985
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v5

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v5, :cond_18

    .line 3987
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_c
    move-object v5, v0

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    .line 3992
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3993
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    if-nez v5, :cond_14

    .line 3996
    :try_start_8
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 3997
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_14

    .line 3998
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_e

    :cond_14
    :goto_d
    if-eqz v5, :cond_18

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4002
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v5

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v5, :cond_18

    .line 4004
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_c

    .line 4009
    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_15
    if-eqz v1, :cond_18

    .line 4014
    :try_start_9
    invoke-static {v6, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v1, :cond_17

    .line 4016
    :try_start_a
    iget-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_16

    .line 4017
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    :cond_16
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4019
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v1

    move-object v15, v9

    invoke-static/range {v10 .. v16}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_17

    .line 4021
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object v5, v0

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v5, v1

    goto :goto_10

    :cond_17
    move-object v5, v1

    .line 4029
    :goto_f
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 4031
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12

    :catchall_a
    move-exception v0

    .line 4026
    :goto_10
    :try_start_c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 4029
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object v2, v0

    .line 4031
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4033
    :goto_11
    throw v1

    :cond_18
    :goto_12
    return-object v5
.end method

.method private static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 2370
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

    .line 2373
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

    .line 2374
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda14;-><init>(Ljava/io/File;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2386
    :try_start_2
    invoke-interface {p0}, Lj$/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 2373
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

    .line 2387
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private performReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2689
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    .line 2690
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 2692
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    .line 2693
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2695
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 2697
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2699
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2700
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2701
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2702
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

    .line 2707
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    .line 2708
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2709
    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2710
    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader;->ignoreRemoval:Ljava/lang/String;

    goto :goto_0

    .line 2712
    :cond_3
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2715
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2717
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private removeFromWaitingForThumb(ILorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    .line 2766
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumbByTag:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2768
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    if-eqz v1, :cond_1

    .line 2770
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 2772
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2773
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1300(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2775
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$1200(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2776
    iget-object p2, p0, Lorg/telegram/messenger/ImageLoader;->waitingForQualityThumb:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
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

    .line 2880
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 2882
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LruCache;->getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v6, v0

    .line 2885
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 2886
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2887
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2888
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2889
    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
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

    .line 2893
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->performReplace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
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

    .line 3768
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    .line 3770
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

    .line 3772
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->artworkTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$ArtworkLoadTask;

    .line 3773
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Void;

    const/4 v4, 0x0

    aput-object v4, v3, p1

    aput-object v4, v3, v0

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3774
    iget v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/ImageLoader;->currentArtworkTasksCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3776
    :catchall_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->runArtworkTasks(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V
    .locals 1

    .line 3823
    new-instance v0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runHttpTasks(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3755
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    .line 3757
    :cond_0
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3758
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader;->httpTasks:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz p1, :cond_0

    .line 3760
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

    .line 3761
    iget p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageLoader;->currentHttpTasksCount:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 15

    .line 4203
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    return-void

    .line 4206
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/ImageLoader;->findPhotoCachedSize(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 4208
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v1, :cond_d

    array-length v1, v1

    if-eqz v1, :cond_d

    .line 4210
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v1, :cond_2

    .line 4211
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/32 v2, -0x80000000

    .line 4212
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 4213
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 4215
    :cond_2
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-gt v1, v2, :cond_3

    .line 4216
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;-><init>()V

    .line 4217
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4218
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4219
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4220
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto/16 :goto_3

    .line 4222
    :cond_3
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 4224
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4225
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

    .line 4228
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "rws"

    if-eqz v2, :cond_6

    .line 4231
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

    .line 4232
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4233
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

    .line 4236
    rem-long/2addr v6, v13

    cmp-long v6, v6, v11

    if-nez v6, :cond_5

    .line 4237
    invoke-virtual {v5, v9, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4238
    invoke-virtual {v5, v10, v3, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_1

    .line 4240
    :cond_5
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4241
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4242
    invoke-virtual {v5, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4243
    invoke-virtual {v5, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4245
    :goto_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 4246
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v11, 0x0

    array-length v2, v8

    int-to-long v12, v2

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->aesCtrDecryptionByteArray([B[B[BIJI)V

    .line 4248
    :cond_6
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4249
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 4250
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 4252
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4256
    :cond_7
    :goto_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4257
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4258
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4259
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4260
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4261
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4264
    :goto_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_9

    .line 4265
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_d

    .line 4266
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4267
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_8

    .line 4268
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4272
    :cond_9
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_b

    .line 4273
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_d

    .line 4274
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4275
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_a

    .line 4276
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4280
    :cond_b
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_d

    .line 4281
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v3, v0, :cond_d

    .line 4282
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 4283
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-eqz v2, :cond_c

    .line 4284
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

    .line 4329
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4332
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4333
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 4334
    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4125
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

    .line 4133
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

    .line 4137
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

    .line 4141
    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZFFIZIIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    return-object v0
.end method

.method public static scaleAndSaveImage(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;FFIZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 11

    .line 4129
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

    .line 4148
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v15, v3

    .line 4149
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

    .line 4154
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

    .line 4161
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

    .line 4172
    :try_start_0
    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 4174
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4175
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 4176
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

    .line 4178
    :try_start_1
    invoke-static/range {v3 .. v15}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImageInternal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ZIIFFFIZZZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 4180
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

    .line 4059
    invoke-static {p1, p4, p5, p3}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_1
    const/4 p4, 0x0

    const-wide/32 p5, -0x80000000

    if-eqz p0, :cond_3

    .line 4066
    iget-object p7, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of p8, p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez p8, :cond_2

    goto :goto_2

    .line 4089
    :cond_2
    check-cast p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    goto :goto_3

    .line 4067
    :cond_3
    :goto_2
    new-instance p7, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {p7}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    .line 4068
    iput-wide p5, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 p0, -0x80000000

    .line 4069
    iput p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 4070
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result p0

    iput p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    new-array p0, p4, [B

    .line 4071
    iput-object p0, p7, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 4073
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 4074
    iput-object p7, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4075
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p8

    iput p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 4076
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p8

    iput p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 4077
    iget p11, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v0, 0x64

    if-gt p11, v0, :cond_4

    if-gt p8, v0, :cond_4

    const-string/jumbo p8, "s"

    .line 4078
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/16 v0, 0x140

    if-gt p11, v0, :cond_5

    if-gt p8, v0, :cond_5

    const-string p8, "m"

    .line 4080
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/16 v0, 0x320

    if-gt p11, v0, :cond_6

    if-gt p8, v0, :cond_6

    const-string/jumbo p8, "x"

    .line 4082
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/16 v0, 0x500

    if-gt p11, v0, :cond_7

    if-gt p8, v0, :cond_7

    const-string/jumbo p8, "y"

    .line 4084
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string/jumbo p8, "w"

    .line 4086
    iput-object p8, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 4092
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

    .line 4095
    invoke-static {p11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object p4

    goto :goto_4

    .line 4097
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

    .line 4099
    :goto_4
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p4, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4104
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4105
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-nez p10, :cond_a

    .line 4107
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p5

    invoke-virtual {p5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p5

    long-to-int p5, p5

    iput p5, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4109
    :cond_a
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p10, :cond_b

    .line 4112
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4113
    invoke-virtual {p3, p2, p9, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4114
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 4115
    array-length p2, p2

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4116
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eq p3, p1, :cond_c

    .line 4119
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    return-object p0
.end method

.method public static shouldSendImageAsDocument(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 4

    .line 3861
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3862
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 3864
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3866
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3867
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3870
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3872
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 3878
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 3882
    :try_start_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 3883
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3884
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 3886
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2

    .line 3890
    :cond_3
    :goto_1
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    .line 3891
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

    .line 3648
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

    .line 3651
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

    .line 2358
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

    .line 2931
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2935
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadHttpFile(Ljava/lang/String;)V
    .locals 2

    .line 3809
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3811
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3812
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3813
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3815
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->retryHttpsTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 3817
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3819
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    return-void
.end method

.method public cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2813
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLoadingOperations()Ljava/util/ArrayList;

    move-result-object v0

    .line 2814
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 2815
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2816
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2818
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 2820
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->addLoadingImageRunnable(Ljava/lang/Runnable;)V

    .line 2821
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ImageLoader;ZLorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeFileLoadingPriorityForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2787
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getFileLoadingPriority()I

    move-result v0

    .line 2788
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageReceiver;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkMediaPaths()V
    .locals 1

    const/4 v0, 0x0

    .line 2339
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkMediaPaths(Ljava/lang/Runnable;)V
    .locals 2

    .line 2343
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearMemory()V
    .locals 1

    .line 2760
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2761
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/LruCache;->evictAll()V

    .line 2762
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

    .line 2392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2393
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 2394
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2396
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2398
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2401
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    const/4 v2, 0x4

    .line 2403
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2404
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    .line 2405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache path = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2408
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected SD card = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :try_start_1
    const-string v2, "mounted"

    .line 2411
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2412
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 2413
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_5

    .line 2414
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    const-string v7, " "

    if-eqz v4, :cond_3

    .line 2416
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_3

    .line 2417
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 2418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "root dir "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2419
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

    .line 2425
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2426
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    move v8, v6

    .line 2428
    :goto_3
    array-length v9, v4

    if-ge v8, v9, :cond_5

    .line 2429
    aget-object v9, v4, v8

    if-nez v9, :cond_4

    goto :goto_4

    .line 2432
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

    .line 2438
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external storage = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2441
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    const/16 v7, 0x1e

    const-string v8, "Telegram"

    const/4 v9, 0x1

    if-lt v4, v7, :cond_7

    .line 2444
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_6

    .line 2445
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader;->getPublicStorageDir()Ljava/io/File;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2446
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2447
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

    .line 2450
    :goto_5
    :try_start_6
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2452
    :goto_6
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2453
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    move-object v5, v4

    goto :goto_9

    .line 2455
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
    if-nez v4, :cond_b

    .line 2457
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_8
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2458
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t write to this directory = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " use files dir"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2459
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2462
    :cond_b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2464
    :goto_9
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2466
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_d

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2467
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getDataDirs()Ljava/util/ArrayList;

    move-result-object v2

    .line 2468
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v6

    :goto_a
    if-ge v7, v4, :cond_d

    .line 2469
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    if-eqz v10, :cond_c

    .line 2470
    sget-object v11, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2472
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    .line 2473
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_b

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 2479
    :cond_d
    :goto_b
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    const-string/jumbo v4, "video path = "

    const-string v7, "image path = "

    const-string v8, "Telegram Video"

    const-string v10, "Telegram Images"

    const/4 v11, 0x2

    if-eqz v2, :cond_13

    .line 2481
    :try_start_7
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2482
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2483
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2484
    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2485
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_e

    .line 2486
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

    .line 2490
    :try_start_8
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 2494
    :cond_e
    :goto_c
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    invoke-direct {v2, v12, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2496
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2497
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2498
    sget-boolean v12, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v12, :cond_f

    .line 2499
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

    .line 2503
    :try_start_a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 2507
    :cond_f
    :goto_d
    :try_start_b
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v13, "Telegram Audio"

    invoke-direct {v2, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2509
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2510
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2511
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2512
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_10

    .line 2513
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

    .line 2517
    :try_start_c
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 2521
    :cond_10
    :goto_e
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "Telegram Documents"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2522
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2523
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x3

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2524
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2525
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2526
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_11

    .line 2527
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

    .line 2531
    :try_start_e
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 2535
    :cond_11
    :goto_f
    :try_start_f
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "Telegram Files"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2537
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x5

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2538
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2539
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2540
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_12

    .line 2541
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "files path = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_10

    :catch_8
    move-exception v2

    .line 2545
    :try_start_10
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 2549
    :cond_12
    :goto_10
    :try_start_11
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader;->telegramPath:Ljava/io/File;

    const-string v12, "Telegram Stories"

    invoke-direct {v2, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2551
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x6

    invoke-direct {p0, v1, v2, v9}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2552
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 2553
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2554
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_13

    .line 2555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stories path = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception v2

    .line 2559
    :try_start_12
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_11
    if-eqz v5, :cond_16

    .line 2562
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    if-eqz v2, :cond_16

    .line 2564
    :try_start_13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2566
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v1, v2, v6}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x64

    .line 2567
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2568
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_14

    .line 2569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_12

    :catch_a
    move-exception v2

    .line 2573
    :try_start_14
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 2577
    :cond_14
    :goto_12
    :try_start_15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2579
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {p0, v1, v2, v11}, Lorg/telegram/messenger/ImageLoader;->canMoveFiles(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x65

    .line 2580
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2581
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_13

    :catch_b
    move-exception v1

    .line 2586
    :try_start_16
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 2590
    :cond_15
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    const-string/jumbo v1, "this Android can\'t rename files"

    .line 2591
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2594
    :cond_16
    :goto_13
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->checkSaveToGalleryFiles()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_14

    :catch_c
    move-exception v1

    .line 2596
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_14
    return-object v0
.end method

.method public decrementUseCount(Ljava/lang/String;)Z
    .locals 3

    .line 2732
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2736
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2737
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 2740
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

    .line 4417
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->cacheOutQueue:Lorg/telegram/DispatchQueuePriority;

    return-object v0
.end method

.method public getFileProgress(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2664
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 2668
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 p1, 0x0

    .line 2669
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2671
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

    .line 2678
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->fileProgresses:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method public getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 1805
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    if-nez v0, :cond_1

    .line 1810
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    if-nez v0, :cond_2

    .line 1813
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

    .line 2854
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2856
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v1, "_"

    if-eqz p2, :cond_2

    .line 2857
    check-cast p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2858
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

    .line 2859
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p2, :cond_3

    .line 2860
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2861
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

    .line 2862
    :cond_3
    instance-of p2, p1, Lorg/telegram/messenger/SecureDocument;

    if-eqz p2, :cond_4

    .line 2863
    check-cast p1, Lorg/telegram/messenger/SecureDocument;

    .line 2864
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

    .line 2865
    :cond_4
    instance-of p2, p1, Lorg/telegram/messenger/WebFile;

    if-eqz p2, :cond_5

    .line 2866
    check-cast p1, Lorg/telegram/messenger/WebFile;

    .line 2867
    iget-object p1, p1, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 2871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2873
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

    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    return-object v0
.end method

.method public getReplacedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2685
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->replacedBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasLottieMemCache(Ljava/lang/String;)Z
    .locals 1

    .line 3655
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

    .line 2723
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2725
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2727
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

    .line 2753
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2755
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

    .line 3782
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3798
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3799
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

    .line 3800
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3802
    new-instance p2, Lorg/telegram/messenger/ImageLoader$HttpFileTask;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpFileTask;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;I)V

    .line 3803
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasks:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3804
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->httpFileLoadTasksByKeys:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3805
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader;->runHttpFileLoadTasks(Lorg/telegram/messenger/ImageLoader$HttpFileTask;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    const/4 v0, 0x0

    .line 3307
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/util/List;)V

    return-void
.end method

.method public loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/util/List;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/ImageReceiver;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v6, p2

    if-nez v14, :cond_0

    return-void

    .line 3315
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaKey()Ljava/lang/String;

    move-result-object v7

    .line 3316
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getNewGuid()I

    move-result v15

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_a

    .line 3318
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 3319
    invoke-direct {v13, v7, v6}, Lorg/telegram/messenger/ImageLoader;->findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    .line 3321
    invoke-direct {v13, v0, v7}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3322
    invoke-direct {v13, v7}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 3324
    :cond_2
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 3326
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    .line 3329
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 3331
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_1

    .line 3335
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3337
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_0

    .line 3343
    :cond_5
    :goto_1
    instance-of v0, v1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_6

    .line 3344
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v0

    goto :goto_2

    .line 3345
    :cond_6
    instance-of v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_7

    .line 3346
    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v9

    :goto_2
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 3349
    invoke-virtual {v13, v14, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v2, v7

    move v5, v15

    .line 3350
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3352
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    move/from16 v16, v8

    move v0, v9

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v2, v7

    move v5, v15

    .line 3357
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move v0, v8

    move/from16 v16, v9

    goto :goto_3

    :cond_a
    move v0, v8

    move/from16 v16, v0

    .line 3360
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_12

    if-eqz v2, :cond_12

    .line 3362
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 3363
    invoke-direct {v13, v2, v6}, Lorg/telegram/messenger/ImageLoader;->findInPreloadImageReceivers(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b

    .line 3364
    invoke-direct {v13, v1, v2}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3365
    invoke-direct {v13, v2}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    :cond_b
    if-nez v3, :cond_e

    .line 3368
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 3370
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_c
    if-nez v1, :cond_d

    .line 3373
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 3375
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_d
    if-nez v1, :cond_f

    .line 3379
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 3381
    iget-object v3, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v1, v3

    :cond_f
    :goto_4
    if-eqz v1, :cond_12

    .line 3386
    invoke-virtual {v13, v14, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v5, v15

    .line 3387
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3389
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v7, :cond_10

    if-eqz v16, :cond_11

    :cond_10
    return-void

    :cond_11
    move/from16 v17, v9

    goto :goto_5

    :cond_12
    move/from16 v17, v0

    .line 3395
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 3397
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 3399
    invoke-direct {v13, v0, v2}, Lorg/telegram/messenger/ImageLoader;->useLottieMemCache(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3400
    invoke-direct {v13, v2}, Lorg/telegram/messenger/ImageLoader;->getFromLottieCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_13
    :goto_6
    move-object v1, v0

    goto :goto_7

    .line 3402
    :cond_14
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 3404
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_15
    if-nez v0, :cond_16

    .line 3407
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 3409
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_16
    if-nez v0, :cond_13

    .line 3413
    iget-object v0, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 3415
    iget-object v1, v13, Lorg/telegram/messenger/ImageLoader;->wallpaperMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_18

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v5, v15

    .line 3420
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    .line 3421
    invoke-virtual {v13, v14, v8}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    if-eqz v17, :cond_17

    .line 3422
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isForcePreview()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    move v0, v9

    goto :goto_8

    :cond_18
    move v0, v8

    .line 3430
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getParentObject()Ljava/lang/Object;

    move-result-object v1

    .line 3431
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 3432
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 3433
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getThumbFilter()Ljava/lang/String;

    move-result-object v6

    .line 3434
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    .line 3435
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getMediaFilter()Ljava/lang/String;

    move-result-object v12

    .line 3436
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 3437
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getImageFilter()Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_1a

    .line 3439
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isNeedsQualityThumb()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->isCurrentKeyQuality()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 3440
    instance-of v7, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_19

    .line 3441
    move-object v2, v1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3442
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    :goto_9
    move v7, v9

    goto :goto_a

    :cond_19
    if-eqz v2, :cond_1a

    .line 3445
    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    goto :goto_9

    :cond_1a
    move-object v2, v4

    move v7, v8

    :goto_a
    const-string v10, "mp4"

    const/4 v9, 0x2

    const/16 v19, 0x0

    if-eqz v2, :cond_1b

    .line 3458
    iget v8, v2, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v8, v9, :cond_1b

    move-object v8, v10

    goto :goto_b

    :cond_1b
    move-object/from16 v8, v19

    :goto_b
    move-object/from16 p2, v2

    if-eqz v3, :cond_1c

    .line 3464
    iget v2, v3, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v2, v9, :cond_1c

    goto :goto_c

    :cond_1c
    move-object/from16 v10, v19

    .line 3469
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v2

    const-string v9, "jpg"

    if-nez v2, :cond_1d

    move-object v2, v9

    :cond_1d
    if-nez v8, :cond_1e

    move-object/from16 v22, v2

    goto :goto_d

    :cond_1e
    move-object/from16 v22, v8

    :goto_d
    if-nez v10, :cond_1f

    move-object/from16 v23, v2

    goto :goto_e

    :cond_1f
    move-object/from16 v23, v10

    :goto_e
    move-object/from16 v10, p2

    move-object/from16 v26, v3

    move-object/from16 p2, v4

    move-object/from16 v4, v19

    move-object v8, v4

    move-object/from16 v24, v8

    move-object/from16 v25, v24

    const/4 v3, 0x0

    const/16 v27, 0x0

    :goto_f
    const-string v13, "."

    const/4 v14, 0x2

    if-ge v3, v14, :cond_37

    if-nez v3, :cond_20

    move-object v14, v10

    move/from16 v28, v15

    move-object/from16 v15, v22

    goto :goto_10

    :cond_20
    move/from16 v28, v15

    move-object/from16 v15, v23

    move-object/from16 v14, v26

    :goto_10
    if-nez v14, :cond_21

    move/from16 v29, v0

    move-object/from16 v30, v10

    goto :goto_12

    :cond_21
    move/from16 v29, v0

    if-eqz v26, :cond_22

    move-object/from16 v30, v10

    move-object/from16 v0, v26

    goto :goto_11

    :cond_22
    move-object v0, v10

    move-object/from16 v30, v0

    :goto_11
    const/4 v10, 0x0

    .line 3493
    invoke-virtual {v14, v1, v0, v10}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    :goto_12
    move-object/from16 v31, v6

    move-object/from16 v32, v11

    :cond_23
    :goto_13
    move-object/from16 v10, v30

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v31, v6

    if-eqz v26, :cond_25

    move-object/from16 v10, v26

    goto :goto_14

    :cond_25
    move-object/from16 v10, v30

    :goto_14
    const/4 v6, 0x1

    .line 3497
    invoke-virtual {v14, v1, v10, v6}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v10

    .line 3498
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v6, :cond_26

    .line 3499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v14, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-static {v10, v9}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v32, v11

    goto/16 :goto_1a

    .line 3500
    :cond_26
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v32, v11

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v11, :cond_33

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v6, :cond_27

    goto/16 :goto_19

    .line 3502
    :cond_27
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v6, :cond_2a

    .line 3503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3504
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getExt()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_29

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v11, :cond_29

    move-object v13, v10

    iget-wide v10, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v33, -0x80000000

    cmp-long v10, v10, v33

    if-nez v10, :cond_28

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-gez v6, :cond_28

    goto :goto_15

    :cond_28
    move-object v10, v13

    goto/16 :goto_1a

    :cond_29
    move-object v13, v10

    :goto_15
    move-object v10, v13

    const/16 v27, 0x1

    goto/16 :goto_1a

    .line 3507
    :cond_2a
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    if-eqz v6, :cond_2b

    .line 3508
    iget-object v6, v6, Lorg/telegram/messenger/WebFile;->mime_type:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMimeTypePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3509
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v14, Lorg/telegram/messenger/ImageLocation;->webFile:Lorg/telegram/messenger/WebFile;

    iget-object v10, v10, Lorg/telegram/messenger/WebFile;->url:Ljava/lang/String;

    invoke-static {v10, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1a

    .line 3510
    :cond_2b
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v6, :cond_2c

    .line 3511
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1a

    .line 3512
    :cond_2c
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_34

    if-nez v3, :cond_2d

    if-eqz v7, :cond_2d

    .line 3514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "q_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3516
    :cond_2d
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x2e

    .line 3518
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v13, -0x1

    const-string v15, ""

    if-ne v11, v13, :cond_2e

    move-object v6, v15

    goto :goto_16

    .line 3521
    :cond_2e
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3523
    :goto_16
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x1

    if-gt v11, v13, :cond_30

    .line 3524
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v11, "video/mp4"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const-string v15, ".mp4"

    goto :goto_17

    .line 3526
    :cond_2f
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string/jumbo v11, "video/x-matroska"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const-string v15, ".mkv"

    goto :goto_17

    :cond_30
    move-object v15, v6

    .line 3532
    :cond_31
    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3533
    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_32

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_32

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_32

    iget-object v6, v14, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_32

    const/4 v6, 0x1

    goto :goto_18

    :cond_32
    const/4 v6, 0x0

    :goto_18
    move/from16 v27, v6

    goto :goto_1a

    .line 3501
    :cond_33
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_34
    :goto_1a
    if-nez v3, :cond_35

    move-object v4, v0

    move-object/from16 v24, v10

    goto :goto_1b

    :cond_35
    move-object v8, v0

    move-object/from16 v25, v10

    :goto_1b
    if-ne v14, v5, :cond_23

    if-nez v3, :cond_36

    move-object/from16 v4, v19

    move-object v10, v4

    move-object/from16 v24, v10

    goto :goto_1c

    :cond_36
    move-object/from16 v8, v19

    move-object/from16 v25, v8

    move-object/from16 v26, v25

    goto/16 :goto_13

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, p1

    move/from16 v15, v28

    move/from16 v0, v29

    move-object/from16 v6, v31

    move-object/from16 v11, v32

    goto/16 :goto_f

    :cond_37
    move/from16 v29, v0

    move-object/from16 v31, v6

    move-object/from16 v30, v10

    move-object/from16 v32, v11

    move/from16 v28, v15

    if-eqz v5, :cond_3e

    .line 3556
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getStrippedLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    if-nez v0, :cond_39

    if-eqz v26, :cond_38

    move-object/from16 v0, v26

    goto :goto_1d

    :cond_38
    move-object/from16 v0, p2

    :cond_39
    :goto_1d
    const/4 v3, 0x0

    .line 3560
    invoke-virtual {v5, v1, v0, v3}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x1

    .line 3561
    invoke-virtual {v5, v1, v0, v3}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    .line 3562
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 3563
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

    :cond_3a
    :goto_1e
    move-object/from16 v35, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v35

    goto :goto_20

    .line 3564
    :cond_3b
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v6, v1, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v6, :cond_3d

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;

    if-eqz v1, :cond_3c

    goto :goto_1f

    .line 3566
    :cond_3c
    iget-object v1, v5, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-eqz v1, :cond_3a

    .line 3567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 3565
    :cond_3d
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_3e
    const/4 v3, 0x1

    move-object/from16 v0, v19

    :goto_20
    const-string v1, "@"

    if-eqz v8, :cond_3f

    if-eqz v12, :cond_3f

    .line 3572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3f
    if-eqz v4, :cond_40

    if-eqz v32, :cond_40

    .line 3575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v32

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    :cond_40
    move-object/from16 v11, v32

    :goto_21
    if-eqz v0, :cond_41

    if-eqz v31, :cond_41

    .line 3578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v31

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_41
    move-object/from16 v7, v31

    :goto_22
    move-object v6, v0

    .line 3581
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    if-eqz v4, :cond_42

    .line 3582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_23

    :cond_42
    move-object v13, v4

    .line 3585
    :goto_23
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    if-eqz v8, :cond_43

    .line 3586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getUniqKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_24

    :cond_43
    move-object v14, v8

    :goto_24
    if-eqz v30, :cond_46

    move-object/from16 v10, v30

    .line 3590
    iget-object v0, v10, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_45

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x1

    if-eqz v29, :cond_44

    const/16 v21, 0x2

    goto :goto_25

    :cond_44
    move/from16 v21, v3

    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v2

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v6, v7

    move-wide v7, v8

    move v9, v12

    move-object v15, v10

    move v10, v14

    move-object/from16 v18, v11

    move/from16 v11, v21

    move/from16 v12, v28

    .line 3591
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3592
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    move-object v5, v15

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto/16 :goto_2d

    :cond_45
    move-object v4, v2

    move-object v15, v10

    move-object/from16 v18, v11

    goto :goto_26

    :cond_46
    move-object v4, v2

    move-object/from16 v18, v11

    move-object/from16 v15, v30

    :goto_26
    if-eqz v26, :cond_4b

    .line 3594
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    const/16 v20, 0x1

    if-nez v0, :cond_47

    if-eqz v27, :cond_47

    move/from16 v21, v3

    goto :goto_27

    :cond_47
    move/from16 v21, v0

    :goto_27
    if-nez v21, :cond_48

    move v9, v3

    goto :goto_28

    :cond_48
    move/from16 v9, v21

    :goto_28
    if-nez v29, :cond_49

    const-wide/16 v10, 0x0

    const/16 v27, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v6, v7

    move-wide v7, v10

    move/from16 v10, v27

    move/from16 v11, v29

    move-object/from16 v19, v12

    move/from16 v12, v28

    .line 3601
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto :goto_29

    :cond_49
    move-object/from16 v19, v12

    :goto_29
    if-nez v17, :cond_4a

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    move-object v5, v15

    move-object/from16 v6, v18

    move/from16 v9, v20

    move/from16 v12, v28

    .line 3604
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_4a
    if-nez v16, :cond_4f

    .line 3607
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, v25

    move-object/from16 v4, v23

    move-object/from16 v5, v26

    move-object/from16 v6, v19

    move/from16 v9, v21

    move/from16 v12, v28

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    goto :goto_2d

    .line 3610
    :cond_4b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getCacheType()I

    move-result v0

    if-nez v0, :cond_4c

    if-eqz v27, :cond_4c

    move v14, v3

    goto :goto_2a

    :cond_4c
    move v14, v0

    :goto_2a
    if-nez v14, :cond_4d

    move v9, v3

    goto :goto_2b

    :cond_4d
    move v9, v14

    :goto_2b
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-eqz v29, :cond_4e

    const/16 v21, 0x2

    goto :goto_2c

    :cond_4e
    move/from16 v21, v3

    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v6, v7

    move-wide v7, v10

    move v10, v12

    move/from16 v11, v21

    move/from16 v12, v28

    .line 3615
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    .line 3616
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/ImageReceiver;->getSize()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v13

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    move-object v5, v15

    move-object/from16 v6, v18

    move v9, v14

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JIIII)V

    :cond_4f
    :goto_2d
    return-void
.end method

.method public moveToFront(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->lottieMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 187
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    .line 191
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->moveToFront(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onFragmentStackChanged()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4411
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader;->cachedAnimatedFileDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4412
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

    .line 3276
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->imageLoadQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2909
    iget-object p3, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2911
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

    .line 198
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 199
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

    .line 2746
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->bitmapUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->memCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2748
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->smallImagesMemCache:Lorg/telegram/messenger/LruCache;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LruCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public removeTestWebFile(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2365
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader;->testWebFile:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 2901
    new-instance p4, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2903
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCacheInternal(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    :goto_0
    return-void
.end method
