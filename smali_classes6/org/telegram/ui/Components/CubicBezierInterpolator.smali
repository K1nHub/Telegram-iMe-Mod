.class public Lorg/telegram/ui/Components/CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;


# instance fields
.field protected a:Landroid/graphics/PointF;

.field protected b:Landroid/graphics/PointF;

.field protected c:Landroid/graphics/PointF;

.field protected end:Landroid/graphics/PointF;

.field protected start:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 13
    new-instance v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    const-wide v3, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 14
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 15
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v2, 0x3fcd70a3d70a3d71L    # 0.23

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fd47ae147ae147bL    # 0.32

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 16
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 17
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v4, 0x0

    const-wide v6, 0x3fe28f5c28f5c28fL    # 0.58

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 18
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v11, 0x3fd5c28f5c28f5c3L    # 0.34

    const-wide v13, 0x3ff8f5c28f5c28f6L    # 1.56

    const-wide v15, 0x3fe47ae147ae147bL    # 0.64

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const-string v1, "M 0,0 C 0.05, 0, 0.133333, 0.06, 0.166666, 0.4 C 0.208333, 0.82, 0.25, 1, 1, 1"

    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    double-to-float p1, p1

    double-to-float p2, p3

    double-to-float p3, p5

    double-to-float p4, p7

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    .line 27
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 30
    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    .line 34
    iput-object p2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endX value must be in the range [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startX value must be in the range [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBezierCoordinateX(F)F
    .locals 6

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 76
    iget-object v4, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v5, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    sub-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 78
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method private getXDerivate(F)F
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected getBezierCoordinateY(F)F
    .locals 6

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 52
    iget-object v4, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v5, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v3

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    sub-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 54
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method public getInterpolation(F)F
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getXForTime(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getBezierCoordinateY(F)F

    move-result p1

    return p1
.end method

.method protected getXForTime(F)F
    .locals 7

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 61
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getBezierCoordinateX(F)F

    move-result v2

    sub-float/2addr v2, p1

    .line 62
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getXDerivate(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
