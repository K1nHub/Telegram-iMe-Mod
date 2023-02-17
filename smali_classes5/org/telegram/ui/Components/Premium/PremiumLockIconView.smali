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

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 66
    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 39
    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    .line 40
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 41
    sget p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p3, :cond_0

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_premium_lock2:I

    goto :goto_0

    :cond_0
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    sget p3, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p2, p3, :cond_1

    .line 43
    new-instance p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    .line 44
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    .line 45
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-boolean p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    const/4 p1, 0x4

    .line 46
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    const/4 p1, 0x2

    .line 47
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p1, 0x3dcccccd    # 0.1f

    .line 48
    iput p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    .line 49
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    :cond_1
    return-void
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;)I
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0xa

    if-ge v3, v8, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    int-to-float v10, v3

    mul-float v10, v10, v2

    float-to-int v10, v10

    int-to-float v11, v9

    mul-float v11, v11, v0

    float-to-int v11, v11

    .line 174
    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 175
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    const/16 v12, 0xc8

    if-le v11, v12, :cond_1

    .line 176
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 177
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    add-int/2addr v6, v11

    .line 178
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xff

    .line 186
    div-int/2addr v5, v4

    div-int/2addr v6, v4

    div-int/2addr v7, v4

    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private updateGradient()V
    .locals 13

    .line 190
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorFloat:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 194
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
    mul-float v2, v2, v3

    aput v2, v0, v1

    const/4 v2, 0x2

    .line 195
    aget v3, v0, v2

    const v4, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 196
    aput v4, v0, v2

    .line 198
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 200
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 201
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v0, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 203
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color1:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    if-eq v4, v3, :cond_4

    .line 204
    :cond_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    if-eqz v4, :cond_3

    .line 205
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    .line 206
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    .line 207
    iput v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 209
    :cond_3
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    .line 210
    new-instance v4, Landroid/graphics/LinearGradient;

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

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->color2:I

    aput v3, v10, v1

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shader:Landroid/graphics/Shader;

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 212
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 110
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne v0, v2, :cond_3

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 114
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

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/view/View;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    .line 129
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    .line 131
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_6

    .line 132
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const v1, 0x3dda740e

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 137
    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->shaderCrossfadeProgress:F

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->oldShaderPaint:Landroid/graphics/Paint;

    .line 140
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 143
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 71
    iget p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget p2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne p1, p2, :cond_0

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 73
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
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

    .line 75
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

    .line 76
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->starParticles:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
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

    .line 82
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    :goto_0
    return-void
.end method

.method public play(I)V
    .locals 3

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/4 v1, 0x0

    .line 230
    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 232
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

    .line 224
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    return v0
.end method

.method public resetAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->colorRetrieved:Z

    .line 88
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    if-eq v0, p1, :cond_1

    .line 89
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->currentColor:I

    .line 90
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->updateGradient()V

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    .line 154
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->type:I

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_REACTIONS:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 243
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

    .line 218
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->waitingImage:Z

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->wasDrawn:Z

    .line 220
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
