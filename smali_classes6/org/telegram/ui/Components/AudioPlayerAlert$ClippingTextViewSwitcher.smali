.class public abstract Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
.super Landroid/widget/FrameLayout;
.source "AudioPlayerAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClippingTextViewSwitcher"
.end annotation


# instance fields
.field private activeIndex:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final clipProgress:[F

.field private final erasePaint:Landroid/graphics/Paint;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private gradientShader:Landroid/graphics/LinearGradient;

.field private final gradientSize:I

.field private final rectF:Landroid/graphics/RectF;

.field private stableOffest:I

.field private final textViews:[Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$IMnqVwlAKnLlxMDWRSAvrlYilZw(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->lambda$setText$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uypV70PpZItoDyZwLUYJDehlWNc(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->lambda$setText$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 2641
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/widget/TextView;

    .line 2626
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    new-array v0, p1, [F

    .line 2627
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    const/16 v0, 0x18

    .line 2628
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    const/4 v0, -0x1

    .line 2637
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 2638
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p1, :cond_1

    .line 2643
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->createTextView()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v1

    if-ne v1, v2, :cond_0

    .line 2645
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2646
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2648
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/4 v3, -0x2

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2650
    :cond_1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    .line 2651
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    .line 2652
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2653
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    .line 2654
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;)[Landroid/widget/TextView;
    .locals 0

    .line 2624
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$setText$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2761
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 2762
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setText$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    .line 2770
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected abstract createTextView()Landroid/widget/TextView;
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 2666
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    move-object/from16 v9, p2

    if-ne v9, v3, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v4

    .line 2669
    :goto_0
    iget v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-lez v3, :cond_4

    iget v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2670
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 2671
    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    cmpl-float v5, v1, v3

    if-nez v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    cmpl-float v5, v3, v1

    if-lez v5, :cond_2

    .line 2676
    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v1, v12, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 2678
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v3, v12, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    if-eqz v4, :cond_3

    .line 2681
    iget v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-ne v10, v1, :cond_3

    .line 2682
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2683
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 2684
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2685
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    move v13, v4

    goto :goto_2

    :cond_4
    move v13, v2

    .line 2688
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v1, v1, v10

    cmpl-float v1, v1, v12

    if-gtz v1, :cond_6

    if-eqz v13, :cond_5

    goto :goto_3

    .line 2706
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    goto :goto_4

    .line 2689
    :cond_6
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2690
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v14, v1

    int-to-float v15, v2

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v14

    move v5, v15

    .line 2691
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 2692
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 2693
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v1, v1, v10

    sub-float/2addr v11, v1

    mul-float v2, v14, v11

    .line 2694
    iget v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    int-to-float v1, v1

    add-float v10, v2, v1

    .line 2695
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2696
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    .line 2697
    iget-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    cmpl-float v1, v14, v10

    if-lez v1, :cond_7

    const/4 v3, 0x0

    .line 2699
    iget-object v6, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v4, v14

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v13, :cond_8

    .line 2702
    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->rectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2704
    :cond_8
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v1, v9

    :goto_4
    return v1
.end method

.method public getNextTextView()Landroid/widget/TextView;
    .locals 2

    .line 2790
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 2

    .line 2786
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 2659
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2660
    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientSize:I

    int-to-float v1, p2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientShader:Landroid/graphics/LinearGradient;

    .line 2661
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 2712
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 13

    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2718
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2721
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 2725
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 2726
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, p2

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    .line 2728
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 2731
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2733
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, -0x1

    .line 2734
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->stableOffest:I

    .line 2737
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    if-nez v0, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, p2

    .line 2739
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    .line 2741
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_6

    .line 2742
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2744
    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2745
    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2752
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    .line 2754
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x2

    new-array v4, p1, [F

    .line 2758
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v5, v5, v0

    aput v5, v4, p2

    const/high16 v5, 0x3f400000    # 0.75f

    aput v5, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    .line 2759
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2760
    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v7, p1, [F

    .line 2765
    iget-object v8, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->clipProgress:[F

    aget v8, v8, v2

    aput v8, v7, p2

    const/4 v8, 0x0

    aput v8, v7, v3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v9, 0x64

    .line 2766
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2767
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2768
    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;I)V

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2773
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v0, v5, v0

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    aput v8, v6, p2

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x4b

    .line 2774
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v8, 0x96

    .line 2775
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2777
    iget-object v10, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    aget-object v2, v10, v2

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v3, [F

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, p2

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2778
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2779
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2781
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, p2

    aput-object v7, v6, v3

    aput-object v0, v6, p1

    aput-object v2, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2782
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 2719
    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->textViews:[Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->activeIndex:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
