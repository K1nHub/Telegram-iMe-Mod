.class public final Lcom/iMe/ui/common/LinePagerIndicatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LinePagerIndicatorDecoration.kt"


# instance fields
.field private final colorActive:I

.field private final colorInactive:I

.field private final mIndicatorHeight:I

.field private final mIndicatorItemLength:I

.field private final mIndicatorItemPadding:I

.field private final mIndicatorStrokeWidth:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->colorActive:I

    const v0, 0x66ffffff

    .line 16
    iput v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->colorInactive:I

    const/16 v0, 0x10

    .line 17
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v1

    iput v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorHeight:I

    const/4 v1, 0x1

    .line 18
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v2

    iput v2, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorStrokeWidth:I

    .line 19
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemLength:I

    const/4 v0, 0x6

    .line 20
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemPadding:I

    .line 21
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    int-to-float v2, v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private final drawHighlights(Landroid/graphics/Canvas;FFIFI)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v3, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->colorActive:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v3, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemLength:I

    iget v4, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemPadding:I

    add-int/2addr v4, v3

    const/4 v5, 0x0

    cmpg-float v5, p5, v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    mul-int/2addr v4, v1

    int-to-float v1, v4

    add-float v5, p2, v1

    int-to-float v1, v3

    add-float v7, v5, v1

    .line 87
    iget-object v9, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move/from16 v6, p3

    move/from16 v8, p3

    .line 86
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    mul-int v5, v4, v1

    int-to-float v5, v5

    add-float v5, p2, v5

    int-to-float v7, v3

    mul-float v7, v7, p5

    add-float v9, v5, v7

    int-to-float v3, v3

    add-float v11, v5, v3

    .line 95
    iget-object v13, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move/from16 v10, p3

    move/from16 v12, p3

    .line 94
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_3

    int-to-float v1, v4

    add-float v9, v5, v1

    add-float v11, v9, v7

    .line 101
    iget-object v13, v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move/from16 v10, p3

    move/from16 v12, p3

    .line 100
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final drawInactiveIndicators(Landroid/graphics/Canvas;FFI)V
    .locals 8

    const/4 v0, 0x2

    if-ge p4, v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->colorInactive:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget v0, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemLength:I

    iget v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemPadding:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 70
    iget v2, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemLength:I

    int-to-float v2, v2

    add-float v5, p2, v2

    iget-object v7, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v0

    add-float/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 108
    iget p2, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 33
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    move v7, p3

    goto :goto_0

    :cond_0
    move v7, v0

    .line 36
    :goto_0
    iget p3, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemLength:I

    mul-int/2addr p3, v7

    add-int/lit8 v1, v7, -0x1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorItemPadding:I

    mul-int/2addr v0, v1

    add-int/2addr p3, v0

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p3, v0

    .line 42
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mIndicatorHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float v4, p3, v1

    .line 43
    invoke-direct {p0, p1, v3, v4, v7}, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->drawInactiveIndicators(Landroid/graphics/Canvas;FFI)V

    .line 46
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    const/4 p3, -0x1

    if-ne v5, p3, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    .line 54
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 59
    iget-object v1, p0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->mInterpolator:Landroid/view/animation/Interpolator;

    mul-int/2addr v0, p3

    int-to-float p3, v0

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-interface {v1, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    .line 60
    invoke-direct/range {v1 .. v7}, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;->drawHighlights(Landroid/graphics/Canvas;FFIFI)V

    return-void
.end method
