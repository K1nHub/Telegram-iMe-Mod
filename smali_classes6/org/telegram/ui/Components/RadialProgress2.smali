.class public Lorg/telegram/ui/Components/RadialProgress2;
.super Ljava/lang/Object;
.source "RadialProgress2.java"


# instance fields
.field private backgroundStroke:I

.field private circleCheckProgress:F

.field private circleColor:I

.field private circleColorKey:Ljava/lang/String;

.field private circleCrossfadeColorKey:Ljava/lang/String;

.field private circleCrossfadeColorProgress:F

.field private circleMiniPaint:Landroid/graphics/Paint;

.field private circlePaint:Landroid/graphics/Paint;

.field private circlePressedColor:I

.field private circlePressedColorKey:Ljava/lang/String;

.field private circleRadius:I

.field private drawBackground:Z

.field private drawMiniIcon:Z

.field private iconColor:I

.field private iconColorKey:Ljava/lang/String;

.field private iconPressedColor:I

.field private iconPressedColorKey:Ljava/lang/String;

.field private isPressed:Z

.field private isPressedMini:Z

.field private maxIconSize:I

.field private mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

.field private miniDrawBitmap:Landroid/graphics/Bitmap;

.field private miniDrawCanvas:Landroid/graphics/Canvas;

.field private miniIconScale:F

.field private miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

.field private miniProgressBackgroundPaint:Landroid/graphics/Paint;

.field private overlayImageAlpha:F

.field private overlayImageView:Lorg/telegram/messenger/ImageReceiver;

.field private overlayPaint:Landroid/graphics/Paint;

.field private overrideAlpha:F

.field public overrideCircleAlpha:F

.field private parent:Landroid/view/View;

.field private progressColor:I

