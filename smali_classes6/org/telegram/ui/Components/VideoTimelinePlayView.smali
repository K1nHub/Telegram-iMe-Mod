.class public Lorg/telegram/ui/Components/VideoTimelinePlayView;
.super Landroid/view/View;
.source "VideoTimelinePlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;,
        Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field public static TYPE_LEFT:I = 0x0

.field public static TYPE_PROGRESS:I = 0x2

.field public static TYPE_RIGHT:I = 0x1

.field private static final sync:Ljava/lang/Object;


# instance fields
.field bitmapPaint:Landroid/graphics/Paint;

.field private clipPath:Landroid/graphics/Path;

.field private currentMode:I

.field private currentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

.field private exclusionRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private exclustionRect:Landroid/graphics/Rect;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;",
            ">;"
        }
    .end annotation
.end field

.field private framesToLoad:I

.field private lastWidth:I

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private playProgress:F

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedPlay:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect3:Landroid/graphics/RectF;

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    .line 60
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    .line 463
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint3:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelinePlayView;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelinePlayView;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 5

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x28

    .line 351
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    div-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    .line 354
    iget-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    .line 356
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelinePlayView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 402
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    const/4 v0, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 440
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 447
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 450
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 406
    sget-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 408
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 410
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 413
    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 415
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 416
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 417
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 424
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 425
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    :cond_3
    return-void

    .line 415
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLeftProgress()F
    .locals 1

    .line 108
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    return v0
.end method

.method public getLength()J
    .locals 4

    .line 319
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 104
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    return v0
.end method

