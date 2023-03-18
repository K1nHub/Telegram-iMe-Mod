.class public Lorg/telegram/ui/Components/LinkPath;
.super Landroid/graphics/Path;
.source "LinkPath.java"


# static fields
.field private static roundedEffect:Landroid/graphics/CornerPathEffect;

.field private static roundedEffectRadius:I


# instance fields
.field private allowReset:Z

.field private baselineShift:I

.field public centerX:F

.field public centerY:F

.field private currentLayout:Landroid/text/Layout;

.field private currentLine:I

.field private lastTop:F

.field private lineHeight:I

.field private useRoundRect:Z

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkPath;->allowReset:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkPath;->allowReset:Z

    .line 51
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkPath;->useRoundRect:Z

    return-void
.end method

.method public static getRadius()I
    .locals 1

    const/4 v0, 0x5

    .line 33
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public static getRoundedEffect()Landroid/graphics/CornerPathEffect;
    .locals 2

    .line 39
    sget-object v0, Lorg/telegram/ui/Components/LinkPath;->roundedEffect:Landroid/graphics/CornerPathEffect;

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/Components/LinkPath;->roundedEffectRadius:I

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 40
    :cond_0
    new-instance v0, Landroid/graphics/CornerPathEffect;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/LinkPath;->roundedEffectRadius:I

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Components/LinkPath;->roundedEffect:Landroid/graphics/CornerPathEffect;

    .line 42
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/LinkPath;->roundedEffect:Landroid/graphics/CornerPathEffect;

    return-object v0
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void

    .line 103
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/Components/LinkPath;->yOffset:F

    add-float v2, p2, v1

    add-float/2addr v1, p4

    .line 105
    iget v3, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 106
    iput v2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    goto :goto_0

    :cond_1
    cmpl-float v3, v3, v2

    if-eqz v3, :cond_2

    .line 108
    iput v2, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 109
    iget v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    .line 111
    :cond_2
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    iget v4, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpl-float v4, p1, v0

    if-gez v4, :cond_d

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_3

    cmpg-float v5, p3, v3

    if-gtz v5, :cond_3

    goto/16 :goto_5

    :cond_3
    cmpl-float v5, p3, v0

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, p3

    :goto_1
    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, p1

    .line 122
    :goto_2
    iget v4, p0, Lorg/telegram/ui/Components/LinkPath;->xOffset:F

    add-float/2addr v3, v4

    add-float/2addr v4, v0

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    const/4 v6, 0x0

    if-lt v0, v5, :cond_7

    sub-float v0, v1, v2

    .line 128
    iget v5, p0, Lorg/telegram/ui/Components/LinkPath;->lineHeight:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->yOffset:F

    iget-object v5, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    iget v5, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v5

    sub-float v6, v1, v5

    :cond_6
    add-float v1, v0, v6

    goto :goto_3

    .line 132
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v6

    :cond_8
    sub-float/2addr v1, v6

    .line 134
    :cond_9
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/LinkPath;->baselineShift:I

    if-gez v0, :cond_a

    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_4

    :cond_a
    if-lez v0, :cond_b

    int-to-float v0, v0

    add-float/2addr v2, v0

    :cond_b
    :goto_4
    move v5, v1

    add-float v0, v4, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 139
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->centerX:F

    add-float v0, v5, v2

    div-float/2addr v0, v1

    .line 140
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->centerY:F

    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkPath;->useRoundRect:Z

    if-eqz v0, :cond_c

    const v0, 0x81e0

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 146
    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v4, v0

    move-object v0, p0

    move v1, v3

    move v3, v4

    move v4, v5

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_5

    :cond_c
    move-object v0, p0

    move v1, v3

    move v3, v4

    move v4, v5

    move-object v5, p5

    .line 148
    invoke-super/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_d
    :goto_5
    return-void
.end method

.method public reset()V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkPath;->allowReset:Z

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public setAllowReset(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkPath;->allowReset:Z

    return-void
.end method

.method public setBaselineShift(I)V
    .locals 0

    .line 93
    iput p1, p0, Lorg/telegram/ui/Components/LinkPath;->baselineShift:I

    return-void
.end method

.method public setCurrentLayout(Landroid/text/Layout;IF)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IFF)V

    return-void
.end method

.method public setCurrentLayout(Landroid/text/Layout;IFF)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 63
    iput p3, p0, Lorg/telegram/ui/Components/LinkPath;->xOffset:F

    .line 64
    iput p4, p0, Lorg/telegram/ui/Components/LinkPath;->yOffset:F

    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkPath;->currentLayout:Landroid/text/Layout;

    .line 68
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/LinkPath;->currentLine:I

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/LinkPath;->lastTop:F

    .line 70
    iput p3, p0, Lorg/telegram/ui/Components/LinkPath;->xOffset:F

    .line 71
    iput p4, p0, Lorg/telegram/ui/Components/LinkPath;->yOffset:F

    .line 72
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 75
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p3

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Lorg/telegram/ui/Components/LinkPath;->lineHeight:I

    :cond_1
    return-void
.end method
