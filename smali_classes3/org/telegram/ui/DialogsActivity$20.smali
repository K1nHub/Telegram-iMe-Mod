.class Lorg/telegram/ui/DialogsActivity$20;
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

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method public static synthetic $r8$lambda$LJScfEztz-LjrtAqbddmf94cG5M(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$20;->lambda$onLayoutChildren$0(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5348
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onLayoutChildren$0(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5511
    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 5500
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 5502
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5504
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistency detected. dialogsListIsFrozen="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " lastUpdateAction="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$28000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5508
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5510
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5511
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance p2, Lorg/telegram/ui/DialogsActivity$20$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 5362
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$20;->fixOffset:Z

    .line 5363
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 5364
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$20;->fixOffset:Z

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 5354
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$20;->fixOffset:Z

    if-eqz v0, :cond_0

    .line 5355
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 5357
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 5380
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    .line 5383
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 5386
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 5387
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-nez v8, :cond_8

    if-gez v1, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessagesController;->hasHiddenArchive()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 5388
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 5389
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    if-nez v8, :cond_2

    .line 5391
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 5392
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    if-gt v11, v12, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-nez v4, :cond_5

    .line 5397
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 5399
    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v12, :cond_3

    const/16 v12, 0x30

    goto :goto_1

    :cond_3
    sget-boolean v12, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v12, :cond_4

    const/16 v12, 0x4e

    goto :goto_1

    :cond_4
    const/16 v12, 0x48

    :goto_1
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v6

    .line 5400
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v7

    neg-int v11, v11

    sub-int/2addr v8, v6

    mul-int v8, v8, v12

    add-int/2addr v11, v8

    .line 5401
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v11, v8, :cond_8

    neg-int v8, v11

    goto :goto_2

    :cond_5
    if-nez v8, :cond_8

    .line 5407
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    .line 5408
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v11, v8

    add-float/2addr v11, v9

    cmpl-float v8, v11, v9

    if-lez v8, :cond_6

    const/high16 v11, 0x3f800000    # 1.0f

    .line 5412
    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    int-to-float v8, v1

    const v12, 0x3ee66666    # 0.45f

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float v11, v11, v13

    sub-float/2addr v12, v11

    mul-float v8, v8, v12

    float-to-int v8, v8

    const/4 v11, -0x1

    if-le v8, v11, :cond_7

    const/4 v8, -0x1

    .line 5417
    :cond_7
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_9

    .line 5418
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$27900(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {v11, v6, v6}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    goto :goto_2

    :cond_8
    move v8, v1

    .line 5423
    :cond_9
    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_b

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v11

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_b

    if-lez v1, :cond_b

    if-eqz v4, :cond_b

    .line 5424
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v11, v1

    sub-float/2addr v8, v11

    cmpg-float v11, v8, v12

    if-gez v11, :cond_a

    float-to-int v8, v8

    move v11, v8

    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    .line 5432
    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    move v8, v11

    .line 5435
    :cond_b
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 5436
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 5437
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 5438
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iput v2, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    .line 5440
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v11, 0x0

    if-nez v3, :cond_d

    .line 5443
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v11}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    :cond_d
    const-wide/16 v13, 0x0

    if-nez v3, :cond_14

    if-eqz v11, :cond_14

    .line 5445
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v7

    const/4 v15, 0x4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    if-lt v3, v15, :cond_14

    .line 5446
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$18600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-nez v3, :cond_e

    .line 5447
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v3, v12, v13}, Lorg/telegram/ui/DialogsActivity;->access$18602(Lorg/telegram/ui/DialogsActivity;J)J

    .line 5449
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-ne v3, v10, :cond_f

    .line 5450
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 5451
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->showHidden()V

    .line 5454
    :cond_f
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    add-float/2addr v3, v9

    cmpl-float v7, v3, v9

    if-lez v7, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5458
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$18600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const v7, 0x3f59999a    # 0.85f

    cmpl-float v7, v3, v7

    if-lez v7, :cond_11

    const-wide/16 v14, 0xdc

    cmp-long v7, v12, v14

    if-lez v7, :cond_11

    const/4 v5, 0x1

    .line 5460
    :cond_11
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$18700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eq v6, v5, :cond_12

    .line 5461
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->access$18702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5462
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-ne v6, v10, :cond_12

    .line 5463
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 5464
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 5465
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    .line 5469
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    if-ne v5, v10, :cond_13

    sub-int/2addr v8, v2

    if-eqz v8, :cond_13

    if-gez v1, :cond_13

    if-eqz v4, :cond_13

    .line 5471
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v4

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v9, v4

    .line 5473
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v4

    int-to-float v1, v1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v5

    mul-float v1, v1, v9

    sub-float/2addr v4, v1

    .line 5474
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    .line 5476
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 5477
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iput v3, v1, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 5478
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_4

    .line 5481
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v13, v14}, Lorg/telegram/ui/DialogsActivity;->access$18602(Lorg/telegram/ui/DialogsActivity;J)J

    .line 5482
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DialogsActivity;->access$18702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5483
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16102(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 5484
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 5485
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->resetText()V

    .line 5486
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iput v12, v1, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 5487
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$20;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_15
    :goto_4
    if-eqz v11, :cond_16

    .line 5491
    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    :cond_16
    return v2

    .line 5495
    :cond_17
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    return v1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 5369
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 5370
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_0

    .line 5372
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 5373
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5374
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_0
    return-void
.end method
