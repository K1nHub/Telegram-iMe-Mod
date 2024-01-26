.class public Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;
.super Landroid/text/style/ReplacementSpan;
.source "VoIPEllipsizeSpan.java"


# instance fields
.field private final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private final parents:[Landroid/view/View;


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 10

    .line 23
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 19
    new-instance v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v1, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fe570a3d70a3d71L    # 0.67

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v9, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 24
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->parents:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x4

    .line 35
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p5, p2

    int-to-float p2, p7

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    const-wide/16 p6, 0xfa

    rem-long/2addr p4, p6

    const-wide/16 v0, 0x1f4

    add-long/2addr p4, v0

    const/4 p2, 0x0

    move p8, p2

    :goto_0
    const/4 v0, 0x3

    if-ge p8, v0, :cond_1

    int-to-long v1, p8

    mul-long/2addr v1, p6

    add-long/2addr v1, p4

    const-wide/16 v3, 0x2ee

    .line 38
    rem-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x4426c000    # 667.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3ed9999a    # 0.425f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    .line 42
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    .line 44
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v3, v1, v3

    const v5, 0x3f133333    # 0.575f

    div-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 46
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const v3, 0x3fd56042    # 1.667f

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 47
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, p3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {p1, v1, v0, v2, p9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPEllipsizeSpan;->parents:[Landroid/view/View;

    array-length p3, p1

    :goto_2
    if-ge p2, p3, :cond_2

    aget-object p4, p1, p2

    .line 51
    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const/16 p1, 0x14

    .line 29
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1
.end method
