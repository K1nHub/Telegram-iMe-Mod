.class public Lorg/telegram/ui/Components/Paint/Input;
.super Ljava/lang/Object;
.source "Input.java"


# static fields
.field private static final PRESSURE_INTERPOLATOR:Lorg/telegram/ui/Components/CubicBezierInterpolator;


# instance fields
.field private arrowAnimator:Landroid/animation/ValueAnimator;

.field private beganDrawing:Z

.field private canFill:Z

.field private clearBuffer:Z

.field private final detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

.field private drawingStart:J

.field private fillAnimator:Landroid/animation/ValueAnimator;

.field private final fillWithCurrentBrush:Ljava/lang/Runnable;

.field private hasMoved:Z

.field private ignore:Z

.field private invertMatrix:Landroid/graphics/Matrix;

.field private isFirst:Z

.field private lastAngle:F

.field private lastAngleSet:Z

.field private lastLocation:Lorg/telegram/ui/Components/Paint/Point;

.field private lastRemainder:D

.field private lastThickLocation:Lorg/telegram/ui/Components/Paint/Point;

.field private lastVelocityUpdate:J

.field private points:[Lorg/telegram/ui/Components/Paint/Point;

.field private pointsCount:I

.field private realPointsCount:I

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

.field private tempPoint:[F

.field private thicknessCount:D

.field private thicknessSum:D

.field private velocity:F


# direct methods
.method public static synthetic $r8$lambda$1I7SX3G2UyqSlIJurEFHQnK3eQw(Lorg/telegram/ui/Components/Paint/Input;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Input;->lambda$process$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$3RzfVku5ljmTUvajXMh8Z0P55_M(Lorg/telegram/ui/Components/Paint/Input;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Input;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$DboLw1Z6ivvl3oc2s5drystShO8(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Point;FF[FD[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Paint/Input;->lambda$process$2(Lorg/telegram/ui/Components/Paint/Point;FF[FD[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JP1sZ-NXOKxfLlRuqppwiVTcw2Q(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Input;->lambda$paintPath$5(Lorg/telegram/ui/Components/Paint/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQanLVGjmSSqrwGkv0oVYh3YmMc(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Input;->setShapeHelper(Lorg/telegram/ui/Components/Paint/Shape;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oAxzfu3ZxWGyW3ucr-X0hSmaJB4(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Input;->lambda$paintPath$4(Lorg/telegram/ui/Components/Paint/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vh-3cNrGveHihDbfi_QieMkuBgc(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Brush;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Input;->lambda$fill$0(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Brush;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 22
    new-instance v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v9, Lorg/telegram/ui/Components/Paint/Input;->PRESSURE_INTERPOLATOR:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    .line 38
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 60
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Input;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->fillWithCurrentBrush:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/Paint/ShapeDetector;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Paint/Input;)V

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;-><init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/Input;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Input;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Input;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private fill(Lorg/telegram/ui/Components/Paint/Brush;ZLjava/lang/Runnable;)V
    .locals 12

    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p1

    .line 85
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Brush$Neon;

    if-eqz v0, :cond_3

    .line 87
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    :cond_3
    move-object v4, p1

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStroke()V

    .line 92
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    .line 93
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    .line 95
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    if-eqz p2, :cond_4

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->onBeganDrawing()V

    .line 100
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v1, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v0, v2

    const/4 v2, 0x0

    .line 103
    invoke-static {v1, v0, v2, v2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v5, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v3, v5

    iget-wide v5, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v1, v5

    iget v5, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 104
    invoke-static {v3, v1, v5, v2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v5, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v3, v5

    iget-wide v5, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v1, v5

    iget v5, p1, Lorg/telegram/ui/Components/Size;->height:F

    .line 107
    invoke-static {v3, v1, v2, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v5, v2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v3, v5

    iget-wide v5, v2, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v2, v5

    iget v5, p1, Lorg/telegram/ui/Components/Size;->width:F

    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    .line 108
    invoke-static {v3, v2, v5, p1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    .line 106
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 101
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const v0, 0x3f570a3d    # 0.84f

    div-float v3, p1, v0

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 113
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 114
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    .line 116
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 118
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    .line 120
    :cond_6
    new-instance v2, Lorg/telegram/ui/Components/Paint/Point;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 122
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    .line 123
    new-instance v0, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2, v4, v3}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Brush;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Input$1;

    move-object v0, v7

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Input$1;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Point;FLorg/telegram/ui/Components/Paint/Brush;ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_7

    .line 152
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$fill$0(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Brush;FLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 124
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 125
    new-instance v0, Lorg/telegram/ui/Components/Paint/Path;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/telegram/ui/Components/Paint/Point;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .line 126
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->isEraser()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result p1

    :goto_0
    mul-float/2addr p4, p3

    .line 127
    invoke-virtual {v0, p1, p4, p2}, Lorg/telegram/ui/Components/Paint/Path;->setup(IFLorg/telegram/ui/Components/Paint/Brush;)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, v1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 155
    invoke-direct {p0, v0, v1, v0}, Lorg/telegram/ui/Components/Paint/Input;->fill(Lorg/telegram/ui/Components/Paint/Brush;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$paintPath$4(Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 2

    .line 481
    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    return-void
.end method

.method private synthetic lambda$paintPath$5(Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 1

    .line 481
    new-instance v0, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$process$2(Lorg/telegram/ui/Components/Paint/Point;FF[FD[ZLandroid/animation/ValueAnimator;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 309
    invoke-virtual/range {p8 .. p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 311
    new-instance v3, Lorg/telegram/ui/Components/Paint/Path;

    const/4 v4, 0x2

    new-array v5, v4, [Lorg/telegram/ui/Components/Paint/Point;

    new-instance v13, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v6, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    move/from16 v8, p2

    float-to-double v14, v8

    const-wide v16, 0x4002d97c7f3321d2L    # 2.356194490192345

    sub-double v18, v14, v16

    .line 312
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v10, p3

    float-to-double v11, v10

    mul-double/2addr v8, v11

    const/16 v20, 0x0

    aget v10, p4, v20

    move-object/from16 v21, v5

    float-to-double v4, v10

    mul-double/2addr v8, v4

    add-double v7, v6, v8

    iget-wide v4, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    const-wide v22, 0x40041b2f769cf0e0L    # 2.5132741228718345

    sub-double v24, v14, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    aget v6, p4, v20

    move-wide/from16 p2, v11

    float-to-double v11, v6

    mul-double/2addr v9, v11

    add-double/2addr v9, v4

    move-object v6, v13

    move-wide/from16 v4, p2

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    aput-object v13, v21, v20

    new-instance v6, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    .line 313
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    float-to-double v11, v2

    mul-double/2addr v9, v11

    add-double v27, v7, v9

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    mul-double/2addr v9, v11

    add-double v29, v7, v9

    const/16 v33, 0x1

    move-object/from16 v26, v6

    move-wide/from16 v31, p5

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDDZ)V

    const/4 v7, 0x1

    aput-object v6, v21, v7

    move-object/from16 v6, v21

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .line 311
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    .line 315
    new-instance v3, Lorg/telegram/ui/Components/Paint/Path;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/telegram/ui/Components/Paint/Point;

    new-instance v8, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v9, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double v16, v14, v16

    .line 316
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v4

    aget v13, p4, v20

    move-object/from16 p3, v8

    float-to-double v7, v13

    mul-double v18, v18, v7

    add-double v25, v9, v18

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    aget v13, p4, v20

    move/from16 p8, v2

    move-object/from16 v18, v3

    float-to-double v2, v13

    mul-double/2addr v9, v2

    add-double v27, v7, v9

    move-object/from16 v24, p3

    move-wide/from16 v29, p5

    invoke-direct/range {v24 .. v30}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    aput-object p3, v6, v20

    new-instance v2, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    .line 317
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    mul-double/2addr v9, v11

    add-double v30, v7, v9

    iget-wide v7, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    mul-double/2addr v9, v11

    add-double v32, v7, v9

    const/16 v36, 0x1

    move-object/from16 v29, v2

    move-wide/from16 v34, p5

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDDZ)V

    const/4 v1, 0x1

    aput-object v2, v6, v1

    move-object/from16 v2, v18

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .line 315
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    .line 320
    aget-boolean v2, p7, v20

    if-nez v2, :cond_0

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v2, p8, v2

    if-lez v2, :cond_0

    .line 321
    aput-boolean v1, p7, v20

    .line 322
    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 325
    :cond_0
    aput p8, p4, v20

    return-void
.end method

.method private synthetic lambda$process$3()V
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->selectBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

    :cond_0
    return-void
.end method

.method private lerpAngle(FFF)F
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    float-to-double v0, v0

    float-to-double v2, p1

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    float-to-double v6, p3

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr v6, p1

    add-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private paintPath(Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 4

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Path;->setup(IFLorg/telegram/ui/Components/Paint/Brush;)V

    .line 475
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 476
    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    .line 479
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    iput-wide v0, p1, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    new-instance v2, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Lorg/telegram/ui/Components/Paint/Painting;->paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    .line 482
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    return-void
.end method

.method private setShapeHelper(Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    .line 49
    iget-wide v1, p0, Lorg/telegram/ui/Components/Paint/Input;->thicknessSum:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    float-to-double v3, v0

    .line 50
    iget-wide v5, p0, Lorg/telegram/ui/Components/Paint/Input;->thicknessCount:D

    div-double/2addr v1, v5

    mul-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    .line 52
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 53
    iget v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->setHelperShape(Lorg/telegram/ui/Components/Paint/Shape;)V

    return-void
.end method

.method private smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;FF)Lorg/telegram/ui/Components/Paint/Point;
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 457
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v5

    mul-float/2addr v12, v3

    float-to-double v12, v12

    mul-float v14, v3, v3

    float-to-double v14, v14

    mul-float/2addr v5, v5

    .line 464
    iget-wide v8, v0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    float-to-double v4, v5

    mul-double/2addr v8, v4

    move-wide/from16 v18, v12

    iget-wide v12, v2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v16

    move-wide/from16 v20, v10

    float-to-double v10, v3

    mul-double/2addr v12, v10

    mul-double/2addr v12, v6

    add-double/2addr v8, v12

    iget-wide v12, v1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v12, v14

    add-double v23, v8, v12

    .line 465
    iget-wide v8, v0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v8, v4

    iget-wide v3, v2, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double v3, v3, v16

    mul-double/2addr v3, v10

    mul-double/2addr v3, v6

    add-double/2addr v8, v3

    iget-wide v3, v1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v3, v14

    add-double v25, v8, v3

    .line 466
    iget-wide v3, v0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double v3, v3, v20

    iget-wide v5, v2, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double v5, v5, v18

    add-double/2addr v3, v5

    iget-wide v0, v1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double/2addr v0, v14

    add-double/2addr v3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v0

    move-object/from16 v2, p0

    .line 467
    iget v5, v2, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    move/from16 v6, p5

    invoke-static {v7, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double v27, v3, v0

    .line 469
    new-instance v0, Lorg/telegram/ui/Components/Paint/Point;

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v0
.end method

.method private smoothenAndPaintPoints(ZF)V
    .locals 18

    move-object/from16 v6, p0

    .line 397
    iget v0, v6, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-le v0, v7, :cond_6

    .line 398
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 400
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    aget-object v1, v0, v8

    const/4 v10, 0x1

    .line 401
    aget-object v11, v0, v10

    .line 402
    aget-object v0, v0, v7

    if-eqz v0, :cond_5

    if-eqz v11, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 408
    invoke-virtual {v11, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v12

    .line 409
    invoke-virtual {v0, v11, v2, v3}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v13

    .line 412
    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v0

    const-wide/high16 v1, 0x4048000000000000L    # 48.0

    int-to-float v3, v10

    div-float/2addr v0, v3

    float-to-double v3, v0

    .line 413
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v14, 0x4038000000000000L    # 24.0

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v14, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v14

    div-float v15, v1, v2

    move/from16 v16, v0

    move v5, v8

    :goto_0
    if-ge v5, v14, :cond_2

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v11

    move/from16 v4, v16

    move/from16 v17, v5

    move/from16 v5, p2

    .line 419
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Input;->smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;FF)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v0

    .line 420
    iget-boolean v1, v6, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    if-eqz v1, :cond_1

    .line 421
    iput-boolean v10, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .line 422
    iput-boolean v8, v6, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    .line 424
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 425
    iget-wide v1, v6, Lorg/telegram/ui/Components/Paint/Input;->thicknessSum:D

    iget-wide v3, v0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v1, v3

    iput-wide v1, v6, Lorg/telegram/ui/Components/Paint/Input;->thicknessSum:D

    .line 426
    iget-wide v0, v6, Lorg/telegram/ui/Components/Paint/Input;->thicknessCount:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, v6, Lorg/telegram/ui/Components/Paint/Input;->thicknessCount:D

    add-float v16, v16, v15

    add-int/lit8 v5, v17, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 431
    iput-boolean v10, v13, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .line 433
    :cond_3
    invoke-virtual {v9, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    .line 436
    invoke-virtual {v9, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 438
    new-instance v1, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .line 439
    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    .line 441
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    invoke-static {v0, v10, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_4

    .line 444
    iput v8, v6, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto :goto_2

    .line 446
    :cond_4
    iput v7, v6, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    .line 449
    :cond_6
    new-array v1, v0, [Lorg/telegram/ui/Components/Paint/Point;

    .line 450
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    invoke-static {v2, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    new-instance v0, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    .line 452
    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/Runnable;)V
    .locals 9

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 159
    new-instance v8, Lorg/telegram/ui/Components/Paint/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    iput-object v8, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 161
    new-instance v0, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/Brush$Eraser;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/Components/Paint/Input;->fill(Lorg/telegram/ui/Components/Paint/Brush;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public ignoreOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    return-void
.end method

.method public process(Landroid/view/MotionEvent;F)V
    .locals 20

    move-object/from16 v9, p0

    .line 172
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->fillAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1d

    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 175
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 177
    iget-object v2, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 179
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    const/4 v10, 0x0

    aput v1, v3, v10

    const/4 v11, 0x1

    .line 180
    aput v2, v3, v11

    .line 181
    iget-object v1, v9, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v9, Lorg/telegram/ui/Components/Paint/Input;->lastVelocityUpdate:J

    sub-long/2addr v1, v3

    .line 184
    iget v3, v9, Lorg/telegram/ui/Components/Paint/Input;->velocity:F

    long-to-float v1, v1

    const/high16 v2, 0x42fa0000    # 125.0f

    div-float v2, v1, v2

    sub-float/2addr v3, v2

    const v2, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    iput v3, v9, Lorg/telegram/ui/Components/Paint/Input;->velocity:F

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v9, Lorg/telegram/ui/Components/Paint/Input;->lastVelocityUpdate:J

    .line 189
    iget v3, v9, Lorg/telegram/ui/Components/Paint/Input;->velocity:F

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    const v3, 0x3dcccccd    # 0.1f

    .line 191
    sget-object v5, Lorg/telegram/ui/Components/Paint/Input;->PRESSURE_INTERPOLATOR:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    move v5, v11

    goto :goto_0

    :cond_1
    move v5, v10

    .line 194
    :goto_0
    iget-object v6, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    sub-float/2addr v3, v4

    .line 195
    iget-object v6, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/Brush;->getSmoothThicknessRate()F

    move-result v6

    iget v12, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    int-to-float v12, v12

    const/high16 v13, 0x41800000    # 16.0f

    div-float/2addr v12, v13

    invoke-static {v12, v8, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v12

    invoke-static {v4, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    .line 197
    :cond_2
    new-instance v6, Lorg/telegram/ui/Components/Paint/Point;

    iget-object v12, v9, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aget v13, v12, v10

    float-to-double v13, v13

    aget v12, v12, v11

    move/from16 p1, v5

    float-to-double v4, v12

    float-to-double v2, v3

    move-object v12, v6

    move-wide v15, v4

    move-wide/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    const/4 v2, 0x3

    const/4 v12, 0x0

    if-eqz v0, :cond_e

    const-wide/16 v13, 0x0

    if-eq v0, v11, :cond_5

    if-eq v0, v7, :cond_e

    if-eq v0, v2, :cond_3

    goto/16 :goto_7

    .line 362
    :cond_3
    iget-boolean v0, v9, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    if-eqz v0, :cond_4

    .line 363
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    return-void

    .line 366
    :cond_4
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 367
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->clear()V

    .line 368
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Paint/Painting;->setHelperShape(Lorg/telegram/ui/Components/Paint/Shape;)V

    .line 369
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->fillWithCurrentBrush:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 370
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStroke()V

    .line 371
    iput v10, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    .line 372
    iput v10, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    .line 373
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    .line 374
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    .line 375
    iput-wide v13, v9, Lorg/telegram/ui/Components/Paint/Input;->thicknessSum:D

    iput-wide v13, v9, Lorg/telegram/ui/Components/Paint/Input;->thicknessCount:D

    .line 377
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

    if-eqz v0, :cond_1d

    .line 378
    iget-object v1, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->selectBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 379
    iput-object v12, v9, Lorg/telegram/ui/Components/Paint/Input;->switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

    goto/16 :goto_7

    .line 275
    :cond_5
    iget-boolean v0, v9, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    if-eqz v0, :cond_6

    .line 276
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    return-void

    .line 279
    :cond_6
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 280
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->clear()V

    .line 281
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->fillWithCurrentBrush:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->applyHelperShape()Z

    move-result v0

    if-nez v0, :cond_d

    .line 285
    iget-boolean v0, v9, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v0, :cond_8

    .line 286
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    iput-boolean v11, v6, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    .line 288
    new-instance v0, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Paint/Path;-><init>(Lorg/telegram/ui/Components/Paint/Point;)V

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    .line 290
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Input;->reset()V

    goto/16 :goto_2

    .line 291
    :cond_8
    iget v0, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    if-lez v0, :cond_b

    .line 292
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->getSmoothThicknessRate()F

    move-result v0

    invoke-direct {v9, v11, v0}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(ZF)V

    .line 294
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    .line 295
    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Arrow;

    if-eqz v0, :cond_b

    .line 296
    iget v3, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngle:F

    .line 297
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    iget v1, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    sub-int/2addr v1, v11

    aget-object v2, v0, v1

    .line 298
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->lastThickLocation:Lorg/telegram/ui/Components/Paint/Point;

    if-nez v0, :cond_9

    iget-wide v0, v6, Lorg/telegram/ui/Components/Paint/Point;->z:D

    goto :goto_1

    :cond_9
    iget-wide v0, v0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    :goto_1
    move-wide v5, v0

    .line 299
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v0

    double-to-float v1, v5

    mul-float/2addr v0, v1

    const/high16 v1, 0x40900000    # 4.5f

    mul-float v4, v0, v1

    .line 302
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 303
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    new-array v8, v11, [F

    new-array v15, v11, [Z

    new-array v0, v7, [F

    .line 307
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    .line 308
    new-instance v1, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda0;

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-wide/from16 v18, v5

    move-object v5, v8

    move-object v14, v7

    move-wide/from16 v6, v18

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Point;FF[FD[Z)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 327
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Input$2;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Components/Paint/Input$2;-><init>(Lorg/telegram/ui/Components/Paint/Input;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 337
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->arrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v10

    goto :goto_3

    :cond_b
    :goto_2
    move v0, v11

    :goto_3
    if-eqz v0, :cond_d

    .line 342
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->isEraser()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    :cond_c
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda2;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/Paint/Input$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Input;)V

    invoke-virtual {v0, v12, v1, v11, v2}, Lorg/telegram/ui/Components/Paint/Painting;->commitPath(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    .line 352
    :cond_d
    iput v10, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    .line 353
    iput v10, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    .line 354
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    .line 355
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    const-wide/16 v0, 0x0

    .line 356
    iput-wide v0, v9, Lorg/telegram/ui/Components/Paint/Input;->thicknessSum:D

    iput-wide v0, v9, Lorg/telegram/ui/Components/Paint/Input;->thicknessCount:D

    .line 358
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-boolean v1, v9, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->onFinishedDrawing(Z)V

    goto/16 :goto_7

    .line 202
    :cond_e
    iget-boolean v0, v9, Lorg/telegram/ui/Components/Paint/Input;->ignore:Z

    if-eqz v0, :cond_f

    return-void

    .line 205
    :cond_f
    iget-boolean v0, v9, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    if-nez v0, :cond_10

    .line 206
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    .line 207
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    .line 208
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    .line 210
    iput-object v6, v9, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lorg/telegram/ui/Components/Paint/Input;->drawingStart:J

    .line 213
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    aput-object v6, v0, v10

    .line 214
    iput v11, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    .line 215
    iput v11, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    .line 216
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    .line 218
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    .line 219
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 220
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->fillWithCurrentBrush:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    .line 222
    :cond_10
    iget-object v0, v9, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    .line 223
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, p2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_11

    return-void

    .line 226
    :cond_11
    iget-boolean v3, v9, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    const/4 v4, 0x6

    if-eqz v3, :cond_13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, p2

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_12

    iget v3, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    const/4 v5, 0x4

    if-le v3, v5, :cond_13

    .line 227
    :cond_12
    iput-boolean v10, v9, Lorg/telegram/ui/Components/Paint/Input;->canFill:Z

    .line 228
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->fillWithCurrentBrush:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 231
    :cond_13
    iget-boolean v3, v9, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v3, :cond_14

    .line 232
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->onBeganDrawing()V

    .line 233
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-eqz p1, :cond_14

    .line 235
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    if-eqz v3, :cond_14

    .line 236
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->switchedBrushByStylusFrom:Lorg/telegram/ui/Components/Paint/Brush;

    .line 237
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    sget-object v5, Lorg/telegram/ui/Components/Paint/Brush;->BRUSHES_LIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Brush;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Paint/RenderView;->selectBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    .line 241
    :cond_14
    iget-object v3, v9, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    iget v5, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    aput-object v6, v3, v5

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v7, v9, Lorg/telegram/ui/Components/Paint/Input;->drawingStart:J

    sub-long/2addr v13, v7

    const-wide/16 v7, 0xbb8

    cmp-long v5, v13, v7

    if-lez v5, :cond_15

    .line 243
    iget-object v4, v9, Lorg/telegram/ui/Components/Paint/Input;->detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->clear()V

    .line 244
    iget-object v4, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v4

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/Paint/Painting;->setHelperShape(Lorg/telegram/ui/Components/Paint/Shape;)V

    goto :goto_5

    .line 245
    :cond_15
    iget-object v5, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    if-nez v5, :cond_16

    iget-object v5, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;

    if-eqz v5, :cond_18

    .line 246
    :cond_16
    iget-object v12, v9, Lorg/telegram/ui/Components/Paint/Input;->detector:Lorg/telegram/ui/Components/Paint/ShapeDetector;

    iget-wide v13, v6, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v7, v6, Lorg/telegram/ui/Components/Paint/Point;->y:D

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p2

    cmpl-float v4, v0, v4

    if-lez v4, :cond_17

    move/from16 v17, v11

    goto :goto_4

    :cond_17
    move/from16 v17, v10

    :goto_4
    move-wide v15, v7

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->append(DDZ)V

    .line 248
    :cond_18
    :goto_5
    iget v4, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    add-int/2addr v4, v11

    iput v4, v9, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    .line 249
    iget v5, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    add-int/2addr v5, v11

    iput v5, v9, Lorg/telegram/ui/Components/Paint/Input;->realPointsCount:I

    if-ne v4, v2, :cond_1b

    .line 252
    iget-object v2, v9, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget-wide v4, v4, Lorg/telegram/ui/Components/Paint/Point;->y:D

    aget-object v7, v2, v11

    iget-wide v7, v7, Lorg/telegram/ui/Components/Paint/Point;->y:D

    sub-double/2addr v4, v7

    aget-object v3, v2, v3

    iget-wide v7, v3, Lorg/telegram/ui/Components/Paint/Point;->x:D

    aget-object v2, v2, v11

    iget-wide v2, v2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    sub-double/2addr v7, v2

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 253
    iget-boolean v3, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    if-nez v3, :cond_19

    .line 254
    iput v2, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngle:F

    .line 255
    iput-boolean v11, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngleSet:Z

    goto :goto_6

    :cond_19
    const/16 v3, 0x10

    .line 257
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, p2

    div-float v3, v0, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1a

    .line 259
    iget v4, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngle:F

    invoke-direct {v9, v4, v2, v3}, Lorg/telegram/ui/Components/Paint/Input;->lerpAngle(FFF)F

    move-result v2

    iput v2, v9, Lorg/telegram/ui/Components/Paint/Input;->lastAngle:F

    .line 262
    :cond_1a
    :goto_6
    iget-object v2, v9, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Brush;->getSmoothThicknessRate()F

    move-result v2

    invoke-direct {v9, v10, v2}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(ZF)V

    .line 265
    :cond_1b
    iput-object v6, v9, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    const/16 v2, 0x8

    .line 266
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    .line 267
    iput-object v6, v9, Lorg/telegram/ui/Components/Paint/Input;->lastThickLocation:Lorg/telegram/ui/Components/Paint/Point;

    .line 270
    :cond_1c
    iget v0, v9, Lorg/telegram/ui/Components/Paint/Input;->velocity:F

    const/high16 v2, 0x42960000    # 75.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Components/Paint/Input;->velocity:F

    :cond_1d
    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method
