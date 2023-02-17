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

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawableRight:Landroid/graphics/drawable/Drawable;

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

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    .line 53
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->video_cropleft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    .line 88
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v3, -0x1000000

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->video_cropright:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    .line 90
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelinePlayView;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelinePlayView;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 5

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x28

    .line 321
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    .line 322
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

    .line 323
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

    .line 324
    iget-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    .line 326
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelinePlayView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 372
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

    .line 409
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 410
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    .line 420
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 376
    sget-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 378
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 379
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 380
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

    .line 383
    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 385
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 386
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 387
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 394
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 395
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    :cond_3
    return-void

    .line 385
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLeftProgress()F
    .locals 1

    .line 99
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 95
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .line 103
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v8, v1, v2

    int-to-float v9, v8

    .line 436
    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float v1, v1, v9

    float-to-int v1, v1

    const/16 v10, 0x10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v11, v1, v2

    .line 437
    iget v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float v1, v1, v9

    float-to-int v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v12, v1, v2

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 440
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v13, 0x4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v8

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v7, v1, v2, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 441
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 442
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 445
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 446
    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    .line 447
    iget-object v6, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 448
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v14, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    mul-int v14, v14, v1

    add-int/2addr v6, v14

    .line 449
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    .line 450
    iget v15, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v16, v15, v13

    if-eqz v16, :cond_2

    const v16, 0x3e23d70a    # 0.16f

    add-float v15, v15, v16

    .line 451
    iput v15, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v15, v15, v13

    if-lez v15, :cond_1

    .line 453
    iput v13, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    goto :goto_1

    .line 455
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 457
    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x437f0000    # 255.0f

    iget v10, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    mul-float v10, v10, v15

    float-to-int v10, v10

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 458
    iget-object v5, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v6, v6

    int-to-float v10, v14

    iget-object v13, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 460
    :cond_2
    iget-object v5, v5, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v6, v6

    int-to-float v10, v14

    const/4 v13, 0x0

    invoke-virtual {v7, v5, v6, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x10

    const/4 v13, 0x4

    goto :goto_0

    .line 467
    :cond_4
    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 468
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v2, 0x10

    .line 470
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    int-to-float v13, v1

    int-to-float v14, v11

    const/16 v15, 0x2e

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x4

    .line 471
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v4, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x4

    .line 473
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v3, v2

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v4, v1

    int-to-float v15, v10

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 474
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v2, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v12

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 475
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v12

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 476
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v2, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v10, v1

    int-to-float v3, v10

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v12

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 479
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v11, v3

    int-to-float v3, v3

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v11

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 480
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v11, v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v5, v10

    div-int/2addr v5, v8

    add-int/2addr v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v11, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v5, v10

    div-int/2addr v5, v8

    const/16 v10, 0x16

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v5, v13

    invoke-virtual {v1, v2, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 484
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v1, v2, v4, v11, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 485
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 486
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v12

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v11, v13

    div-int/2addr v11, v8

    add-int/2addr v4, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v12, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1, v2, v4, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float v9, v9, v2

    add-float/2addr v1, v9

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    const/16 v6, 0x32

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v4, v5, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v5, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v2, 0x34

    .line 492
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40600000    # 3.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v8, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 496
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 128
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 129
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_0

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 425
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 426
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 427
    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    if-eq p2, p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clearFrames()V

    .line 429
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    .line 144
    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 145
    iget v7, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 146
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_a

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    .line 153
    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v0, 0x8

    .line 154
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

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 157
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 159
    :cond_2
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    int-to-float p1, v7

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 160
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_3
    sub-int v0, v5, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    add-int v0, v5, p1

    .line 163
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

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    .line 165
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 167
    :cond_4
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    int-to-float p1, v5

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 168
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 169
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

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    .line 172
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_6

    .line 173
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 175
    :cond_6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    int-to-float p1, v8

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 176
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 177
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

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_25

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_8

    .line 181
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 183
    :cond_8
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    .line 184
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_9

    .line 186
    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 188
    :cond_9
    iput v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 192
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v11, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_b

    goto/16 :goto_7

    .line 212
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    .line 213
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_f

    .line 214
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 215
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 216
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    .line 217
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_0

    .line 218
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 219
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 221
    :cond_d
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_e

    .line 222
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    .line 224
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 226
    :cond_f
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_17

    .line 227
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 228
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 229
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_1

    :cond_10
    if-le p1, v8, :cond_11

    goto :goto_1

    :cond_11
    move v8, p1

    .line 233
    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 234
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    sub-float v1, v0, p1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    add-float/2addr p1, v2

    .line 235
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    goto :goto_2

    .line 236
    :cond_12
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_13

    sub-float p1, v0, p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_13

    sub-float/2addr v0, v1

    .line 237
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float p1, v0, v10

    if-gez p1, :cond_13

    .line 239
    iput v10, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 242
    :cond_13
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    .line 243
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_3

    .line 244
    :cond_14
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15

    .line 245
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 247
    :cond_15
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_16

    .line 248
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 250
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 252
    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_25

    .line 253
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v5, :cond_18

    goto :goto_4

    .line 256
    :cond_18
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_19

    .line 257
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int v5, v3, p1

    goto :goto_4

    :cond_19
    move v5, p1

    .line 259
    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v5, p1

    int-to-float p1, v5

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 260
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1a

    sub-float/2addr p1, v2

    .line 261
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    goto :goto_5

    .line 262
    :cond_1a
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_1b

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1b

    add-float/2addr v0, v1

    .line 263
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1b

    .line 265
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 268
    :cond_1b
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1c

    .line 269
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_6

    .line 270
    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    .line 271
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 273
    :cond_1d
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1e

    .line 274
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 276
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    .line 193
    :cond_1f
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_21

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_20

    .line 195
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 197
    :cond_20
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    return v11

    .line 199
    :cond_21
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_23

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_22

    .line 201
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 203
    :cond_22
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    return v11

    .line 205
    :cond_23
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_25

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_24

    .line 207
    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 209
    :cond_24
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    :cond_25
    return v11
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    .line 119
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    .line 120
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    .line 121
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 114
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 404
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightProgress(F)V
    .locals 1

    .line 299
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_0

    .line 301
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    .line 303
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1

    .line 304
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 306
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 307
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;FF)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    .line 285
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 286
    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    .line 287
    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    .line 289
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 295
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
