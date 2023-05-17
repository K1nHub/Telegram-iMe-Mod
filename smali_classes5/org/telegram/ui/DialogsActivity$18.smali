.class Lorg/telegram/ui/DialogsActivity$18;
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

    .line 5453
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 5461
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$18;->wasManualScroll:Z

    .line 5462
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/DialogsActivity;->access$27802(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_0

    .line 5464
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$27802(Lorg/telegram/ui/DialogsActivity;Z)Z

    :goto_0
    if-nez p2, :cond_4

    .line 5468
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$18;->wasManualScroll:Z

    .line 5469
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$17502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5470
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$17600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5471
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$17602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5472
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$17700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5473
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->access$27900(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    .line 5474
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$17702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5476
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 5479
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    if-ne p2, p1, :cond_4

    .line 5480
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    neg-float p2, p2

    float-to-int p2, p2

    .line 5481
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    if-eq p2, v3, :cond_4

    .line 5483
    div-int/lit8 v3, v2, 0x2

    if-ge p2, v3, :cond_3

    .line 5484
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-int p2, p2

    .line 5485
    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 5487
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int/2addr v2, p2

    .line 5488
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 5497
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object p2

    neg-int v0, p3

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->onListScroll(I)V

    .line 5498
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2, v0}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 5499
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p2, v1, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$18;->wasManualScroll:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8

    .line 5500
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_8

    .line 5502
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5503
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    if-eqz v1, :cond_1

    .line 5506
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 5510
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p2, :cond_4

    .line 5511
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 5512
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$28200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-ge v1, v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    .line 5513
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    .line 5515
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-le p2, v2, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    .line 5517
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$28300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v4, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5518
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->access$26100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5520
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, p2}, Lorg/telegram/ui/DialogsActivity;->access$28102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5521
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/DialogsActivity;->access$28202(Lorg/telegram/ui/DialogsActivity;I)I

    .line 5522
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v3}, Lorg/telegram/ui/DialogsActivity;->access$28302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5526
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    if-ne p1, p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$13900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$17500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$28500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 5527
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-nez p2, :cond_a

    if-lez p3, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16800(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result p2

    if-nez p2, :cond_a

    .line 5528
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 5530
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5531
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_a

    .line 5532
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    add-int p1, v1, p3

    if-lez p1, :cond_a

    if-gez v1, :cond_9

    neg-int p3, v1

    goto :goto_4

    :cond_9
    return-void

    .line 5544
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$28600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    int-to-float p2, p3

    sub-float p3, p1, p2

    .line 5547
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5548
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    add-float p3, p1, p2

    .line 5550
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_b

    .line 5551
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    goto :goto_5

    :cond_b
    cmpg-float p2, p3, v2

    if-gez p2, :cond_e

    goto :goto_6

    .line 5556
    :cond_c
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p2, p3, p2

    if-gez p2, :cond_d

    .line 5557
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    :goto_5
    int-to-float p3, p2

    goto :goto_7

    :cond_d
    cmpl-float p2, p3, v2

    if-lez p2, :cond_e

    :goto_6
    move p3, v2

    :cond_e
    :goto_7
    cmpl-float p1, p3, p1

    if-eqz p1, :cond_10

    cmpl-float p1, p3, v2

    if-nez p1, :cond_f

    .line 5564
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$26100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5567
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;F)V

    .line 5570
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$28700(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5571
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$28800(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 5573
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 5574
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$18;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_12
    return-void
.end method
