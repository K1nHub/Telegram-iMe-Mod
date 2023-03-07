.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;,
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private backgroundGrayPaint:Landroid/graphics/Paint;

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

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private framesLoaded:Z

.field private framesToLoad:I

.field private isRoundFrames:Z

.field private keyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect1:Landroid/graphics/Rect;

.field private rect2:Landroid/graphics/Rect;

.field private roundCornerBitmap:Landroid/graphics/Bitmap;

.field private roundCornersSize:I

.field thumbPaint:Landroid/graphics/Paint;

.field thumbRipplePaint:Landroid/graphics/Paint;

.field private timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    .line 58
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbRipplePaint:Landroid/graphics/Paint;

    .line 88
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    .line 92
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/VideoTimelineView;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    return p1
.end method

.method private drawCorners(Landroid/graphics/Canvas;IIII)V
    .locals 7

    const/4 v0, 0x6

    .line 454
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 455
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    .line 456
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    .line 457
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    .line 460
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v2, "chat_messagePanelBackground"

    .line 463
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 464
    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    int-to-float v4, v2

    int-to-float v5, v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 467
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    shr-int/2addr v0, v3

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 469
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, p4

    int-to-float v3, p5

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-int v5, p4, v0

    int-to-float v5, v5

    add-int/2addr p2, p5

    sub-int v6, p2, v0

    int-to-float v6, v6

    .line 470
    invoke-virtual {p1, v1, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 471
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v2, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x43340000    # 180.0f

    add-int/2addr p4, p3

    sub-int p3, p4, v0

    int-to-float p3, p3

    .line 474
    invoke-virtual {p1, v1, p3, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int v5, p4, v2

    int-to-float v5, v5

    sub-int/2addr p2, v2

    int-to-float p2, p2

    invoke-virtual {p1, v1, v5, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, 0x42b40000    # 90.0f

    add-int/2addr p5, v0

    int-to-float p5, p5

    .line 478
    invoke-virtual {p1, p2, p3, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 479
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget p3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 286
    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    const/16 v2, 0x38

    .line 287
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    .line 290
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    .line 294
    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    .line 298
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    .line 300
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    if-ge v0, v2, :cond_2

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    float-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 307
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    .line 308
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 356
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x0

    aput-object p1, v4, v1

    const/4 v0, 0x2

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 396
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 405
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    .line 408
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 360
    sget-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 362
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 364
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 367
    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 369
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 371
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 389
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 390
    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    :cond_5
    return-void

    .line 369
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLeftProgress()F
    .locals 1

    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    .line 118
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 414
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int v6, v1, v3

    .line 415
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v7, v0, v1

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/16 v8, 0x20

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 423
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    if-nez v0, :cond_1

    const/4 v1, 0x0

    int-to-float v2, v9

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    .line 427
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 430
    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    if-eqz v2, :cond_2

    div-int/lit8 v3, v3, 0x2

    :cond_2
    mul-int v3, v3, v0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 432
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    const/16 v5, 0x1c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v3, v9, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v2, v3

    int-to-float v3, v9

    .line 435
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    int-to-float v8, v9

    int-to-float v3, v6

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v7

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x4

    .line 447
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v1, v0

    const/16 v10, 0xa

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v6, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 448
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v7, v0

    int-to-float v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v1, v9, 0x2

    sub-int v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoTimelineView;->drawCorners(Landroid/graphics/Canvas;IIII)V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v5, v3

    .line 150
    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v6, v6, v5

    float-to-int v6, v6

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 151
    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v8, v8, v5

    float-to-int v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v8, v7

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x4

    const/high16 v10, 0x447a0000    # 1000.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v7, :cond_6

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    .line 158
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int v3, v6, p1

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_3

    add-int v3, v6, p1

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    cmpl-float v3, v2, v11

    if-ltz v3, :cond_3

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    .line 161
    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 163
    :cond_2
    iput-boolean v12, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    int-to-float p1, v6

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 164
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v6, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v6, v0

    int-to-float v0, v6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v12}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v12

    :cond_3
    sub-int v3, v8, p1

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_5

    add-int/2addr p1, v8

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_5

    cmpl-float p1, v2, v11

    if-ltz p1, :cond_5

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_5

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    .line 172
    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    .line 174
    :cond_4
    iput-boolean v12, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    int-to-float p1, v8

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    .line 175
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v8, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v8, v0

    int-to-float v0, v8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v12}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v12

    .line 182
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    goto/16 :goto_5

    .line 184
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v12, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    goto/16 :goto_4

    .line 202
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_17

    .line 203
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    const/high16 v2, 0x41400000    # 12.0f

    const/16 v4, 0x10

    if-eqz p1, :cond_d

    .line 204
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 205
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 206
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_0

    :cond_8
    if-le p1, v8, :cond_9

    goto :goto_0

    :cond_9
    move v8, p1

    .line 210
    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v5

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 211
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    sub-float v1, v0, p1

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_a

    add-float/2addr p1, v3

    .line 212
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    goto :goto_1

    .line 213
    :cond_a
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v3, v1, v11

    if-eqz v3, :cond_b

    sub-float p1, v0, p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_b

    sub-float/2addr v0, v1

    .line 214
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    cmpg-float p1, v0, v11

    if-gez p1, :cond_b

    .line 216
    iput v11, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    .line 219
    :cond_b
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v5, v5, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v12}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_c

    .line 223
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    .line 225
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v12

    .line 227
    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz p1, :cond_17

    .line 228
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v6, :cond_e

    goto :goto_2

    .line 231
    :cond_e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_f

    .line 232
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int v6, v3, p1

    goto :goto_2

    :cond_f
    move v6, p1

    .line 234
    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v6, p1

    int-to-float p1, v6

    div-float/2addr p1, v5

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 235
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float v1, p1, v0

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_10

    sub-float/2addr p1, v3

    .line 236
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    goto :goto_3

    .line 237
    :cond_10
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v3, v1, v11

    if-eqz v3, :cond_11

    sub-float/2addr p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_11

    add-float/2addr v0, v1

    .line 238
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_11

    .line 240
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 244
    :cond_11
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v5, v5, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v12}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_12

    .line 248
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    .line 250
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v12

    .line 185
    :cond_13
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz p1, :cond_15

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_14

    .line 187
    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 189
    :cond_14
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    return v12

    .line 193
    :cond_15
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz p1, :cond_17

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_16

    .line 195
    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    .line 197
    :cond_16
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    return v12

    :cond_17
    :goto_5
    return v0
.end method

.method public setColor(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setKeyframes(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    .line 126
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    .line 127
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    .line 128
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    .line 122
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    return-void
.end method

.method public setRoundFrames(Z)V
    .locals 4

    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Landroid/graphics/Rect;

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v2, 0x2a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p1, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public setTimeHintView(Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 264
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/4 v1, 0x0

    .line 265
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 266
    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    .line 268
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 274
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbRipplePaint:Landroid/graphics/Paint;

    const-string v1, "key_chat_recordedVoiceHighlight"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->updateColors()V

    :cond_0
    return-void
.end method
