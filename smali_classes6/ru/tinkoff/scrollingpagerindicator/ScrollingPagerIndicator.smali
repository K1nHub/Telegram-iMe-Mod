.class public Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;
.super Landroid/view/View;
.source "ScrollingPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;
    }
.end annotation


# instance fields
.field private attachRunnable:Ljava/lang/Runnable;

.field private final colorEvaluator:Landroid/animation/ArgbEvaluator;

.field private currentAttacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher<",
            "*>;"
        }
    .end annotation
.end field

.field private dotColor:I

.field private dotCountInitialized:Z

.field private final dotMinimumSize:I

.field private final dotNormalSize:I

.field private dotScale:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dotSelectedSize:I

.field private firstDotOffset:F

.field private infiniteDotCount:I

.field private itemCount:I

.field private looped:Z

.field private orientation:I

.field private final paint:Landroid/graphics/Paint;

.field private selectedDotColor:I

.field private final spaceBetweenDotCenters:I

.field private visibleDotCount:I

.field private visibleDotThreshold:I

.field private visibleFramePosition:F

.field private visibleFrameWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$attr;->scrollingPagerIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 75
    sget-object v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator:[I

    sget v1, Lru/tinkoff/scrollingpagerindicator/R$style;->ScrollingPagerIndicator:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    .line 78
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotSelectedColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    .line 79
    sget p2, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    .line 80
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotSelectedSize:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    .line 81
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotMinimumSize:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-gt v0, p2, :cond_0

    move v1, v0

    .line 82
    :cond_0
    iput v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    .line 84
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_dotSpacing:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    .line 85
    sget p2, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_looped:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    .line 86
    sget p2, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_visibleDotCount:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setVisibleDotCount(I)V

    .line 88
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_visibleDotThreshold:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    .line 89
    sget v0, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator_spi_orientation:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 93
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 97
    div-int/2addr p2, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->onPageScrolled(IF)V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;I)I
    .locals 0

    .line 25
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    return p1
.end method

