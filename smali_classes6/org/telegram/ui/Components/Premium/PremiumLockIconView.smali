.class public Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
.super Landroid/widget/ImageView;
.source "PremiumLockIconView.java"


# static fields
.field public static TYPE_REACTIONS:I = 0x0

.field public static TYPE_STICKERS_PREMIUM_LOCKED:I = 0x1


# instance fields
.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field color1:I

.field color2:I

.field private colorFloat:[F

.field colorRetrieved:Z

.field currentColor:I

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private locked:Z

.field oldShaderPaint:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field shader:Landroid/graphics/Shader;

.field shaderCrossfadeProgress:F

.field starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private final type:I

.field waitingImage:Z

.field wasDrawn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 40
    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    .line 41
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 42
    sget p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p3, :cond_0

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_premium_lock2:I

    goto :goto_0

    :cond_0
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    sget p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p3, :cond_1

    .line 44
    new-instance p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    .line 45
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    .line 46
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-boolean p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    const/4 p1, 0x4

    .line 47
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    const/4 p1, 0x2

    .line 48
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p1, 0x3dcccccd    # 0.1f

    .line 49
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    .line 50
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    :cond_1
    return-void
.end method

.method private updateGradient()V
    .locals 13

    .line 168
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->locked:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x2

    .line 173
    aget v3, v0, v2

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 174
    aput v4, v0, v2

    .line 176
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 178
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 179
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v0, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color1:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    if-eq v3, v4, :cond_4

    .line 182
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    .line 184
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 185
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 187
    :cond_3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    .line 188
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    int-to-float v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v2, [I

    const/4 v2, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color1:I

    aput v0, v10, v2

    iput v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    aput v4, v10, v1

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 190
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 112
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne v0, v2, :cond_4

    .line 113
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 116
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 122
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 132
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_5

    .line 134
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 136
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_7

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const v1, 0x3dda740e

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 142
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    .line 145
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 148
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 73
    iget p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget p2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p1, p2, :cond_0

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 75
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    const v3, 0x40b66666    # 5.7f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    :goto_0
    return-void
.end method

.method public play(I)V
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 208
    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 212
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public ready()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    return v0
.end method

.method public resetAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    .line 90
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eq v0, p1, :cond_1

    .line 91
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    .line 92
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    .line 97
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    .line 159
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    .line 222
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 223
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_mini_stickerstar:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setWaitingImage()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    .line 198
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
