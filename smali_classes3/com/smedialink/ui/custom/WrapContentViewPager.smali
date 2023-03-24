.class public final Lcom/smedialink/ui/custom/WrapContentViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "WrapContentViewPager.kt"


# instance fields
.field private dataChangedFlag:Z

.field private dataSetObserver:Landroid/database/DataSetObserver;

.field private inLayout:Ljava/lang/reflect/Field;

.field private lastHeightWithoutPadding:I

.field private needsMeasure:Ljava/lang/reflect/Field;

.field private pop:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Lcom/smedialink/ui/custom/WrapContentViewPager$dataSetObserver$1;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/custom/WrapContentViewPager$dataSetObserver$1;-><init>(Lcom/smedialink/ui/custom/WrapContentViewPager;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method public static final synthetic access$setDataChangedFlag$p(Lcom/smedialink/ui/custom/WrapContentViewPager;Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataChangedFlag:Z

    return-void
.end method

.method private final assureInLayoutField()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->inLayout:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 132
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mInLayout"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->inLayout:Ljava/lang/reflect/Field;

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final clearNeedsMeasure(Landroidx/viewpager/widget/ViewPager$LayoutParams;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->needsMeasure:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    const-string v1, "needsMeasure"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->needsMeasure:Ljava/lang/reflect/Field;

    .line 86
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->needsMeasure:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 96
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private final populateSuper()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->pop:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "populate"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->pop:Ljava/lang/reflect/Method;

    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->pop:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 114
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 40
    iget v1, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->lastHeightWithoutPadding:I

    .line 41
    iget-boolean v2, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataChangedFlag:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 43
    iput-boolean v3, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataChangedFlag:Z

    move v1, v3

    .line 46
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 45
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    .line 51
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    .line 53
    invoke-virtual {p0, v7}, Lcom/smedialink/ui/custom/WrapContentViewPager;->setInLayout(Z)V

    .line 54
    invoke-direct {p0}, Lcom/smedialink/ui/custom/WrapContentViewPager;->populateSuper()V

    .line 55
    invoke-virtual {p0, v3}, Lcom/smedialink/ui/custom/WrapContentViewPager;->setInLayout(Z)V

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    .line 57
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 58
    invoke-virtual {v9, v2, v6}, Landroid/view/View;->measure(II)V

    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type androidx.viewpager.widget.ViewPager.LayoutParams"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 60
    invoke-direct {p0, v10}, Lcom/smedialink/ui/custom/WrapContentViewPager;->clearNeedsMeasure(Landroidx/viewpager/widget/ViewPager$LayoutParams;)V

    .line 61
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-le v9, v1, :cond_2

    move v1, v9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_6

    goto :goto_2

    :cond_4
    if-le v1, p2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v1

    .line 74
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->lastHeightWithoutPadding:I

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public final setInLayout(Z)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/smedialink/ui/custom/WrapContentViewPager;->assureInLayoutField()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/ui/custom/WrapContentViewPager;->inLayout:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
