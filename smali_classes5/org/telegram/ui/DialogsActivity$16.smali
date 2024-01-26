.class Lorg/telegram/ui/DialogsActivity$16;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
.field private fixOffset:Z

.field lastDragging:Z

.field storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method public static synthetic $r8$lambda$3R7Ag2YOOVWU5qWSJiLk6Nfy96Q(Lorg/telegram/ui/DialogsActivity$16;Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$16;->lambda$onScrollStateChanged$0(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7PpOOP_P4L4oqxcz2S-jemy3KU(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$16;->lambda$onLayoutChildren$1(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5586
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onLayoutChildren$1(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5841
    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onScrollStateChanged$0(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5637
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    return-void
.end method


# virtual methods
.method protected firstPosition()I
    .locals 2

    .line 5590
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 5830
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 5832
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5834
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistency detected. dialogsListIsFrozen="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " lastUpdateAction="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5838
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5840
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5841
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance p2, Lorg/telegram/ui/DialogsActivity$16$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 5629
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 5630
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 5631
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 5632
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5634
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 5635
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    aput v2, p1, v1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    .line 5636
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v1, Lorg/telegram/ui/DialogsActivity$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/DialogsActivity$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$16;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5639
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/DialogsActivity$16$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$16$1;-><init>(Lorg/telegram/ui/DialogsActivity$16;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5645
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5646
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5647
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 5608
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$16;->fixOffset:Z

    .line 5609
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 5610
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$16;->fixOffset:Z

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 5600
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$16;->fixOffset:Z

    if-eqz v0, :cond_0

    .line 5601
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 5603
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5653
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 5656
    :cond_0
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 5657
    :goto_0
    iget-boolean v7, v0, Lorg/telegram/ui/DialogsActivity$16;->lastDragging:Z

    if-eq v4, v7, :cond_2

    .line 5658
    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity$16;->lastDragging:Z

    if-nez v4, :cond_2

    .line 5660
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7, v8}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    const/4 v7, 0x0

    if-lez v1, :cond_4

    .line 5666
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_4

    .line 5667
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    int-to-float v1, v1

    sub-float/2addr v4, v1

    cmpg-float v1, v4, v7

    if-gez v1, :cond_3

    neg-float v1, v4

    float-to-int v6, v1

    goto :goto_1

    :cond_3
    move v7, v4

    .line 5674
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v7}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    .line 5675
    invoke-super {v0, v6, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    return v1

    .line 5677
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 5679
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v10, v9, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    const/16 v11, 0x51

    if-eqz v10, :cond_5

    iget-object v9, v9, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v9}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 5680
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v8, v9

    goto :goto_2

    :cond_5
    move v9, v8

    .line 5682
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    const/4 v12, 0x2

    if-nez v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$10800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v13

    invoke-virtual {v10, v13}, Lorg/telegram/messenger/MessagesController;->hasHiddenArchive(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v10

    if-ne v10, v12, :cond_7

    move v10, v5

    goto :goto_3

    :cond_7
    move v10, v6

    :goto_3
    const/4 v13, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v10, :cond_8

    .line 5683
    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v7, v15, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v7, :cond_17

    iget-object v7, v15, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v7}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v7

    if-nez v7, :cond_17

    :cond_8
    if-gez v1, :cond_17

    .line 5684
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 5685
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    if-nez v7, :cond_9

    .line 5687
    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 5688
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    if-gt v15, v6, :cond_9

    move v7, v5

    :cond_9
    if-nez v4, :cond_f

    .line 5693
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17

    const/16 v8, 0xa

    if-ge v7, v8, :cond_17

    .line 5695
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v8, :cond_a

    const/16 v8, 0x30

    goto :goto_4

    :cond_a
    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v8, :cond_b

    const/16 v8, 0x4e

    goto :goto_4

    :cond_b
    const/16 v8, 0x48

    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/4 v8, 0x0

    :goto_5
    if-ge v10, v7, :cond_c

    .line 5698
    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v13

    invoke-virtual {v13, v10}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemHeight(I)I

    move-result v13

    add-int/2addr v8, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 5700
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v9

    neg-int v6, v6

    add-int/2addr v6, v8

    .line 5701
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v7, v7, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    invoke-virtual {v7}, Lorg/telegram/ui/RecyclerListViewScroller;->isRunning()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v7}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 5702
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 5704
    :cond_e
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v6, v7, :cond_17

    neg-int v6, v6

    goto/16 :goto_8

    :cond_f
    if-nez v7, :cond_12

    if-eqz v10, :cond_12

    .line 5710
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 5711
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v7, v6

    add-float/2addr v7, v14

    cmpl-float v6, v7, v14

    if-lez v6, :cond_10

    move v7, v14

    .line 5715
    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    int-to-float v6, v1

    const v8, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v7, v10

    sub-float/2addr v8, v7

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-le v6, v13, :cond_11

    goto :goto_6

    :cond_11
    move v13, v6

    .line 5720
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$26600(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$26600(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_18

    .line 5721
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$26600(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v5}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    goto :goto_9

    :cond_12
    if-ne v7, v5, :cond_13

    if-nez v10, :cond_14

    :cond_13
    if-nez v7, :cond_17

    .line 5723
    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v7, v6, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v7, :cond_17

    if-eqz v4, :cond_17

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v6

    if-nez v6, :cond_17

    .line 5724
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_15

    .line 5725
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_7

    .line 5727
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :goto_7
    int-to-float v6, v1

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-le v6, v13, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    move v13, v6

    goto :goto_9

    :cond_17
    move v13, v1

    .line 5736
    :cond_18
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1a

    if-lez v1, :cond_1a

    if-eqz v4, :cond_1a

    .line 5737
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    int-to-float v8, v1

    sub-float/2addr v6, v8

    cmpg-float v8, v6, v7

    if-gez v8, :cond_19

    float-to-int v7, v6

    const/4 v6, 0x0

    goto :goto_a

    :cond_19
    const/4 v7, 0x0

    .line 5745
    :goto_a
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    move v13, v7

    .line 5748
    :cond_1a
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-nez v6, :cond_2a

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 5749
    invoke-super {v0, v13, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 5750
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 5751
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iput v2, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    .line 5753
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1c

    .line 5756
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    :cond_1c
    const-wide/16 v7, 0x0

    if-nez v3, :cond_24

    if-eqz v6, :cond_24

    .line 5758
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    if-lt v3, v10, :cond_24

    .line 5759
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$19200(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v16

    cmp-long v3, v16, v7

    if-nez v3, :cond_1d

    .line 5760
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lorg/telegram/ui/DialogsActivity;->access$19202(Lorg/telegram/ui/DialogsActivity;J)J

    .line 5762
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-ne v3, v12, :cond_1e

    .line 5763
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 5764
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->showHidden()V

    .line 5767
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v7, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v7, :cond_1f

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 5768
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v9, v3

    .line 5770
    :cond_1f
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    add-float/2addr v3, v14

    cmpl-float v7, v3, v14

    if-lez v7, :cond_20

    move v3, v14

    .line 5774
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$19200(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const v9, 0x3f59999a    # 0.85f

    cmpl-float v9, v3, v9

    if-lez v9, :cond_21

    const-wide/16 v9, 0xdc

    cmp-long v7, v7, v9

    if-lez v7, :cond_21

    move v7, v5

    goto :goto_b

    :cond_21
    const/4 v7, 0x0

    .line 5776
    :goto_b
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$19300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-eq v8, v7, :cond_22

    .line 5777
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8, v7}, Lorg/telegram/ui/DialogsActivity;->access$19302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5778
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v8

    if-ne v8, v12, :cond_22

    .line 5779
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 5780
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 5781
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    .line 5785
    :cond_22
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    if-ne v7, v12, :cond_23

    sub-int/2addr v13, v2

    if-eqz v13, :cond_23

    if-gez v1, :cond_23

    if-eqz v4, :cond_23

    .line 5787
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v7}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v7

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v14, v7

    .line 5789
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v7}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v7

    int-to-float v8, v1

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v14

    sub-float/2addr v7, v8

    .line 5790
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    .line 5792
    :cond_23
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 5793
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v7

    iput v3, v7, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 5794
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_c

    .line 5797
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v7, v8}, Lorg/telegram/ui/DialogsActivity;->access$19202(Lorg/telegram/ui/DialogsActivity;J)J

    .line 5798
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/telegram/ui/DialogsActivity;->access$19302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5799
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-eq v3, v12, :cond_25

    move v7, v5

    .line 5800
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3, v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16502(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    if-eqz v7, :cond_26

    .line 5801
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5802
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrArchivedChatsHidden:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    .line 5804
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 5805
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->resetText()V

    .line 5806
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    const/4 v7, 0x0

    iput v7, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 5807
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_27
    :goto_c
    if-eqz v6, :cond_28

    .line 5811
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 5813
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-ne v3, v5, :cond_29

    if-nez v2, :cond_29

    if-gez v1, :cond_29

    if-eqz v4, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_29

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_29

    .line 5814
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v6, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 5815
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    :cond_29
    return v2

    .line 5820
    :cond_2a
    invoke-super {v0, v13, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    if-nez v2, :cond_2b

    if-gez v1, :cond_2b

    if-eqz v4, :cond_2b

    .line 5821
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_2b

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2b

    .line 5822
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v6, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 5823
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$16;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/DialogsActivity;->access$26400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    :cond_2b
    return v2
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 5615
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 5616
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_0

    .line 5618
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 5619
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5620
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_0
    return-void
.end method
