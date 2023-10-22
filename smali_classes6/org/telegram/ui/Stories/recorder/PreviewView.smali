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

.field private audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private cx:F

.field private cy:F

.field private doNotSpanRotation:Z

.field private draw:Z

.field private entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public filterTextureView:Landroid/view/TextureView;

.field private finalMatrix:Landroid/graphics/Matrix;

.field private gradientBottom:I

.field private final gradientPaint:Landroid/graphics/Paint;

.field private gradientTop:I

.field private h:F

.field private inTrash:Z

.field public invalidateBlur:Ljava/lang/Runnable;

.field private isPart:Z

.field private lastPos:J

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

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

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

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private final touch:Landroid/graphics/PointF;

.field private touchMatrix:Landroid/graphics/Matrix;

.field private trashCx:F

.field private trashCy:F

.field private trashPartIndex:I

.field private trashT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final updateAudioProgressRunnable:Ljava/lang/Runnable;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private final vertices:[F

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

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

.method public static synthetic $r8$lambda$o2FHTNnL5N5M5aW6_-jndgVSIYI(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$6()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 10

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snapPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    .line 707
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 733
    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    .line 795
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    .line 796
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    .line 799
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 801
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    .line 827
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 833
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x140

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 939
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    .line 944
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    .line 945
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    .line 950
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    .line 962
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v7, 0x118

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-array v1, v1, [F

    .line 1138
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    .line 1226
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    .line 81
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    .line 83
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 85
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x3

    .line 86
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/PreviewView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/recorder/PreviewView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p1
.end method

.method private extractPointsData(Landroid/graphics/Matrix;)V
    .locals 7

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 809
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 810
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 811
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    .line 813
    aget v1, v0, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 816
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 817
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 818
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

    .line 819
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v6, v5, v4

    aget v5, v5, v2

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    aput v5, v0, v4

    .line 822
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 823
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 824
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

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1141
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;

    .line 1142
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

    .line 1143
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

    .line 1144
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_0

    .line 1145
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    .line 1147
    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1148
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1149
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

    .line 1153
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p1
.end method

.method private synthetic lambda$new$5()V
    .locals 7

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 712
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 713
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    long-to-float v2, v0

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 715
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->isDragging()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_1

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1f4

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 718
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    move-wide v0, v1

    goto :goto_1

    .line 720
    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 722
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    goto :goto_2

    .line 724
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 726
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 727
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 728
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    const/high16 v3, 0x447a0000    # 1000.0f

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v3, v4

    float-to-long v3, v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 730
    :cond_5
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 8

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 739
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    long-to-float v3, v0

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v7, v5

    mul-float/2addr v4, v7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    long-to-float v4, v5

    mul-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v3

    mul-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    move-wide v0, v1

    .line 743
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    const/high16 v1, 0x447a0000    # 1000.0f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupGradient$1(I[I)V
    .locals 10

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 427
    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 428
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

    .line 429
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    .line 432
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 434
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    .line 435
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupGradient$2(I[I)V
    .locals 10

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 441
    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 442
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

    .line 443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    .line 446
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 448
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    .line 449
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupImage$0(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 381
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 383
    invoke-static {p1, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 386
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

    .line 388
    :catchall_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_1
    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setupVideoPlayer$3()V
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$4(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 241
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method private setupGradient()V
    .locals 12

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 423
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 456
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

    iput v11, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    aput v11, v9, v4

    iget v4, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    aput v4, v9, v3

    new-array v10, v0, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_2

    .line 458
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 460
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_6

    .line 461
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    goto :goto_2

    .line 424
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 425
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v3, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 438
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 439
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v3, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 453
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 465
    :cond_6
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
    .locals 13

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-gtz v3, :cond_2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    :goto_0
    mul-int/lit8 v4, v3, 0x10

    int-to-float v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    const-wide/16 v5, -0x1

    .line 348
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_5

    .line 349
    iget-object v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 350
    iput-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    .line 352
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    iget-object v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    const-string v8, "vthumb://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 353
    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 355
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_5

    .line 358
    :try_start_0
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_4

    .line 359
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .line 361
    :cond_4
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 363
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v8, v7, v9, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    move-wide v10, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v10, v5

    if-gez v0, :cond_6

    .line 368
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 372
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 373
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 377
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 380
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;)V

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    .line 396
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 397
    invoke-virtual {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 400
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void

    .line 405
    :cond_9
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v3, :cond_a

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 406
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 408
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    :cond_a
    if-eqz p1, :cond_b

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    .line 412
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    .line 415
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 418
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 473
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 475
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/view/TextureView;->clearAnimation()V

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 485
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_2

    const-wide/16 p3, 0x1

    .line 486
    invoke-virtual {p1, v1, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(Ljava/lang/String;J)V

    .line 488
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_9

    .line 490
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 493
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_4

    .line 494
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 495
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 500
    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v5}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 501
    iput-boolean v2, v5, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 502
    new-instance v6, Lorg/telegram/ui/Stories/recorder/PreviewView$3;

    invoke-direct {v6, p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 584
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v3, :cond_5

    .line 585
    invoke-virtual {v3}, Landroid/view/TextureView;->clearAnimation()V

    .line 586
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 587
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 588
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 591
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1, v3, v5}, Lorg/telegram/ui/Components/VideoEditTextureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoPlayer;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 592
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 595
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p2, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 597
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    const/16 v0, 0x33

    const/4 v1, -0x2

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 605
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v1, "other"

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 607
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 608
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 609
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-eqz p2, :cond_7

    .line 610
    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v0, v0

    mul-float/2addr p2, v0

    long-to-float p3, p3

    add-float/2addr p2, p3

    float-to-long p3, p2

    :cond_7
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_8

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 615
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 616
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(Ljava/lang/String;J)V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoLeft(F)V

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoRight(F)V

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_9

    if-lez p2, :cond_9

    .line 622
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    :cond_9
    :goto_1
    return-void
.end method

.method private tapTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    .line 1161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    return v1

    .line 1164
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1165
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

    .line 1166
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1168
    :cond_1
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    .line 1170
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1171
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private touchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 970
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 973
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

    .line 977
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v6, v9

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 978
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v6, v9

    div-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 979
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

    .line 980
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

    .line 982
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->x:F

    .line 983
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iput v10, v9, Landroid/graphics/PointF;->y:F

    move-wide v9, v5

    move v5, v8

    .line 985
    :goto_1
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    if-eq v6, v2, :cond_3

    .line 986
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iput v12, v6, Landroid/graphics/PointF;->x:F

    .line 987
    iget v11, v11, Landroid/graphics/PointF;->y:F

    iput v11, v6, Landroid/graphics/PointF;->y:F

    .line 988
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 989
    iput-wide v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    .line 990
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    .line 992
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v2, :cond_4

    return v3

    .line 996
    :cond_4
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_7

    .line 998
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 999
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1000
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1002
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    .line 1003
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v11, v6}, Lorg/telegram/ui/Stories/recorder/PreviewView;->findPartAt(FF)Lorg/telegram/ui/Stories/recorder/IStoryPart;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    .line 1004
    instance-of v11, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    iput-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    if-eqz v11, :cond_6

    .line 1005
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1006
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    check-cast v11, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    .line 1008
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1009
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    .line 1010
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/ButtonBounce;

    if-nez v6, :cond_5

    .line 1012
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 1014
    :cond_5
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 1015
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDragStart()V

    .line 1017
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 1018
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    .line 1020
    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    .line 1022
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget-object v11, v11, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1024
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_1b

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    if-eqz v6, :cond_1b

    .line 1025
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v2

    .line 1026
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v2

    iget v12, v12, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v2

    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/16 v14, 0x9

    const/high16 v15, 0x42b40000    # 90.0f

    if-le v2, v4, :cond_e

    .line 1028
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    cmpl-float v16, v2, v8

    if-eqz v16, :cond_8

    div-float v2, v5, v2

    .line 1030
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v2, v11, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1032
    :cond_8
    iget-wide v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    sub-double v3, v9, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1033
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    add-float/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1034
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v2, :cond_c

    .line 1035
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

    .line 1037
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 1038
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

    .line 1040
    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 1042
    :try_start_0
    invoke-virtual {v0, v14, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_5

    :cond_c
    const/4 v2, 0x1

    .line 1047
    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v4, :cond_d

    .line 1048
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v11, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1050
    :cond_d
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    goto :goto_6

    :cond_e
    move v2, v4

    .line 1052
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v2, :cond_f

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    if-eqz v2, :cond_10

    .line 1053
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v11, v13

    sub-float/2addr v6, v12

    invoke-virtual {v2, v11, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1054
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    add-float/2addr v2, v11

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 1055
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    add-float/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    .line 1057
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

    .line 1058
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

    .line 1060
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 1062
    :cond_11
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 1064
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1065
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1066
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 1067
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v3, v4

    .line 1068
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    if-nez v4, :cond_14

    .line 1069
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x40600000    # 3.5f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_13

    .line 1070
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    invoke-virtual {v4, v3, v6, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1071
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v3, :cond_14

    const/4 v3, 0x1

    .line 1073
    :try_start_1
    invoke-virtual {v0, v14, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1075
    :catch_1
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    .line 1078
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1081
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

    .line 1082
    :goto_8
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    if-eq v3, v4, :cond_16

    .line 1083
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDragTrash(Z)V

    .line 1084
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    :cond_16
    if-eqz v3, :cond_17

    .line 1087
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCx:F

    .line 1088
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCy:F

    .line 1090
    :cond_17
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    if-eqz v3, :cond_1a

    .line 1091
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

    .line 1092
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

    .line 1095
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1096
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1100
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 1101
    :cond_1c
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Ty:F

    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->Tx:F

    .line 1102
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

    .line 1103
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

    .line 1105
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 1107
    :cond_1f
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePartPressed:Z

    .line 1108
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    .line 1109
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

    .line 1110
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    const/4 v1, 0x0

    .line 1111
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    .line 1112
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 1113
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    .line 1115
    :goto_d
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPart:Z

    .line 1116
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    .line 1117
    iput v8, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1120
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1123
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1124
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1125
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 1126
    iput-wide v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    const/4 v1, 0x1

    return v1
.end method

.method private updateAudioPlayer(Z)V
    .locals 8

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 756
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    if-eqz p1, :cond_2

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    long-to-float p1, v0

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 765
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_2
    return-void

    .line 771
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 772
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v4, v5

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v3, v5

    mul-float/2addr v4, v3

    float-to-long v3, v4

    .line 773
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    cmp-long v7, v0, v5

    if-ltz v7, :cond_4

    add-long/2addr v5, v3

    cmp-long v3, v0, v5

    if-gtz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 774
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    sub-long/2addr v0, v4

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v3, v5

    mul-float/2addr v4, v3

    float-to-long v3, v4

    add-long/2addr v0, v3

    .line 775
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v3

    if-eq v3, v2, :cond_5

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 777
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 778
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public additionalTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public applyMatrix()V
    .locals 4

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v1, :cond_3

    .line 924
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 926
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

    .line 927
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

    .line 925
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 930
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 931
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 936
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public deleteCurrentPart()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 837
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

    .line 838
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_2

    .line 839
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

    .line 840
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    sub-float v4, v1, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 841
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 842
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

    .line 843
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

    .line 844
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 845
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 847
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 848
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 849
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

    .line 850
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

    .line 851
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 855
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 856
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_8

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->inTrash:Z

    xor-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    move v4, v2

    .line 858
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 859
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    if-nez v5, :cond_3

    goto/16 :goto_3

    .line 863
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

    .line 868
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

    .line 870
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v7

    goto :goto_2

    :cond_5
    move v7, v1

    .line 872
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpl-float v8, v7, v1

    if-eqz v8, :cond_6

    .line 875
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tempVertices:[F

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v8, v2

    .line 876
    iget v9, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    aput v9, v8, v3

    .line 877
    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 878
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

    .line 880
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashPartIndex:I

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    if-ne v7, v8, :cond_7

    const v7, 0x3e4ccccd    # 0.2f

    .line 881
    invoke-static {v7, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 882
    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCx:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->trashCy:F

    invoke-virtual {p1, v7, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 884
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

    .line 885
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

    .line 886
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1192
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1193
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->activePart:Lorg/telegram/ui/Stories/recorder/IStoryPart;

    instance-of v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1194
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

    .line 1195
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    if-eqz v0, :cond_4

    .line 1198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2

    .line 1203
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDuration()J
    .locals 4

    .line 92
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

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 908
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

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 900
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

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 1

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    const/16 v1, -0x26fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mute(Z)V
    .locals 1

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 792
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

    .line 1183
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    if-eqz v0, :cond_0

    .line 1184
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 1187
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public play(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, -0x26fe

    .line 1245
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    return-void
.end method

.method public release()J
    .locals 5

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 631
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 637
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-wide v3

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 102
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 3

    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 108
    invoke-direct {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 109
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 110
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    return-void

    .line 115
    :cond_0
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_3

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 118
    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez p2, :cond_2

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    goto :goto_1

    :cond_3
    const-wide/16 p3, 0x0

    .line 124
    invoke-direct {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 125
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    .line 128
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 130
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    return-void
.end method

.method public setAllowCropping(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    return-void
.end method

.method public setDraw(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 830
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 693
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    .line 695
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 696
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_1

    .line 698
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    .line 700
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 701
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setOnTapListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    return-void
.end method

.method public setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_0

    .line 247
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 913
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 915
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method public setupAudio(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 196
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 197
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 205
    :cond_0
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 206
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 207
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 210
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 211
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v5, :cond_3

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    iput-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 213
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    iput-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 216
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    goto :goto_1

    .line 218
    :cond_3
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v5, :cond_1

    .line 219
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 224
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_5

    .line 225
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-long v5, v0

    iput-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 227
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    if-eqz p1, :cond_6

    .line 228
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    :goto_2
    const-wide/32 v5, 0x1d4c0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    const-wide/32 v3, 0xe678

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_3
    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    goto :goto_5

    .line 198
    :cond_8
    :goto_4
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 199
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 200
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 201
    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 202
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 203
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 232
    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    return-void
.end method

.method public setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 136
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v2, 0x0

    .line 137
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 142
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v4, :cond_2

    .line 143
    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iget-wide v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    move/from16 v15, p2

    invoke-virtual/range {v4 .. v15}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFZ)V

    .line 145
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 146
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 147
    iput-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 148
    new-instance v4, Lorg/telegram/ui/Stories/recorder/PreviewView$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 182
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 183
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 185
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 186
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    long-to-float v2, v4

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 187
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 188
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 190
    :cond_3
    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    :cond_4
    return-void
.end method

.method public setupParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 8

    if-nez p1, :cond_2

    .line 645
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

    .line 647
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 650
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBounce:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 654
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

    .line 656
    :goto_2
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    .line 657
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    if-nez v4, :cond_4

    goto :goto_3

    .line 661
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

    .line 665
    :cond_5
    iget-object v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 666
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 667
    iput-boolean v5, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 668
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 669
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 670
    invoke-static {v7, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 671
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 672
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->partsBitmap:Ljava/util/HashMap;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 674
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

    .line 675
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move v3, v2

    .line 677
    :goto_5
    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 678
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

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 685
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

    .line 1229
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1231
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1233
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    .line 1234
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 1236
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method public whenError(Ljava/lang/Runnable;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method
