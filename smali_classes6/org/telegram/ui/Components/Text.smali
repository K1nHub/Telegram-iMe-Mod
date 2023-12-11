.class public Lorg/telegram/ui/Components/Text;
.super Ljava/lang/Object;
.source "Text.java"


# instance fields
.field private ellipsizeGradient:Landroid/graphics/LinearGradient;

.field private ellipsizeMatrix:Landroid/graphics/Matrix;

.field private ellipsizePaint:Landroid/graphics/Paint;

.field private ellipsizeWidth:I

.field private layout:Landroid/text/StaticLayout;

.field private left:F

.field private final paint:Landroid/text/TextPaint;

.field private width:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    .line 34
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 35
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 36
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    if-ltz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/Text;->width:F

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    .line 103
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/16 v8, 0xff

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    if-ltz v0, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/Text;->width:F

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    const/4 v2, 0x2

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    .line 109
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    .line 111
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Text;->left:F

    sub-float/2addr v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->ellipsizeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Text;->left:F

    sub-float/2addr v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v1

    const/4 v4, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->left:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/Text;->ellipsizePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget v0, p0, Lorg/telegram/ui/Components/Text;->left:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFIF)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p4, p5, p4

    if-eqz p4, :cond_1

    .line 76
    iget-object p4, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {p4}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int p5, v0

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    iget p4, p0, Lorg/telegram/ui/Components/Text;->left:F

    sub-float/2addr p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p4}, Landroid/text/StaticLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public ellipsize(I)Lorg/telegram/ui/Components/Text;
    .locals 0

    .line 59
    iput p1, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    return-object p0
.end method

.method public getCurrentWidth()F
    .locals 1

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 125
    iget v0, p0, Lorg/telegram/ui/Components/Text;->ellipsizeWidth:I

    if-ltz v0, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/Text;->width:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Text;->width:F

    :goto_0
    return v0
.end method

.method public setColor(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 9

    .line 40
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v3, 0x1869f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    .line 41
    invoke-virtual {v8}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Text;->width:F

    .line 42
    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Text;->layout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/Text;->left:F

    return-void
.end method