.field private progressRect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    .line 51
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    .line 59
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideCircleAlpha:F

    .line 63
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    .line 68
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    .line 78
    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 79
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    .line 83
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    .line 84
    invoke-virtual {p2, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 86
    new-instance p2, Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V

    .line 89
    new-instance p2, Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setMini(Z)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    const/16 p1, 0x16

    .line 94
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 95
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x64000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private invalidateParent()V
    .locals 7

    const/4 v0, 0x2

    .line 215
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    sub-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    mul-int/2addr v1, v0

    add-int/2addr v6, v1

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 298
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v2

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v2

    cmpl-float v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    .line 302
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v2

    .line 303
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getPreviousIcon()I

    move-result v5

    .line 306
    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->backgroundStroke:I

    const/4 v7, 0x3

    if-eqz v6, :cond_5

    if-ne v2, v7, :cond_3

    .line 308
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v5

    :goto_0
    sub-float v5, v4, v5

    goto :goto_2

    :cond_3
    if-ne v5, v7, :cond_4

    .line 310
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v5

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v4

    goto :goto_2

    :cond_5
    if-eq v2, v7, :cond_6

    const/4 v6, 0x6

    if-eq v2, v6, :cond_6

    const/16 v6, 0xa

    if-eq v2, v6, :cond_6

    const/16 v6, 0x8

    if-eq v2, v6, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-ne v5, v3, :cond_7

    .line 315
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v5

    goto :goto_2

    :cond_7
    if-eq v2, v3, :cond_8

    goto :goto_1

    .line 317
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v5

    goto :goto_0

    .line 320
    :goto_2
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    if-eqz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-nez v6, :cond_b

    .line 321
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 322
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    goto :goto_3

    .line 324
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 326
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 327
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 329
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 332
    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 333
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    goto :goto_4

    .line 335
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 337
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 338
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 339
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorProgress:F

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    invoke-static {v6, v8, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 341
    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 344
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    :goto_5
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    if-eqz v6, :cond_11

    .line 350
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 351
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 352
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:Ljava/lang/String;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    goto :goto_6

    .line 354
    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 355
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    move v6, v7

    .line 357
    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 358
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 360
    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 363
    :cond_11
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 364
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 365
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    goto :goto_7

    .line 367
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 368
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackColor(I)V

    move v6, v7

    .line 370
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    if-eqz v7, :cond_13

    .line 371
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress2;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 373
    :cond_13
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    :goto_8
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    const/4 v8, 0x0

    if-nez v7, :cond_14

    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v7, :cond_15

    :cond_14
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v7, :cond_15

    .line 377
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 380
    :cond_15
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 381
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v7, v10

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideCircleAlpha:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 383
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 389
    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v7, :cond_16

    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v7, :cond_17

    :cond_16
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v7, :cond_17

    .line 390
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 391
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    goto :goto_9

    .line 393
    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    float-to-int v7, v7

    .line 394
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    float-to-int v9, v9

    .line 397
    :goto_9
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v10

    const/4 v12, 0x2

    if-eqz v10, :cond_19

    .line 398
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v10

    .line 399
    iget-object v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v14, v10

    mul-float/2addr v14, v5

    iget v15, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    cmpl-float v13, v10, v4

    if-ltz v13, :cond_18

    const/4 v6, -0x1

    goto :goto_a

    .line 405
    :cond_18
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v13

    .line 406
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 407
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 408
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    rsub-int v11, v13, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    rsub-int v8, v14, 0xff

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    rsub-int v3, v15, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v10

    float-to-int v3, v3

    rsub-int v4, v6, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    add-int/2addr v6, v4

    add-int/2addr v13, v11

    add-int/2addr v14, v8

    add-int/2addr v15, v3

    .line 414
    invoke-static {v6, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v8, 0x1

    .line 416
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/MediaActionDrawable;->setColor(I)V

    .line 418
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    sub-int v6, v7, v4

    int-to-float v6, v6

    sub-int v10, v9, v4

    int-to-float v10, v10

    mul-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    mul-int/2addr v4, v12

    int-to-float v4, v4

    invoke-virtual {v3, v6, v10, v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_b

    :cond_19
    const/4 v8, 0x1

    .line 422
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    const/high16 v4, -0x80000000

    if-eqz v3, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v6, :cond_1a

    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_1a

    .line 423
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const v6, 0x3dcccccd    # 0.1f

    .line 424
    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    sub-float v11, v10, v11

    mul-float/2addr v11, v6

    sub-float v6, v10, v11

    .line 425
    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    int-to-float v11, v7

    int-to-float v13, v9

    invoke-virtual {v10, v6, v6, v11, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_c

    :cond_1a
    move v3, v4

    :goto_c
    const/4 v6, 0x0

    if-eqz v8, :cond_1f

    .line 427
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    if-eqz v8, :cond_1f

    .line 428
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v8, :cond_1b

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v8, :cond_1c

    :cond_1b
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_1c

    int-to-float v2, v7

    int-to-float v10, v9

    .line 429
    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v10, v11, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_1c
    const/4 v8, 0x4

    if-ne v2, v8, :cond_1d

    cmpl-float v2, v5, v6

    if-eqz v2, :cond_1f

    .line 432
    :cond_1d
    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->backgroundStroke:I

    if-eqz v2, :cond_1e

    int-to-float v2, v7

    int-to-float v8, v9

    .line 433
    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    const/high16 v11, 0x40600000    # 3.5f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_1e
    int-to-float v2, v7

    int-to-float v8, v9

    .line 435
    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 440
    :cond_1f
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 441
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    mul-float/2addr v5, v8

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    mul-float/2addr v5, v8

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 443
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v2, :cond_21

    :cond_20
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_21

    .line 444
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 445
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v7

    int-to-float v8, v9

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5, v8, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 447
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    int-to-float v2, v7

    int-to-float v5, v9

    .line 448
    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    int-to-float v8, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 451
    :cond_22
    :goto_e
    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 452
    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->maxIconSize:I

    if-lez v5, :cond_23

    if-le v2, v5, :cond_23

    move v2, v5

    .line 455
    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    sub-int v8, v7, v2

    sub-int v10, v9, v2

    add-int/2addr v7, v2

    add-int/2addr v9, v2

    invoke-virtual {v5, v8, v10, v7, v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBounds(IIII)V

    .line 456
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->setHasOverlayImage(Z)V

    .line 457
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v2, :cond_24

    goto :goto_f

    .line 464
    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->setOverrideAlpha(F)V

    .line 465
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_10

    .line 458
    :cond_25
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_26

    .line 459
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_10

    .line 461
    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_10
    if-eq v3, v4, :cond_27

    .line 467
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_27

    .line 468
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 471
    :cond_27
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-nez v2, :cond_28

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 476
    :cond_28
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpg-float v2, v2, v3

    const/16 v3, 0x12

    if-gez v2, :cond_29

    const/16 v2, 0x14

    .line 479
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/16 v7, 0x10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 480
    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    const/4 v12, 0x0

    goto :goto_11

    :cond_29
    const/16 v2, 0x16

    .line 484
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 485
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    .line 487
    :goto_11
    div-int/lit8 v7, v2, 0x2

    .line 490
    iget-boolean v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v9, :cond_2c

    .line 491
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2a

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_2a
    iget-object v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    :goto_12
    cmpl-float v6, v9, v6

    if-nez v6, :cond_2b

    const/4 v6, 0x0

    .line 493
    iput-boolean v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    :cond_2b
    move v10, v9

    goto :goto_13

    :cond_2c
    const/high16 v10, 0x3f800000    # 1.0f

    .line 499
    :goto_13
    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2d

    add-int/2addr v2, v3

    add-int/2addr v2, v12

    .line 500
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    iget v11, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    mul-float/2addr v9, v11

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3, v2, v9, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_14

    .line 502
    :cond_2d
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc

    .line 503
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 506
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_2e

    .line 507
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v6, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 511
    :cond_2e
    iget v2, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 513
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    invoke-virtual {v1, v3, v3, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_15

    :cond_2f
    move v2, v4

    .line 516
    :goto_15
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/4 v6, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget v9, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v9, v11, v9

    mul-float/2addr v6, v9

    add-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress2;->circleMiniPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 517
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v3, :cond_30

    .line 518
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    sub-float v6, v5, v6

    float-to-int v6, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    sub-float v9, v8, v9

    float-to-int v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    add-float/2addr v5, v11

    float-to-int v5, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v3, v6, v9, v5, v7}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBounds(IIII)V

    .line 519
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_30
    if-eq v2, v4, :cond_31

    .line 522
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_31
    return-void
.end method

.method public getCircleColorKey()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    return v0
.end method

.method public getMiniIcon()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result v0

    return v0
.end method

.method public getOverrideAlpha()F
    .locals 1

    .line 294
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getProgressRect()Landroid/graphics/RectF;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    return v0
.end method

.method public initMiniIcons()V
    .locals 3

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/16 v0, 0x30

    .line 265
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    .line 266
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniDrawCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public setAsMini()V
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setMini(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    return-void
.end method

.method public setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V

    return-void
.end method

.method public setCircleCrossfadeColor(Ljava/lang/String;FF)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorKey:Ljava/lang/String;

    .line 170
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCrossfadeColorProgress:F

    .line 171
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleCheckProgress:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 172
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .line 109
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 151
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColor:I

    .line 152
    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColor:I

    .line 153
    iput p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColor:I

    .line 154
    iput p4, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColor:I

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:Ljava/lang/String;

    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleColorKey:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->circlePressedColorKey:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconColorKey:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lorg/telegram/ui/Components/RadialProgress2;->iconPressedColorKey:Ljava/lang/String;

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawBackground:Z

    return-void
.end method

.method public setIcon(IZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    if-nez p3, :cond_1

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    :goto_0
    return-void
.end method

.method public setImageOverlay(Ljava/lang/String;)V
    .locals 7

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "%d_%d"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    return-void
.end method

.method public setImageOverlay(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)V
    .locals 7

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array v2, p2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgress2;->circleRadius:I

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string p2, "%d_%d"

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxIconSize(I)V
    .locals 0

    .line 537
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->maxIconSize:I

    return-void
.end method

.method public setMiniIcon(IZZ)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 247
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCurrentIcon()I

    move-result p2

    if-ne p1, p2, :cond_1

    return-void

    .line 250
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/MediaActionDrawable;->setIcon(IZ)Z

    if-ne p1, v0, :cond_3

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MediaActionDrawable;->getTransitionProgress()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz p1, :cond_4

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgress2;->initMiniIcons()V

    :cond_4
    if-nez p3, :cond_5

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 258
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    :goto_2
    return-void
.end method

.method public setMiniIconScale(F)V
    .locals 0

    .line 240
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniIconScale:F

    return-void
.end method

.method public setMiniProgressBackgroundColor(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOverlayImageAlpha(F)V
    .locals 0

    .line 541
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overlayImageAlpha:F

    return-void
.end method

.method public setOverrideAlpha(F)V
    .locals 0

    .line 290
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->overrideAlpha:F

    return-void
.end method

.method public setPressed(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 282
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressedMini:Z

    goto :goto_0

    .line 284
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->isPressed:Z

    .line 286
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress2;->invalidateParent()V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->drawMiniIcon:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->miniMediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->setProgress(FZ)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->mediaActionDrawable:Lorg/telegram/ui/Components/MediaActionDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/MediaActionDrawable;->setProgress(FZ)V

    :goto_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 195
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressColor:I

    return-void
.end method

.method public setProgressRect(FFFF)V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgressRect(IIII)V
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress2;->progressRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method
