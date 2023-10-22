.class public final Lcom/iMe/ui/topics/TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/topics/TopicsBar$initListView$1$1;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    .line 168
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    const/16 v0, 0x3c

    if-gtz p2, :cond_2

    const/16 v1, 0x15

    if-nez p2, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$initListView$1$1$smoothScrollToPosition$linearSmoothScroller$1;->$this_apply:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-le v2, v1, :cond_3

    .line 178
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_1

    .line 176
    :cond_2
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 180
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0xb4

    .line 182
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_4

    neg-int p2, p2

    neg-int p1, p1

    .line 184
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_4
    return-void
.end method
