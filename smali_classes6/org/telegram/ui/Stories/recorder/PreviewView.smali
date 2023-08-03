.class public Lorg/telegram/ui/Stories/recorder/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# instance fields
.field private Tx:F

.field private Ty:F

.field private activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

.field private activePartPressed:Z

.field private allowCropping:Z

.field private allowRotation:Z

.field private allowWithSingleTouch:Z

.field private angle:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private cx:F

.field private cy:F

.field private doNotSpanRotation:Z

.field private draw:Z

.field private entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public filterTextureView:Landroid/view/TextureView;

.field private finalMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private h:F

.field private inTrash:Z

.field private isPart:Z

.field private final lastTouch:Landroid/graphics/PointF;

.field private lastTouchDistance:F

.field private lastTouchRotation:D

.field private final matrix:Landroid/graphics/Matrix;

.field private multitouch:Z

.field private onErrorListener:Ljava/lang/Runnable;

.field private onTap:Ljava/lang/Runnable;

.field private final partsBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final partsBounce:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/ButtonBounce;",
            ">;"
        }
    .end annotation
.end field

.field private final pauseLinks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rotationDiff:F

.field private seekedLastTime:J

.field private final snapPaint:Landroid/graphics/Paint;

.field private snappedRotation:Z

.field private tapTime:J

.field private tempMatrix:Landroid/graphics/Matrix;