.method private adjustFramePosition(FI)V
    .locals 4

    .line 598
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    .line 600
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    goto :goto_0

    .line 601
    :cond_0
    iget-boolean v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    if-le v0, v1, :cond_2

    .line 603
    invoke-direct {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 604
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v3

    sub-float/2addr p2, p1

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    .line 607
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    div-int/lit8 p1, p1, 0x2

    .line 608
    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    .line 609
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-direct {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 610
    invoke-direct {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p1

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    goto :goto_0

    .line 611
    :cond_1
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float v1, v0, v3

    add-float/2addr p1, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 612
    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    goto :goto_0

    .line 616
    :cond_2
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 617
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v3

    sub-float/2addr p2, p1

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    :cond_3
    :goto_0
    return-void
.end method

.method private calculateDotColor(F)I
    .locals 3

    .line 557
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getDotCount()I
    .locals 2

    .line 590
    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v0, v1, :cond_0

    .line 591
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    return v0

    .line 593
    :cond_0
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    return v0
.end method

.method private getDotOffsetAt(I)F
    .locals 2

    .line 629
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p1, p1, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method private getDotScaleAt(I)F
    .locals 1

    .line 633
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initDots(I)V
    .locals 2

    .line 569
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 572
    :cond_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    .line 574
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    .line 576
    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge p1, v1, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 582
    :cond_1
    iget-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    .line 583
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    sub-int/2addr p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p1, p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    .line 585
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private scaleDotByOffset(IF)V
    .locals 1

    .line 622
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 625
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotScaleAt(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDotScaleAt(IF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 642
    iget-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateScaleInIdleState(I)V
    .locals 2

    .line 561
    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-ge v0, v1, :cond_1

    .line 562
    :cond_0
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 563
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher<",
            "TT;>;)V"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->detachFromPager()V

    .line 297
    invoke-interface {p2, p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;->attachToPager(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;)V

    .line 298
    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    .line 300
    new-instance v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;

    invoke-direct {v0, p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;-><init>(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 265
    new-instance v0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-direct {v0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;-><init>()V

    invoke-virtual {p0, p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    return-void
.end method

.method public detachFromPager()V
    .locals 1

    .line 313
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;->detachFromPager()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    .line 316
    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    return-void
.end method

.method public getDotColor()I
    .locals 1

    .line 119
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 215
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    return v0
.end method

.method public getSelectedDotColor()I
    .locals 1

    .line 137
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    return v0
.end method

.method public getVisibleDotCount()I
    .locals 1

    .line 158
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    return v0
.end method

.method public getVisibleDotThreshold()I
    .locals 1

    .line 190
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 465
    invoke-direct/range {p0 .. p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v2

    .line 466
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge v2, v3, :cond_0

    return-void

    .line 471
    :cond_0
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    iget v4, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    iget v5, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    int-to-float v5, v5

    const v6, 0x3f333333    # 0.7f

    mul-float v5, v5, v6

    .line 472
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v6, 0x3f5b6db7

    int-to-float v7, v3

    mul-float v7, v7, v6

    .line 475
    iget v6, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v8, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    sub-float v8, v6, v8

    float-to-int v8, v8

    div-int/2addr v8, v3

    .line 476
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float/2addr v6, v3

    .line 477
    invoke-direct {v0, v8}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v3

    sub-float/2addr v6, v3

    float-to-int v3, v6

    iget v6, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    div-int/2addr v3, v6

    add-int/2addr v3, v8

    if-nez v8, :cond_1

    add-int/lit8 v6, v3, 0x1

    if-le v6, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    :cond_1
    :goto_0
    if-gt v8, v3, :cond_e

    .line 487
    invoke-direct {v0, v8}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v6

    .line 488
    iget v9, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    cmpl-float v10, v6, v9

    if-ltz v10, :cond_d

    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float v11, v9, v10

    cmpg-float v11, v6, v11

    if-gez v11, :cond_d

    .line 493
    iget-boolean v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v11, :cond_4

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v11, v13, :cond_4

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    sub-float v10, v9, v7

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_2

    cmpg-float v10, v6, v9

    if-gtz v10, :cond_2

    sub-float v9, v6, v9

    add-float/2addr v9, v7

    div-float/2addr v9, v7

    goto :goto_1

    :cond_2
    cmpl-float v10, v6, v9

    if-lez v10, :cond_3

    add-float v10, v9, v7

    cmpg-float v10, v6, v10

    if-gez v10, :cond_3

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v6, v9

    div-float/2addr v9, v7

    sub-float v9, v10, v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 505
    :cond_4
    invoke-direct {v0, v8}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotScaleAt(I)F

    move-result v9

    .line 507
    :goto_1
    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    int-to-float v11, v10

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    sub-int/2addr v13, v10

    int-to-float v10, v13

    mul-float v10, v10, v9

    add-float/2addr v11, v10

    .line 510
    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v10, v13, :cond_b

    .line 512
    iget-boolean v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/4 v13, 0x1

    if-nez v10, :cond_6

    if-eqz v8, :cond_5

    add-int/lit8 v10, v2, -0x1

    if-ne v8, v10, :cond_6

    :cond_5
    move v10, v4

    goto :goto_2

    :cond_6
    move v10, v5

    .line 518
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 519
    iget v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-ne v15, v13, :cond_7

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 522
    :cond_7
    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float v15, v6, v13

    cmpg-float v15, v15, v10

    if-gez v15, :cond_9

    sub-float v13, v6, v13

    mul-float v13, v13, v11

    div-float/2addr v13, v10

    .line 524
    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    int-to-float v14, v10

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_8

    goto :goto_3

    :cond_8
    cmpg-float v10, v13, v11

    if-gez v10, :cond_b

    move v11, v13

    goto :goto_4

    :cond_9
    sub-float v15, v6, v13

    int-to-float v14, v14

    sub-float v16, v14, v10

    cmpl-float v15, v15, v16

    if-lez v15, :cond_b

    neg-float v15, v6

    add-float/2addr v15, v13

    add-float/2addr v15, v14

    mul-float v15, v15, v11

    div-float/2addr v15, v10

    .line 531
    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    int-to-float v13, v10

    cmpg-float v13, v15, v13

    if-gtz v13, :cond_a

    :goto_3
    int-to-float v11, v10

    goto :goto_4

    :cond_a
    cmpg-float v10, v15, v11

    if-gez v10, :cond_b

    move v11, v15

    .line 539
    :cond_b
    :goto_4
    iget-object v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->calculateDotColor(F)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget v9, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v9, :cond_c

    .line 541
    iget v9, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v6, v9

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float/2addr v11, v12

    iget-object v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    .line 541
    invoke-virtual {v1, v6, v9, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 546
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v6, v10

    div-float/2addr v11, v12

    iget-object v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v6, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_d
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 406
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-nez v0, :cond_3

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p1, p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    :goto_0
    add-int/2addr p1, v0

    goto :goto_1

    .line 412
    :cond_0
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p1, v0, :cond_1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p1, p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    goto :goto_0

    .line 416
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 417
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 420
    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_7

    move p2, v3

    goto :goto_4

    .line 427
    :cond_2
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_4

    .line 434
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 435
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p2, p2, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    :goto_2
    add-int/2addr p2, v0

    goto :goto_3

    .line 437
    :cond_4
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p2, v0, :cond_5

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p2, p2

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int p2, p2, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    goto :goto_2

    .line 442
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 446
    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_7

    move p1, v3

    goto :goto_4

    .line 453
    :cond_6
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 460
    :cond_7
    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrolled(IF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-gtz v1, :cond_8

    if-ltz p1, :cond_7

    if-eqz p1, :cond_0

    .line 343
    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge p1, v1, :cond_7

    .line 347
    :cond_0
    iget-boolean v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-gt v1, v3, :cond_5

    if-le v1, v2, :cond_5

    .line 348
    :cond_1
    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 350
    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v1, :cond_3

    .line 351
    invoke-direct {p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(IF)V

    .line 353
    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    add-int/lit8 v3, v1, -0x1

    if-ge p1, v3, :cond_2

    add-int/lit8 v1, p1, 0x1

    sub-float/2addr v0, p2

    .line 354
    invoke-direct {p0, v1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(IF)V

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    sub-float/2addr v0, p2

    .line 356
    invoke-direct {p0, v1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(IF)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p1, -0x1

    .line 360
    invoke-direct {p0, v1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(IF)V

    sub-float/2addr v0, p2

    .line 361
    invoke-direct {p0, p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(IF)V

    .line 364
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 366
    :cond_5
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v0, :cond_6

    .line 367
    invoke-direct {p0, p2, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(FI)V

    goto :goto_1

    :cond_6
    sub-int/2addr p1, v2

    .line 369
    invoke-direct {p0, p2, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(FI)V

    .line 371
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 344
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "page must be [0, adapter.getItemCount())"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Offset must be [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reattach()V
    .locals 1

    .line 326
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p1, :cond_0

    .line 389
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Position must be [0, adapter.getItemCount()]"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_1
    :goto_0
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, v0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(FI)V

    .line 396
    invoke-direct {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->updateScaleInIdleState(I)V

    return-void
.end method

.method public setDotColor(I)V
    .locals 0

    .line 128
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotCount(I)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->initDots(I)V

    return-void
.end method

.method public setLooped(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    .line 110
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 224
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    .line 225
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setSelectedDotColor(I)V
    .locals 0

    .line 146
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibleDotCount(I)V
    .locals 1

    .line 170
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 173
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    add-int/lit8 p1, p1, 0x2

    .line 174
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    .line 176
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "visibleDotCount must be odd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibleDotThreshold(I)V
    .locals 0

    .line 200
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    .line 201
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method
