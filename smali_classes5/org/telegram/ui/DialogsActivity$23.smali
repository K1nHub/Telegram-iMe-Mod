.class Lorg/telegram/ui/DialogsActivity$23;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field private wasManualScroll:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5665
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 5673
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$23;->wasManualScroll:Z

    .line 5674
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/DialogsActivity;->access$28502(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_0

    .line 5676
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$28502(Lorg/telegram/ui/DialogsActivity;Z)Z

    :goto_0
    if-nez p2, :cond_5

    .line 5680
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$23;->wasManualScroll:Z

    .line 5681
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$16802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5682
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$16900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5683
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$16902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5684
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$17000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5685
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->access$28600(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    .line 5686
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5688
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5692
    :cond_2
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5693
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    if-ne p2, p1, :cond_5

    .line 5694
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    neg-float p2, p2

    float-to-int p2, p2

    .line 5695
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    if-eqz v3, :cond_5

    add-int/lit8 v3, v2, -0x1

    if-eq p2, v3, :cond_5

    .line 5697
    div-int/lit8 v3, v2, 0x2

    if-ge p2, v3, :cond_4

    .line 5698
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-int p2, p2

    .line 5699
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 5701
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int/2addr v2, p2

    .line 5702
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 5711
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$18900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p2

    neg-int v0, p3

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->onListScroll(I)V

    .line 5712
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 5713
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28800(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$23;->wasManualScroll:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8

    .line 5714
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_8

    .line 5716
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5717
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    if-eqz v1, :cond_1

    .line 5720
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5724
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p2, :cond_4

    .line 5725
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$29000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 5726
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$29000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-ge v1, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 5727
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 5729
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-le p2, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    .line 5731
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$29100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v4, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5732
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5734
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, p2}, Lorg/telegram/ui/DialogsActivity;->access$28902(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5735
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$29002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5736
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v3}, Lorg/telegram/ui/DialogsActivity;->access$29102(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5740
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    if-ne p1, p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$29200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$16800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$29300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p2

    if-nez p2, :cond_11

    .line 5742
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    if-lez p3, :cond_b

    .line 5743
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p2

    if-nez p2, :cond_b

    .line 5744
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 5746
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5747
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_b

    .line 5748
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    add-int p1, v1, p3

    if-lez p1, :cond_b

    if-gez v1, :cond_a

    neg-int p3, v1

    goto :goto_4

    :cond_a
    return-void

    .line 5760
    :cond_b
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$29400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    int-to-float p2, p3

    sub-float p3, p1, p2

    .line 5763
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isCustomForward()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5764
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    add-float p3, p1, p2

    .line 5766
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_c

    .line 5767
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    goto :goto_5

    :cond_c
    cmpg-float p2, p3, v2

    if-gez p2, :cond_f

    goto :goto_6

    .line 5772
    :cond_d
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p2, p3, p2

    if-gez p2, :cond_e

    .line 5773
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    :goto_5
    int-to-float p3, p2

    goto :goto_7

    :cond_e
    cmpl-float p2, p3, v2

    if-lez p2, :cond_f

    :goto_6
    const/4 p3, 0x0

    :cond_f
    :goto_7
    cmpl-float p1, p3, p1

    if-eqz p1, :cond_11

    cmpl-float p1, p3, v2

    if-nez p1, :cond_10

    .line 5780
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5783
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;F)V

    .line 5786
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$29500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 5787
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$29600(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 5789
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5790
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$23;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_13
    return-void
.end method
