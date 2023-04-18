.class Lorg/telegram/ui/DialogsActivity$55;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showSearch(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 9506
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$55;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 9570
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$40000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 9571
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40100(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 9572
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$55;->val$show:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9573
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hide()V

    goto :goto_0

    .line 9575
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->show()V

    .line 9577
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$40102(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 9509
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$40000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 9510
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$40100(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 9513
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$21400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 9514
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$55;->val$show:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_4

    .line 9515
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->hide()V

    .line 9517
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9518
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9520
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9521
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9524
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9525
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9527
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$6802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 9528
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$40200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 9529
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9530
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_7

    .line 9531
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 9534
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->collapseSearchFilters()V

    .line 9535
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->whiteActionBar:Z

    .line 9536
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9537
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9538
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9540
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearSearchFilters()V

    .line 9541
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->clear()V

    .line 9542
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 9543
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->show()V

    .line 9544
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$10200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 9545
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 9547
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$6802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 9548
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p1, :cond_7

    .line 9549
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9553
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 9554
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9557
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$55;->val$show:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_1

    :cond_9
    move v2, v4

    :goto_1
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/DialogsActivity;->setSearchAnimationProgress(FZ)V

    .line 9559
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 9560
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9561
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$40102(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 9563
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 9564
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$55;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$55;->val$show:Z

    if-eqz v0, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_b
    return-void
.end method
