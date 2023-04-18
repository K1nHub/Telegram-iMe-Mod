.class public Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;
.super Landroid/view/ViewGroup;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineLoadingTextView"
.end annotation


# static fields
.field public static final paddingHorizontal:I


# instance fields
.field private final fromTextView:Landroid/widget/TextView;

.field private final gradientWidth:F

.field private final inPath:Landroid/graphics/Path;

.field private loadedAnimator:Landroid/animation/ValueAnimator;

.field private final loadingAnimator:Landroid/animation/ValueAnimator;

.field private final loadingPaint:Landroid/graphics/Paint;

.field private final loadingPath:Landroid/graphics/Path;

.field public loadingT:F

.field private final rect:Landroid/graphics/RectF;

.field private final shadePath:Landroid/graphics/Path;

.field public showLoadingText:Z

.field private final start:J

.field private final tempPath:Landroid/graphics/Path;

.field private final toTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$9CBhOvynm_RWklJ2yhP25v_Jtm8(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->lambda$loaded$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dDAaBpbt4wI-xie-RqQQNRM0bOQ(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 1630
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1644
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1634
    iput-boolean v3, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->showLoadingText:Z

    .line 1641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->start:J

    const/4 v4, 0x0

    .line 1739
    iput v4, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    const/4 v4, 0x0

    .line 1740
    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    .line 1796
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    .line 1797
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->tempPath:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPath:Landroid/graphics/Path;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->shadePath:Landroid/graphics/Path;

    .line 1801
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x43af0000    # 350.0f

    .line 1802
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v10, v6

    iput v10, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->gradientWidth:F

    .line 1646
    sget v6, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1647
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1648
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1650
    new-instance v6, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$1;

    invoke-direct {v6, v0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Landroid/content/Context;)V

    iput-object v6, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    move/from16 v8, p3

    int-to-float v8, v8

    .line 1656
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1657
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v9, p2

    .line 1658
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 1660
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1661
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1662
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1663
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v15, 0x2

    .line 1664
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1665
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1667
    new-instance v6, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$2;

    invoke-direct {v6, v0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Landroid/content/Context;)V

    iput-object v6, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    .line 1673
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1674
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1675
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 1676
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1677
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1678
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1679
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1680
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "dialogBackground"

    .line 1682
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "dialogBackgroundGray"

    .line 1683
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 1684
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v6, 0x3

    new-array v12, v6, [I

    aput v1, v12, v7

    aput v2, v12, v3

    aput v1, v12, v15

    new-array v13, v6, [F

    fill-array-data v13, :array_0

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1685
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-array v1, v15, [F

    .line 1687
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingAnimator:Landroid/animation/ValueAnimator;

    .line 1688
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide v2, 0x7fffffffffffffffL

    .line 1689
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1690
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1000(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)Landroid/widget/TextView;
    .locals 0

    .line 1616
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$loaded$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1760
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    .line 1761
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->updateWidth()V

    .line 1762
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1763
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->onLoadAnimation(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1688
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private updateWidth()V
    .locals 5

    .line 1719
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1720
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1721
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1723
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1726
    :cond_0
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v0, :cond_2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1727
    :cond_2
    :goto_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1728
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    if-eqz v3, :cond_3

    .line 1732
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loaded(Ljava/lang/CharSequence;)V
    .locals 3

    const-wide/16 v0, 0x15e

    const/4 v2, 0x0

    .line 1743
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;JLjava/lang/Runnable;)V

    return-void
.end method

.method public loaded(Ljava/lang/CharSequence;JLjava/lang/Runnable;)V
    .locals 1

    .line 1752
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1755
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1757
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 1758
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    .line 1759
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1765
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$3;

    invoke-direct {v0, p0, p4}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$3;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1772
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1773
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1774
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1806
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 1808
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    div-float v1, v0, v3

    sub-float v4, v0, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    div-float v1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    div-float v3, v7, v3

    .line 1809
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float v5, v3, v4

    sub-float v6, v0, v1

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    .line 1811
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v5, v7, v2

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    add-float/2addr v6, v5

    .line 1812
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1810
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1814
    iget v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    mul-float/2addr v4, v3

    .line 1815
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1816
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1819
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1821
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v2, v8, v2

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1822
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->gradientWidth:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->start:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->gradientWidth:F

    mul-float/2addr v2, v3

    rem-float/2addr v2, v3

    sub-float v10, v1, v2

    .line 1823
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->shadePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1824
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->shadePath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1826
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1827
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v2, v0, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1828
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1829
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    neg-float v1, v10

    .line 1830
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1831
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->shadePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v1, v10, v2, v3}, Landroid/graphics/Path;->offset(FFLandroid/graphics/Path;)V

    .line 1832
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->tempPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1833
    invoke-virtual {p1, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1834
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1836
    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->showLoadingText:Z

    const/16 v3, 0x1f

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1838
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v2, v0, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1839
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1840
    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1841
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1842
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 1843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1844
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1848
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1849
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->inPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1850
    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1851
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1852
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 1853
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    .line 1854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1856
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1711
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    iget-object p5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1712
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    iget-object p5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1713
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->updateWidth()V

    return-void
.end method

.method protected onLoadAnimation(F)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1695
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 1696
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 1697
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    .line 1699
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 1698
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    .line 1703
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1702
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1697
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public set(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1783
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1785
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 1786
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 1787
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadedAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1789
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loadingT:F

    .line 1790
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1791
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->updateWidth()V

    .line 1792
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1793
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->onLoadAnimation(F)V

    return-void
.end method

.method setFromLanguageText(Ljava/lang/String;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method