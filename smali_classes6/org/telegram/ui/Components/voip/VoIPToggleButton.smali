.class public Lorg/telegram/ui/Components/voip/VoIPToggleButton;
.super Landroid/widget/FrameLayout;
.source "VoIPToggleButton.java"


# instance fields
.field private animateBackground:Z

.field animateToBackgroundColor:I

.field public animationDelay:I

.field private backgroundCheck1:I

.field private backgroundCheck2:I

.field backgroundColor:I

.field private bitmapPaint:Landroid/graphics/Paint;

.field private checkAnimator:Landroid/animation/ValueAnimator;

.field private checkable:Z

.field private checkableForAccessibility:Z

.field private checked:Z

.field private checkedProgress:F

.field circlePaint:Landroid/graphics/Paint;

.field private crossOffset:F

.field private crossPaint:Landroid/graphics/Paint;

.field private crossProgress:F

.field currentBackgroundColor:I

.field currentIconColor:I

.field currentIconRes:I

.field currentText:Ljava/lang/String;

.field private drawBackground:Z

.field private drawCross:Z

.field icon:[Landroid/graphics/drawable/Drawable;

.field private iconChangeColor:Z

.field private radius:F

.field replaceAnimator:Landroid/animation/ValueAnimator;

.field private replaceColorFrom:I

.field replaceProgress:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field textLayoutContainer:Landroid/widget/FrameLayout;

.field textView:[Landroid/widget/TextView;

.field private xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$RCLsjbmf_OJgI__nx8Ea3S2KiS8(Lorg/telegram/ui/Components/voip/VoIPToggleButton;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->lambda$setData$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udwyyO_gTrOQmpGhLOKXIGvgo34(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->lambda$setChecked$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x42500000    # 52.0f

    .line 83
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 12

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    .line 37
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [Landroid/widget/TextView;

    .line 42
    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->bitmapPaint:Landroid/graphics/Paint;

    .line 87
    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 90
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    .line 91
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 94
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 96
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x1

    .line 97
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 99
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    add-float/2addr v9, p2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/VoIPToggleButton;F)F
    .locals 0

    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)I
    .locals 0

    .line 34
    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)I
    .locals 0

    .line 34
    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    return p0
.end method

.method private synthetic lambda$setChecked$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    .line 420
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    return-void
.end method

.method private synthetic lambda$setData$0(ZLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 331
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    .line 332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    sub-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 378
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 128
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateToBackgroundColor:I

    invoke-static {v4, v5, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v1, v9

    .line 135
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float v11, v1, v9

    .line 136
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    .line 137
    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    if-eqz v3, :cond_1

    .line 138
    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v11, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    if-nez v3, :cond_2

    .line 141
    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v3, v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 144
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    sub-float v4, v10, v1

    float-to-int v4, v4

    sub-float v5, v11, v1

    float-to-int v5, v5

    add-float v6, v10, v1

    float-to-int v6, v6

    add-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-eqz v1, :cond_13

    .line 148
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const/16 v3, 0xff

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v13, 0x2

    if-nez v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    move v1, v12

    .line 211
    :goto_1
    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v13

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v5

    :goto_3
    if-ge v1, v6, :cond_13

    .line 212
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    if-eqz v6, :cond_9

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 214
    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v7, v6, v2

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-nez v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v14, v7, v12

    if-eqz v14, :cond_7

    aget-object v7, v7, v5

    if-eqz v7, :cond_7

    if-nez v1, :cond_6

    sub-float v6, v4, v6

    .line 216
    :cond_6
    invoke-virtual {v8, v6, v6, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 217
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v1

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v6, v14

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 219
    :cond_7
    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v7, :cond_8

    .line 220
    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v14, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    invoke-static {v7, v14, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    .line 221
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v1

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v6, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 222
    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 226
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v6, v1

    aget-object v6, v6, v1

    .line 227
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float v6, v10, v6

    float-to-int v6, v6

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v14, v14, v1

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    div-int/2addr v14, v13

    int-to-float v14, v14

    sub-float v14, v11, v14

    float-to-int v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v15, v15, v1

    .line 228
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    div-int/2addr v15, v13

    int-to-float v15, v15

    add-float/2addr v15, v10

    float-to-int v15, v15

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    add-float/2addr v5, v11

    float-to-int v5, v5

    .line 226
    invoke-virtual {v7, v6, v14, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 150
    :cond_a
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    if-nez v1, :cond_b

    return-void

    .line 154
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v1, :cond_c

    .line 155
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-static {v1, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 156
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 157
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 161
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_d

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v5, :cond_d

    .line 162
    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    invoke-static {v5, v6, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 163
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 168
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const v3, 0x3da3d70a    # 0.08f

    if-eqz v1, :cond_f

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpg-float v6, v5, v4

    if-gez v6, :cond_f

    add-float/2addr v5, v3

    .line 169
    iput v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v5, v4

    if-lez v1, :cond_e

    .line 171
    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    goto :goto_6

    .line 173
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_6

    :cond_f
    if-nez v1, :cond_11

    .line 176
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    .line 178
    iput v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    goto :goto_6

    .line 180
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 183
    :cond_11
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    sub-float v1, v10, v1

    float-to-int v1, v1

    .line 185
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/2addr v2, v13

    int-to-float v2, v2

    sub-float v2, v11, v2

    float-to-int v2, v2

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    .line 187
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v1, v4

    iget v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossOffset:F

    add-float v14, v1, v4

    int-to-float v1, v2

    .line 188
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float v15, v1, v2

    const/4 v1, 0x1

    .line 190
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v14, v1

    const/16 v2, 0x11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v3, v5

    add-float v16, v1, v3

    .line 191
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v17, v15, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 194
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v12

    aget-object v1, v1, v12

    .line 195
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    sub-float v1, v10, v1

    float-to-int v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    sub-float v3, v11, v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v12

    .line 196
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    add-float/2addr v11, v5

    float-to-int v5, v11

    .line 194
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v15, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v17, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    move v3, v15

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 204
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v12

    aget-object v1, v1, v12

    .line 205
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    sub-float v1, v10, v1

    float-to-int v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    sub-float v3, v11, v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v12

    .line 206
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    add-float/2addr v11, v5

    float-to-int v5, v11

    .line 204
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    :goto_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 444
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkableForAccessibility:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 447
    :cond_1
    :goto_0
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 449
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 1

    .line 240
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    .line 241
    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 403
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    return-void
.end method

.method public setCheckableForAccessibility(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkableForAccessibility:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 3

    .line 407
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 410
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    .line 411
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 417
    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    aput v2, p1, p2

    const/4 p2, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    .line 418
    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPToggleButton$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 432
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    .line 433
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setCrossOffset(F)V
    .locals 0

    .line 373
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossOffset:F

    return-void
.end method

.method public setData(IIIFZLjava/lang/String;ZZ)V
    .locals 6

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move p8, v1

    .line 266
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    if-ne v0, p3, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    if-ne p7, v0, :cond_2

    return-void

    .line 270
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-eqz p5, :cond_5

    .line 271
    :cond_3
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p5

    const/16 v0, 0xff

    if-ne p5, v0, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p5

    float-to-double v2, p5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p5, v2, v4

    if-lez p5, :cond_4

    .line 272
    iget p5, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/high16 v0, -0x1000000

    const/high16 v2, 0x41cc0000    # 25.5f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    invoke-static {v0, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p4

    invoke-static {p5, v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 275
    :cond_4
    iget p5, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/4 v0, -0x1

    const/high16 v2, 0x42990000    # 76.5f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    invoke-static {v0, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p4

    invoke-static {p5, v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 280
    :cond_5
    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_6

    .line 281
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_6
    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    const/4 p5, 0x1

    if-eq p4, p3, :cond_7

    move p4, p5

    goto :goto_1

    :cond_7
    move p4, v1

    :goto_1
    iput-boolean p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateBackground:Z

    .line 285
    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-ne p4, p1, :cond_8

    move p4, p5

    goto :goto_2

    :cond_8
    move p4, v1

    :goto_2
    iput-boolean p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz p4, :cond_9

    .line 287
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    .line 289
    :cond_9
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    .line 290
    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    .line 291
    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    .line 292
    iput-object p6, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    .line 293
    iput-boolean p7, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const/4 p7, 0x0

    if-nez p8, :cond_d

    if-eqz p1, :cond_a

    .line 297
    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p4, v1

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p2, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 300
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez p1, :cond_b

    .line 302
    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    .line 304
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    if-eqz p1, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_c
    move p1, p7

    :goto_3
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    .line 306
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    .line 307
    iput p7, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_5

    :cond_d
    if-nez p4, :cond_e

    if-eqz p1, :cond_e

    .line 311
    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p8

    invoke-static {p8, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p4, p5

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, p5

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget-object p8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p2, p8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 314
    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez p1, :cond_f

    .line 315
    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateToBackgroundColor:I

    .line 318
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p5

    if-nez p1, :cond_10

    .line 321
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 323
    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setScaleX(F)V

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, p7}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_4
    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 329
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    .line 330
    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setData(IIILjava/lang/String;ZZ)V
    .locals 9

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 247
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 255
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 256
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public setTextSize(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    int-to-float v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shakeView()V
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method public showText(ZZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 463
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 467
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 468
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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
