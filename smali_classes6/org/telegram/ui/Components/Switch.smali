.class public Lorg/telegram/ui/Components/Switch;
.super Landroid/view/View;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private attachedToWindow:Z

.field private bitmapsCreated:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private colorSet:I

.field private drawIconType:I

.field private drawRipple:Z

.field private iconAnimator:Landroid/animation/ObjectAnimator;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private iconProgress:F

.field private isChecked:Z

.field private lastIconColor:I

.field private onCheckedChangeListener:Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;

.field private overlayBitmap:[Landroid/graphics/Bitmap;

.field private overlayCanvas:[Landroid/graphics/Canvas;

.field private overlayCx:F

.field private overlayCy:F

.field private overlayEraserPaint:Landroid/graphics/Paint;

.field private overlayMaskBitmap:Landroid/graphics/Bitmap;

.field private overlayMaskCanvas:Landroid/graphics/Canvas;

.field private overlayMaskPaint:Landroid/graphics/Paint;

.field private overlayRad:F

.field private overrideColorProgress:I

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressedState:[I

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private ripplePaint:Landroid/graphics/Paint;

.field private thumbCheckedColorKey:I

.field private thumbColorKey:I

.field private trackCheckedColorKey:I

.field private trackColorKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    .line 76
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    .line 77
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    .line 78
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iput p1, p0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    const/4 p1, 0x2

    new-array p3, p1, [I

    .line 87
    fill-array-data p3, :array_0

    iput-object p3, p0, Lorg/telegram/ui/Components/Switch;->pressedState:[I

    .line 115
    iput-object p2, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 116
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    .line 118
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    .line 119
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    .line 120
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object p2, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 122
    iget-object p2, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    invoke-virtual {p0, p3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Switch;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/Switch;->ripplePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Switch;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Switch;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private animateIcon(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "iconProgress"

    .line 265
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Switch$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Switch$3;-><init>(Lorg/telegram/ui/Components/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 253
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Switch$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Switch$2;-><init>(Lorg/telegram/ui/Components/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private cancelIconAnimator()V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public getIconProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 152
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 138
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 278
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1f

    .line 392
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    .line 393
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    const/4 v7, 0x7

    .line 396
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v3

    const/16 v9, 0x11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v4

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/4 v15, 0x1

    if-ge v11, v4, :cond_d

    if-ne v11, v15, :cond_1

    .line 418
    iget v13, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-nez v13, :cond_1

    move v7, v6

    goto/16 :goto_6

    :cond_1
    if-nez v11, :cond_2

    move-object v13, v1

    goto :goto_1

    .line 421
    :cond_2
    iget-object v13, v0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    aget-object v13, v13, v10

    :goto_1
    if-ne v11, v15, :cond_3

    .line 424
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 425
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v14, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v7

    move/from16 v22, v10

    move/from16 v23, v14

    move-object/from16 v24, v6

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 427
    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    iget v7, v0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v10

    sub-float/2addr v7, v10

    iget v10, v0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v14

    sub-float/2addr v10, v14

    iget v14, v0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    iget-object v12, v0, Lorg/telegram/ui/Components/Switch;->overlayEraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v10, v14, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 429
    :cond_3
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-ne v6, v15, :cond_6

    if-nez v11, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    if-ne v6, v4, :cond_7

    if-nez v11, :cond_4

    goto :goto_2

    .line 434
    :cond_7
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    move/from16 v16, v6

    .line 437
    :goto_3
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v6

    .line 438
    iget v7, v0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v7

    if-nez v11, :cond_a

    .line 439
    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_a

    iget v12, v0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    iget-boolean v14, v0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v14, :cond_8

    move v14, v7

    goto :goto_4

    :cond_8
    move v14, v6

    :goto_4
    if-eq v12, v14, :cond_a

    .line 440
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v14, :cond_9

    move v14, v7

    goto :goto_5

    :cond_9
    move v14, v6

    :goto_5
    iput v14, v0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 443
    :cond_a
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 444
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 445
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 446
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 447
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 448
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    .line 449
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 450
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v1, v4

    sub-int/2addr v10, v4

    int-to-float v4, v10

    mul-float v4, v4, v16

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v12

    sub-int/2addr v14, v12

    int-to-float v10, v14

    mul-float v10, v10, v16

    add-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v10, v15

    sub-int v12, v22, v15

    int-to-float v12, v12

    mul-float v12, v12, v16

    add-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v12, v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    mul-float v6, v6, v16

    add-float/2addr v12, v6

    float-to-int v6, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v6

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    or-int/2addr v1, v4

    and-int/lit16 v4, v10, 0xff

    or-int/2addr v1, v4

    .line 457
    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 458
    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v3

    add-int v6, v3, v2

    int-to-float v6, v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v10, v5

    invoke-virtual {v1, v4, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 461
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v1, v6, v4, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float v1, v8

    int-to-float v4, v9

    const/high16 v6, 0x41200000    # 10.0f

    .line 462
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v1, v4, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez v11, :cond_b

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_b

    const/16 v4, 0x12

    .line 465
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v8, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v9, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v1, v6, v10, v12, v4}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    .line 466
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    if-ne v11, v1, :cond_c

    .line 468
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v13, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_c
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move v6, v7

    const/4 v4, 0x2

    const/4 v7, 0x7

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v6, 0x0

    .line 471
    iget v1, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 472
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_e
    move-object/from16 v3, p1

    :goto_7
    const/4 v1, 0x0

    const/4 v4, 0x2

    :goto_8
    if-ge v1, v4, :cond_1c

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    .line 476
    iget v5, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-nez v5, :cond_f

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x7

    const/16 v18, 0x8

    goto/16 :goto_11

    :cond_f
    if-nez v1, :cond_10

    move-object v5, v3

    goto :goto_9

    .line 479
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    :goto_9
    if-ne v1, v4, :cond_11

    .line 482
    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    .line 484
    :goto_a
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-ne v6, v4, :cond_14

    if-nez v1, :cond_13

    :cond_12
    const/4 v6, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_14
    const/4 v4, 0x2

    if-ne v6, v4, :cond_15

    if-nez v1, :cond_12

    goto :goto_b

    .line 489
    :cond_15
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    .line 492
    :goto_c
    iget v4, v0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v4

    .line 493
    iget v10, v0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    iget-object v11, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v10

    .line 494
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 495
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 496
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 497
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 498
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 499
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    .line 500
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 501
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v7, v11

    sub-int/2addr v12, v11

    int-to-float v11, v12

    mul-float/2addr v11, v6

    add-float/2addr v7, v11

    float-to-int v7, v7

    int-to-float v11, v13

    sub-int/2addr v14, v13

    int-to-float v12, v14

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v12, v15

    sub-int v13, v18, v15

    int-to-float v13, v13

    mul-float/2addr v13, v6

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v13, v4

    sub-int/2addr v10, v4

    int-to-float v4, v10

    mul-float/2addr v4, v6

    add-float/2addr v13, v4

    float-to-int v4, v13

    .line 507
    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    and-int/lit16 v7, v11, 0xff

    const/16 v18, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    and-int/lit16 v7, v12, 0xff

    or-int/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    int-to-float v6, v9

    .line 509
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-nez v1, :cond_1a

    .line 512
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_16

    .line 513
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/4 v6, 0x2

    div-int/2addr v4, v6

    sub-int v4, v8, v4

    iget-object v10, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/2addr v10, v6

    sub-int v10, v9, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/2addr v11, v6

    add-int/2addr v11, v8

    iget-object v12, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    div-int/2addr v12, v6

    add-int/2addr v12, v9

    invoke-virtual {v7, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 514
    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_e

    .line 515
    :cond_16
    iget v7, v0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_17

    const v7, 0x412ccccd    # 10.8f

    .line 516
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3fa66666    # 1.3f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v4, v7

    float-to-int v8, v4

    const/high16 v4, 0x41080000    # 8.5f

    .line 517
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v7, v9

    sub-float/2addr v4, v7

    sub-float/2addr v6, v4

    float-to-int v9, v6

    const v4, 0x40933333    # 4.6f

    .line 518
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v8

    const/high16 v6, 0x41180000    # 9.5f

    .line 519
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    int-to-float v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x2

    .line 520
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v4

    .line 521
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v6

    const/high16 v7, 0x40f00000    # 7.5f

    .line 523
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v12, v8

    const v13, 0x40accccd    # 5.4f

    .line 524
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v13, v9

    const/4 v14, 0x7

    .line 525
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v12

    .line 526
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    add-int v14, v13, v19

    int-to-float v2, v12

    sub-int/2addr v4, v12

    int-to-float v4, v4

    .line 528
    iget v12, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v4, v12

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    mul-float/2addr v6, v12

    add-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v6, v15

    sub-int/2addr v10, v15

    int-to-float v10, v10

    mul-float/2addr v10, v12

    add-float/2addr v6, v10

    float-to-int v6, v6

    int-to-float v10, v14

    sub-int/2addr v11, v14

    int-to-float v11, v11

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v2

    int-to-float v12, v4

    int-to-float v13, v6

    int-to-float v14, v10

    .line 532
    iget-object v15, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 534
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v8

    const/high16 v4, 0x41480000    # 12.5f

    .line 535
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v9

    const/16 v17, 0x7

    .line 536
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 537
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int v7, v4, v7

    int-to-float v11, v2

    int-to-float v12, v4

    int-to-float v13, v6

    int-to-float v14, v7

    .line 538
    iget-object v15, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_17
    const/4 v2, 0x2

    const/16 v17, 0x7

    if-eq v7, v2, :cond_19

    .line 539
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_18

    goto :goto_d

    :cond_18
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_f

    .line 540
    :cond_19
    :goto_d
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    const/high16 v10, 0x437f0000    # 255.0f

    iget v11, v0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v13, v16, v11

    mul-float/2addr v13, v10

    float-to-int v10, v13

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x5

    .line 541
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int v7, v9, v7

    int-to-float v14, v7

    iget-object v15, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move-object v10, v5

    move v11, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 543
    iget v10, v0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    mul-float/2addr v10, v7

    invoke-virtual {v5, v10, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v7, 0x4

    .line 544
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v8

    int-to-float v13, v7

    iget-object v15, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move-object v10, v5

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 545
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v2, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x7

    :goto_f
    const/4 v4, 0x1

    :goto_10
    if-ne v1, v4, :cond_1b

    .line 549
    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_1b
    const/4 v7, 0x0

    :goto_11
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1c
    const/4 v7, 0x0

    .line 552
    iget v1, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-eqz v1, :cond_1d

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 559
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 561
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 562
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public setChecked(ZIZ)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eq p1, v0, :cond_2

    .line 298
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    .line 299
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateToCheckedState(Z)V

    goto :goto_1

    .line 302
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelCheckAnimator()V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->setProgress(F)V

    .line 305
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->onCheckedChangeListener:Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 306
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;->onCheckedChanged(Lorg/telegram/ui/Components/Switch;Z)V

    .line 309
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(IZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 293
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 246
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    .line 247
    iput p2, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    .line 248
    iput p3, p0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    .line 249
    iput p4, p0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    return-void
.end method

.method public setDrawIconType(I)V
    .locals 0

    .line 170
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    return-void
.end method

.method public setDrawIconType(IZ)V
    .locals 1

    .line 325
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    if-eq v0, p1, :cond_3

    .line 326
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    .line 327
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 328
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateIcon(Z)V

    goto :goto_2

    .line 330
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelIconAnimator()V

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 331
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Switch;->setIconProgress(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDrawRipple(Z)V
    .locals 10

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->drawRipple:Z

    if-ne p1, v1, :cond_0

    goto/16 :goto_4

    .line 177
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->drawRipple:Z

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    .line 180
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->ripplePaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    .line 181
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/16 v5, 0x17

    if-lt v0, v5, :cond_1

    move-object v6, v1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v6, Lorg/telegram/ui/Components/Switch$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Switch$1;-><init>(Lorg/telegram/ui/Components/Switch;)V

    .line 209
    :goto_0
    new-instance v7, Landroid/content/res/ColorStateList;

    new-array v8, v4, [[I

    sget-object v9, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v9, v8, v3

    new-array v9, v4, [I

    aput v3, v9, v3

    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 213
    new-instance v8, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v8, v7, v1, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-lt v0, v5, :cond_2

    .line 215
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 217
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/RippleDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    if-ne v6, v5, :cond_5

    :cond_4
    if-nez v1, :cond_8

    iget v6, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    if-eq v6, v4, :cond_8

    :cond_5
    if-eqz v1, :cond_6

    .line 220
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    goto :goto_1

    :cond_6
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 221
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v1

    .line 222
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v4, [[I

    sget-object v8, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v8, v7, v3

    new-array v8, v4, [I

    aput v1, v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 227
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v1, :cond_7

    move v4, v5

    :cond_7
    iput v4, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    :cond_8
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    if-eqz p1, :cond_a

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 232
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->pressedState:[I

    goto :goto_3

    :cond_b
    sget-object p1, Landroid/util/StateSet;->NOTHING:[I

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_4
    return-void
.end method

.method public setIcon(I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 316
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 321
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIconProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 143
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->onCheckedChangeListener:Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 6

    .line 345
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 350
    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    new-array v1, v0, [Landroid/graphics/Canvas;

    .line 351
    iput-object v1, p0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 353
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    .line 357
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    .line 359
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayEraserPaint:Landroid/graphics/Paint;

    .line 360
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 362
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    .line 363
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 364
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    return-void

    .line 369
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    if-nez v0, :cond_3

    return-void

    .line 372
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 p1, 0x0

    .line 373
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    .line 374
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    .line 375
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverrideColorProgress(FFF)V
    .locals 0

    .line 380
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    .line 381
    iput p2, p0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    .line 382
    iput p3, p0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