.field private tempVertices:[F

.field private textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

.field private final thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private final touch:Landroid/graphics/PointF;

.field private touchMatrix:Landroid/graphics/Matrix;

.field private trashCx:F

.field private trashCy:F

.field private trashPartIndex:I

.field private trashT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private final vertices:[F

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$490qLZuR7yArXSd3Rl0SjpT7kvI(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$0(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EwdSU_qi3sDgdNmpzhJITtOBAkw(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$1(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2Btw4r2Uf3NU8A2qT825wkka_A(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$O3rqNOVhowNQSwJphBbQPpDiJfI(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$2(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UC1emjx5rOIj1O84DvaXiUAuk58(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    return-void
.end method

.method public static synthetic $r8$lambda$Upz3Gl2TZG4gwtp8Yn2OZNza6GQ(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$4(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnq3QiWBj49ciN5AuNqyNpEQx8s(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$3()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snapPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    .line 614
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 643
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    .line 644
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    .line 646
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 648
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    .line 674
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 680
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 786
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    .line 791
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    .line 792
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    .line 797
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    .line 809
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x118

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-array v2, v2, [F

    .line 985
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    .line 1073
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    .line 76
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    const/4 p1, 0x0

    .line 77
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setMode(I)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V

    .line 202
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, -0x1

    .line 204
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x3

    .line 205
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PreviewView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/recorder/PreviewView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private extractPointsData(Landroid/graphics/Matrix;)V
    .locals 7

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 657
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 658
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    .line 660
    aget v1, v0, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    .line 662
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 663
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 664
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    aget v0, v0, v4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    .line 666
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v6, v5, v4

    aget v5, v5, v2

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    aput v5, v0, v4

    .line 669
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 670
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 671
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v4, v1, v4

    aget v1, v1, v2

    invoke-static {p1, v0, v4, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    mul-float/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->h:F

    return-void
.end method

.method private findPartAt(FF)Lorg/telegram/ui/Stories/recorder/IStoryPart;
    .locals 7

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 988
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;

    .line 989
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 990
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    aput v4, v3, v1

    .line 991
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_0

    .line 992
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    .line 994
    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 995
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 996
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    aget v4, v3, v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    aget v4, v3, v5

    iget v5, v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    aget v4, v3, v1

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    aget v3, v3, v1

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1000
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p1
.end method

.method private synthetic lambda$new$5()V
    .locals 5

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 623
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    const/high16 v1, 0x447a0000    # 1000.0f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setupGradient$1(I[I)V
    .locals 10

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 380
    aget v1, p2, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 382
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupGradient$2(I[I)V
    .locals 10

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 387
    aget v1, p2, v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupImage$0(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 296
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    .line 297
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 298
    invoke-static {p1, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 303
    :catchall_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_1
    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setupVideoPlayer$3()V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$4(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    :cond_0
    return-void
.end method

.method private setupGradient()V
    .locals 12

    .line 375
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 376
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 395
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    const/4 v0, 0x2

    new-array v9, v0, [I

    const/4 v4, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v11, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    aput v11, v9, v4

    iget v4, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    aput v4, v9, v3

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 377
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 378
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v3, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 384
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 385
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v3, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 392
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 398
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 11

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz p1, :cond_8

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x10

    int-to-float v2, v2

    const/high16 v3, 0x41100000    # 9.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const-wide/16 v3, -0x1

    .line 267
    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_5

    .line 268
    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 269
    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    .line 271
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 272
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 274
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_5

    .line 277
    :try_start_0
    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_4

    .line 278
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 280
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 282
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v0, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v6, v5, v7, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    move-wide v8, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v8, v3

    if-gez v1, :cond_6

    .line 287
    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 291
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 292
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 295
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v1, v0, v2, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-void

    .line 365
    :cond_7
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 366
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 368
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 371
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 406
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 408
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p1}, Landroid/view/TextureView;->clearAnimation()V

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 418
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_7

    .line 420
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 423
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_3

    .line 424
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 425
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_3
    new-array v3, v2, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 430
    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v5}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 431
    new-instance v6, Lorg/telegram/ui/Stories/recorder/PreviewView$2;

    invoke-direct {v6, p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 513
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v3, :cond_4

    .line 514
    invoke-virtual {v3}, Landroid/view/TextureView;->clearAnimation()V

    .line 515
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 516
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 517
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 520
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1, v3, v5}, Lorg/telegram/ui/Components/VideoEditTextureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoPlayer;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 521
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 522
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p2, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 524
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    const/16 v0, 0x33

    const/4 v1, -0x2

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 532
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v1, "other"

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_6

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 540
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget p4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {p3, p2, p4, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setVideoPath(Ljava/lang/String;FF)V

    :cond_7
    :goto_1
    return-void
.end method

.method private tapTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    return v1

    .line 1011
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1013
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1015
    :cond_1
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    .line 1017
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1018
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private touchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 817
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 820
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-wide/16 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 824
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v6, v9

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 825
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v6, v9

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 826
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-static {v5, v6, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v5

    .line 827
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v6, v9

    float-to-double v9, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float/2addr v6, v11

    float-to-double v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    goto :goto_1

    .line 829
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->x:F

    .line 830
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->y:F

    move-wide v9, v5

    move v5, v8

    .line 832
    :goto_1
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    if-eq v6, v2, :cond_3

    .line 833
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iput v12, v6, Landroid/graphics/PointF;->x:F

    .line 834
    iget v11, v11, Landroid/graphics/PointF;->y:F

    iput v11, v6, Landroid/graphics/PointF;->y:F

    .line 835
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 836
    iput-wide v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    .line 837
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    .line 839
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v2, :cond_4

    return v3

    .line 843
    :cond_4
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_7

    .line 845
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 846
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 847
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 849
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    .line 850
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v11, v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->findPartAt(FF)Lorg/telegram/ui/Stories/recorder/IStoryPart;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    .line 851
    instance-of v11, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    if-eqz v11, :cond_6

    .line 852
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    check-cast v11, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 856
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    .line 857
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v6, :cond_5

    .line 859
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 861
    :cond_5
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 862
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 863
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDragStart()V

    .line 864
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 865
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    .line 867
    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    .line 869
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 871
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_1b

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    if-eqz v6, :cond_1b

    .line 872
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v2

    .line 873
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v2

    iget v12, v12, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v2

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/16 v14, 0x9

    const/high16 v15, 0x42b40000    # 90.0f

    if-le v2, v4, :cond_e

    .line 875
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    cmpl-float v16, v2, v8

    if-eqz v16, :cond_8

    div-float v2, v5, v2

    .line 877
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v2, v11, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 879
    :cond_8
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    sub-double v3, v9, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 880
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    add-float/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 881
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v2, :cond_c

    .line 882
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v2, :cond_b

    .line 884
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 885
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v15

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v2, v7

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    .line 887
    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 889
    :try_start_0
    invoke-virtual {v0, v14, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    .line 894
    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v4, :cond_d

    .line 895
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v11, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 897
    :cond_d
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    goto :goto_6

    :cond_e
    move v2, v4

    .line 899
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v2, :cond_f

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    if-eqz v2, :cond_10

    .line 900
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v11, v13

    sub-float/2addr v6, v12

    invoke-virtual {v2, v11, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 901
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    add-float/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 902
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    add-float/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    .line 904
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    if-eqz v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    invoke-static {v8, v8, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    .line 905
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 907
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 909
    :cond_11
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 911
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 912
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 913
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 914
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v3, v4

    .line 915
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    if-nez v4, :cond_14

    .line 916
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x40600000    # 3.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_13

    .line 917
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    invoke-virtual {v4, v3, v6, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 918
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v3, :cond_14

    const/4 v3, 0x1

    .line 920
    :try_start_1
    invoke-virtual {v0, v14, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    :catch_1
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    .line 925
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 928
    :cond_14
    :goto_7
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    const/16 v12, 0x4c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v4, v3, v6, v11}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    const/16 v4, 0x23

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_8

    :cond_15
    const/4 v3, 0x0

    .line 929
    :goto_8
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    if-eq v3, v4, :cond_16

    .line 930
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDragTrash(Z)V

    .line 931
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    :cond_16
    if-eqz v3, :cond_17

    .line 934
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCx:F

    .line 935
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCy:F

    .line 937
    :cond_17
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    if-eqz v3, :cond_1a

    .line 938
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    const/16 v4, 0x42

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 939
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v4, v4

    const/16 v6, 0x72

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v11, v11

    mul-float/2addr v6, v11

    sub-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    :goto_a
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    .line 942
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 943
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 944
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 945
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 947
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 948
    :cond_1c
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 949
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    instance-of v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    if-eqz v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v1, 0x0

    goto :goto_d

    .line 950
    :cond_1e
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v2, 0x0

    if-eqz v3, :cond_1f

    .line 952
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 954
    :cond_1f
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 955
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    .line 956
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    if-eqz v3, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    const/4 v1, 0x1

    goto :goto_c

    :cond_20
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDragEnd(Z)V

    const/4 v1, 0x0

    .line 957
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    const/4 v1, 0x0

    .line 958
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    .line 959
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 960
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    .line 962
    :goto_d
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    .line 963
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    .line 964
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 967
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 970
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 971
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 972
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 973
    iput-wide v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public additionalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public applyMatrix()V
    .locals 4

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v1, :cond_3

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    if-gez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 774
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    if-gez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 772
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 777
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 778
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 776
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 783
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public deleteCurrentPart()V
    .locals 2

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    if-eqz v0, :cond_0

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 684
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 685
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    .line 687
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    sub-float v4, v1, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 688
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 689
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 690
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 691
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 692
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 694
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 695
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 696
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 697
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 698
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 702
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 703
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_8

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    xor-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    move v4, v2

    .line 705
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 706
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    if-nez v5, :cond_3

    goto/16 :goto_3

    .line 710
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    goto/16 :goto_3

    .line 715
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz v7, :cond_5

    const v8, 0x3d4ccccd    # 0.05f

    .line 717
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v1

    .line 719
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 720
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpl-float v8, v7, v1

    if-eqz v8, :cond_6

    .line 722
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v8, v2

    .line 723
    iget v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v3

    .line 724
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 725
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    aget v8, v8, v2

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    aget v9, v9, v3

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {p1, v7, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 727
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    if-ne v7, v8, :cond_7

    const v7, 0x3e4ccccd    # 0.2f

    .line 728
    invoke-static {v7, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 729
    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCx:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCy:F

    invoke-virtual {p1, v7, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 731
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 732
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 733
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1039
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1040
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    instance-of v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1041
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->additionalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1042
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    if-eqz v0, :cond_4

    .line 1045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1046
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2

    .line 1050
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDuration()J
    .locals 4

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    :goto_0
    return v0
.end method

.method public getPaintSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 747
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object v0
.end method

.method public getTimelineView()Lorg/telegram/ui/Components/VideoTimelinePlayView;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelinePlayView;

    return-object v0
.end method

.method public mute(Z)V
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    return-void
.end method

.method public onEntityDragEnd(Z)V
    .locals 0

    return-void
.end method

.method public onEntityDragStart()V
    .locals 0

    return-void
.end method

.method public onEntityDragTrash(Z)V
    .locals 0

    return-void
.end method

.method public onEntityDraggedBottom(Z)V
    .locals 0

    return-void
.end method

.method public onEntityDraggedTop(Z)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1030
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 1034
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onTimeDrag(ZJZ)V
    .locals 0

    return-void
.end method

.method public release()J
    .locals 4

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 548
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v2, 0x0

    .line 549
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 2

    .line 229
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 231
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 232
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 233
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    .line 237
    :cond_0
    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_3

    .line 238
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 240
    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez p2, :cond_2

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p2, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 241
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    goto :goto_1

    :cond_3
    const-wide/16 p3, 0x0

    .line 246
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 247
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 248
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    .line 250
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    return-void
.end method

.method public setAllowCropping(Z)V
    .locals 0

    .line 788
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    return-void
.end method

.method public setDraw(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 677
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setFilterTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    .line 607
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    .line 609
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setOnTapListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 760
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 762
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method public setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 8

    if-nez p1, :cond_2

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 562
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 566
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    :goto_1
    mul-int/lit8 v1, v0, 0x10

    int-to-float v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    move v3, v2

    .line 568
    :goto_2
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    .line 569
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    if-nez v4, :cond_4

    goto :goto_3

    .line 573
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    iget v7, v4, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    goto :goto_3

    .line 577
    :cond_5
    iget-object v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 578
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 579
    iput-boolean v5, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 580
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 581
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 582
    invoke-static {v7, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 583
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 584
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 586
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move v3, v2

    .line 589
    :goto_5
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 590
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move v3, v2

    :goto_6
    if-nez v3, :cond_7

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 597
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    return-void
.end method

.method public updatePauseReason(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1076
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1080
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    .line 1081
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method public whenError(Ljava/lang/Runnable;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method
