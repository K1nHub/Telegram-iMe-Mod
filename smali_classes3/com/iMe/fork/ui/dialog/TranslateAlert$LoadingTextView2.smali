.class public Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;
.super Landroid/view/ViewGroup;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingTextView2"
.end annotation


# static fields
.field public static final paddingHorizontal:I

.field public static final paddingVertical:I


# instance fields
.field private fetchedPathRect:Landroid/graphics/RectF;

.field private final fromTextView:Landroid/widget/TextView;

.field private final gradientWidth:F

.field private final inPath:Landroid/graphics/Path;

.field lastWidth:I

.field public loaded:Z

.field private loadedAnimator:Landroid/animation/ValueAnimator;

.field private final loadingAnimator:Landroid/animation/ValueAnimator;

.field private final loadingPaint:Landroid/graphics/Paint;

.field private final loadingPath:Landroid/graphics/Path;

.field private loadingT:F

.field private final rect:Landroid/graphics/RectF;

.field private scaleT:F

.field private final shadePath:Landroid/graphics/Path;

.field public showLoadingText:Z

.field private final start:J

.field private final tempPath:Landroid/graphics/Path;

.field private final toTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$AhLR_2_ihBDa3k8nTpnaUDkHHWw(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lambda$new$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJzqKbLhmwAdGvQGEnTACxAxRu0(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lambda$loaded$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 1884
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 1885
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    .line 1899
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1887
    iput-boolean v4, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->showLoadingText:Z

    .line 1895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->start:J

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1896
    iput v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->scaleT:F

    const/4 v5, 0x0

    .line 1993
    iput-boolean v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded:Z

    const/4 v6, 0x0

    .line 1994
    iput v6, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    const/4 v7, 0x0

    .line 1995
    iput-object v7, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    .line 2043
    iput v5, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    .line 2077
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fetchedPathRect:Landroid/graphics/RectF;

    .line 2115
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->rect:Landroid/graphics/RectF;

    .line 2116
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->tempPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->shadePath:Landroid/graphics/Path;

    .line 2120
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x43af0000    # 350.0f

    .line 2121
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v13, v9

    iput v13, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->gradientWidth:F

    .line 1901
    sget v9, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sget v10, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    invoke-virtual {v0, v9, v10, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1902
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1903
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 1904
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 1906
    new-instance v9, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$1;

    invoke-direct {v9, v0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;Landroid/content/Context;)V

    iput-object v9, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    move/from16 v10, p4

    int-to-float v10, v10

    .line 1912
    invoke-virtual {v9, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1913
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v11, p2

    .line 1914
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 1916
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1917
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1918
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1919
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v15, 0x2

    .line 1920
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1921
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1923
    new-instance v9, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$2;

    invoke-direct {v9, v0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;Landroid/content/Context;)V

    iput-object v9, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    .line 1929
    invoke-virtual {v9, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1930
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1931
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 1932
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1933
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1934
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1935
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1936
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 1937
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "dialogBackground"

    .line 1939
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v3, "dialogBackgroundGray"

    .line 1940
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    .line 1941
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v9, 0x3

    new-array v14, v9, [I

    aput v1, v14, v5

    aput v3, v14, v4

    aput v1, v14, v15

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    move-object v10, v7

    move-object v4, v14

    move v14, v3

    move v3, v15

    move-object v15, v4

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1942
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-array v1, v3, [F

    .line 1945
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 1947
    iput v6, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->scaleT:F

    .line 1948
    :cond_0
    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide v2, 0x7fffffffffffffffL

    .line 1958
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1959
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

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

.method static synthetic access$2600(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)Landroid/widget/TextView;
    .locals 0

    .line 1866
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$loaded$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2008
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    .line 2009
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->updateHeight()V

    .line 2010
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(ZLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 1949
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    if-eqz p1, :cond_1

    .line 1951
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->scaleT:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1952
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->start:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->scaleT:F

    if-eqz p1, :cond_1

    .line 1954
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->updateHeight()V

    :cond_1
    return-void
.end method

.method private layout()V
    .locals 1

    .line 2066
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layout(I)V

    return-void
.end method

.method private layout(I)V
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->measureChild(Landroid/view/View;I)V

    .line 2058
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layoutChild(Landroid/view/View;I)V

    .line 2059
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->updateLoadingPath()V

    .line 2060
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->measureChild(Landroid/view/View;I)V

    .line 2061
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layoutChild(Landroid/view/View;I)V

    .line 2062
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->updateHeight()V

    return-void
.end method

.method private layout(IZ)V
    .locals 1

    .line 2051
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 2052
    :cond_0
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layout(I)V

    :cond_1
    return-void
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 4

    .line 2074
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureChild(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 2070
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1500()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private updateHeight()V
    .locals 4

    .line 1971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1973
    instance-of v1, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    if-nez v1, :cond_2

    .line 1975
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->height()I

    move-result v0

    .line 1976
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1978
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1981
    :cond_0
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1982
    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    if-eqz v2, :cond_3

    .line 1986
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 1989
    check-cast v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->updateHeight()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateLoadingPath()V
    .locals 11

    .line 2080
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 2081
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2082
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2084
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2085
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 2087
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    .line 2088
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    .line 2089
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 2090
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2091
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 2092
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    :goto_1
    if-ge v6, v8, :cond_1

    .line 2095
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    const/16 v10, 0x9

    if-eq v9, v10, :cond_0

    const/16 v10, 0x20

    if-eq v9, v10, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_2
    if-nez v6, :cond_2

    goto :goto_3

    .line 2103
    :cond_2
    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fetchedPathRect:Landroid/graphics/RectF;

    sget v8, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    int-to-float v9, v8

    sub-float/2addr v7, v9

    .line 2105
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sget v10, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 2107
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    add-int/2addr v8, v10

    int-to-float v8, v8

    .line 2103
    invoke-virtual {v6, v7, v9, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2109
    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fetchedPathRect:Landroid/graphics/RectF;

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v8, v7, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFromTextView()Landroid/widget/TextView;
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToTextView()Landroid/widget/TextView;
    .locals 1

    .line 1877
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public height()I
    .locals 2

    .line 1967
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->innerHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public innerHeight()I
    .locals 3

    .line 1963
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->scaleT:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public loaded(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 1998
    iput-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded:Z

    .line 1999
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layout()V

    .line 2002
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2003
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2005
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 2006
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    .line 2007
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2012
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$3;

    invoke-direct {v0, p0, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2$3;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2019
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2020
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2021
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadedAnimator:Landroid/animation/ValueAnimator;

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

    .line 2125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 2127
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

    .line 2128
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float v5, v3, v4

    sub-float v6, v0, v1

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    .line 2130
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v5, v7, v2

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    add-float/2addr v6, v5

    .line 2131
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2129
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 2133
    iget v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    mul-float/2addr v4, v3

    .line 2134
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 2135
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2138
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2140
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v2, v8, v2

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2141
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->gradientWidth:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->start:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->gradientWidth:F

    mul-float/2addr v2, v3

    rem-float/2addr v2, v3

    sub-float v10, v1, v2

    .line 2142
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->shadePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 2143
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->shadePath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2145
    sget v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    int-to-float v2, v1

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    int-to-float v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2146
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v4, v3

    int-to-float v4, v4

    .line 2147
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v2, v10

    const/4 v4, 0x0

    .line 2148
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2149
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->shadePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v4, v5}, Landroid/graphics/Path;->offset(FFLandroid/graphics/Path;)V

    .line 2150
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->tempPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2151
    invoke-virtual {p1, v10, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2154
    iget-boolean v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->showLoadingText:Z

    const/16 v5, 0x1f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 2155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2156
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v0, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2157
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    int-to-float v0, v1

    int-to-float v2, v3

    .line 2158
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2159
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->rect:Landroid/graphics/RectF;

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 2160
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2167
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->inPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    int-to-float v0, v1

    int-to-float v1, v3

    .line 2168
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2169
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 2170
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 2171
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loadingT:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    .line 2172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2174
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 2047
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    const/4 p1, 0x1

    invoke-direct {p0, p4, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->layout(IZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 2027
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2028
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2029
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    if-eq v0, p2, :cond_1

    .line 2030
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->fromTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->measureChild(Landroid/view/View;I)V

    .line 2031
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->updateLoadingPath()V

    .line 2033
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    if-eq v0, p2, :cond_3

    .line 2034
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->toTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->measureChild(Landroid/view/View;I)V

    .line 2036
    :cond_3
    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->lastWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    .line 2038
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2039
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->height()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2037
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method