.method public getProgressOf(I)F
    .locals 1

    .line 116
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    if-ne p1, v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result p1

    return p1

    .line 118
    :cond_0
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    if-ne p1, v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getProgress()F

    move-result p1

    return p1

    .line 120
    :cond_1
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    if-ne p1, v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getRightProgress()F
    .locals 1

    .line 112
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v8, v1, v2

    int-to-float v9, v8

    .line 468
    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    const/16 v10, 0x10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v11, v1, v2

    .line 469
    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v12, v1, v2

    const/4 v13, 0x6

    .line 471
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v1, 0x30

    .line 472
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 475
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v7, v2, v3, v5, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 476
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v6, 0x0

    const/16 v17, 0x2e

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 477
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    int-to-float v3, v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v10, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 478
    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    goto/16 :goto_3

    :cond_0
    move/from16 v18, v6

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 482
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 483
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 484
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    int-to-float v6, v11

    int-to-float v5, v14

    int-to-float v4, v12

    .line 485
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move v2, v6

    move/from16 v20, v3

    move v3, v5

    move/from16 v21, v5

    move/from16 v5, v20

    move/from16 v20, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v6, v18

    .line 487
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    .line 489
    iget-object v2, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 490
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    mul-int v3, v3, v18

    add-int/2addr v2, v3

    .line 491
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 492
    iget v4, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v19, v4, v5

    if-eqz v19, :cond_2

    const v19, 0x3d3b3ee7

    add-float v4, v4, v19

    .line 493
    iput v4, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 495
    iput v5, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 499
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v10, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    invoke-virtual {v13, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v5

    float-to-int v5, v10

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 502
    :cond_2
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x10

    const/4 v13, 0x6

    goto :goto_0

    :cond_4
    move v1, v10

    .line 507
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v2, v1

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v4, v1

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    int-to-float v8, v11

    .line 512
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v4, v1

    int-to-float v13, v15

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 513
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v2, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 514
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v4, v1

    int-to-float v5, v14

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 515
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v15, v1

    int-to-float v3, v15

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 518
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v11, v4

    int-to-float v4, v11

    invoke-virtual {v1, v2, v3, v4, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 519
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 520
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v3, v8, v3

    const v4, 0x41a95c29    # 21.17f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v8, v6

    const v6, 0x41f6a3d7    # 30.83f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1, v3, v5, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 523
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v12

    int-to-float v3, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v8, 0xc

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v12

    int-to-float v8, v8

    invoke-virtual {v1, v3, v5, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 524
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 525
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    int-to-float v3, v12

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v3, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 526
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v1, 0x12

    .line 528
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v9, v2

    add-float/2addr v1, v9

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/16 v6, 0x32

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 533
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float v5, v1, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v8, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 534
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 149
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_0

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 455
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 456
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 457
    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    if-eq p2, p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clearFrames()V

    .line 459
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    .line 164
    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 165
    iget v7, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float/2addr v7, v4

    float-to-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 166
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_a

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    .line 173
    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v0, 0x8

    .line 174
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-eq v8, v5, :cond_3

    sub-int v3, v7, v0

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_3

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    cmpl-float v0, v2, v10

    if-ltz v0, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 177
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 179
    :cond_2
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    int-to-float p1, v7

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 180
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_3
    sub-int v0, v5, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    add-int v0, v5, p1

    .line 183
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    cmpl-float v0, v2, v10

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    .line 185
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 187
    :cond_4
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    int-to-float p1, v5

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 188
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_5
    sub-int v0, v8, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    add-int/2addr p1, v8

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_7

    cmpl-float p1, v2, v10

    if-ltz p1, :cond_7

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_6

    .line 193
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 195
    :cond_6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    int-to-float p1, v8

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_7
    int-to-float p1, v5

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_25

    int-to-float p1, v8

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_25

    cmpl-float p1, v2, v10

    if-ltz p1, :cond_25

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_25

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_8

    .line 201
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 203
    :cond_8
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    .line 204
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_9

    .line 206
    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 208
    :cond_9
    iput v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 212
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v11, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_b

    goto/16 :goto_7

    .line 232
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 233
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_f

    .line 234
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 235
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 236
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    .line 237
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_0

    .line 238
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 239
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 241
    :cond_d
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_e

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 244
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 246
    :cond_f
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_17

    .line 247
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 248
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 249
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_1

    :cond_10
    if-le p1, v8, :cond_11

    goto :goto_1

    :cond_11
    move v8, p1

    .line 253
    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 254
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    sub-float v1, v0, p1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    add-float/2addr p1, v2

    .line 255
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    goto :goto_2

    .line 256
    :cond_12
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_13

    sub-float p1, v0, p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_13

    sub-float/2addr v0, v1

    .line 257
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float p1, v0, v10

    if-gez p1, :cond_13

    .line 259
    iput v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 262
    :cond_13
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    .line 263
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_3

    .line 264
    :cond_14
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15

    .line 265
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 267
    :cond_15
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_16

    .line 268
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 270
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 272
    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_25

    .line 273
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v5, :cond_18

    goto :goto_4

    .line 276
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_19

    .line 277
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int v5, v3, p1

    goto :goto_4

    :cond_19
    move v5, p1

    .line 279
    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v5, p1

    int-to-float p1, v5

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 280
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    sub-float/2addr p1, v2

    .line 281
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    goto :goto_5

    .line 282
    :cond_1a
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_1b

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1b

    add-float/2addr v0, v1

    .line 283
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1b

    .line 285
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 288
    :cond_1b
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1c

    .line 289
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_6

    .line 290
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    .line 291
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 293
    :cond_1d
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1e

    .line 294
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 296
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 213
    :cond_1f
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_21

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_20

    .line 215
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 217
    :cond_20
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    return v11

    .line 219
    :cond_21
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_23

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_22

    .line 221
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 223
    :cond_22
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    return v11

    .line 225
    :cond_23
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_25

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_24

    .line 227
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 229
    :cond_24
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    :cond_25
    return v11
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setLeftRightProgress(FF)V
    .locals 0

    .line 337
    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 338
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    .line 139
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    .line 141
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    .line 127
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 131
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 434
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightProgress(F)V
    .locals 1

    .line 323
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_0

    .line 325
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 327
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1

    .line 328
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 330
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 331
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 333
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;FF)V
    .locals 1

    .line 304
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    .line 305
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 306
    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 307
    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 309
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
