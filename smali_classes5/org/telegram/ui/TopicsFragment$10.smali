.class Lorg/telegram/ui/TopicsFragment$10;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "TopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fixOffset:Z

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public static synthetic $r8$lambda$TQawsUcC0Ofuo7MaqidHbsQ6D4E(Lorg/telegram/ui/TopicsFragment$10;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$10;->lambda$onLayoutChildren$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onLayoutChildren$0()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1053
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 1055
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Inconsistency detected. "

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1061
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1063
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1064
    new-instance p1, Lorg/telegram/ui/TopicsFragment$10$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$10;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 912
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$10;->fixOffset:Z

    .line 913
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 914
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$10;->fixOffset:Z

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 904
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$10;->fixOffset:Z

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 907
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

    .line 930
    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    .line 933
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 936
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v7}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    if-gez v1, :cond_9

    .line 937
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1500(Lorg/telegram/ui/TopicsFragment;)I

    move-result v12

    if-lez v12, :cond_9

    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v12

    if-ne v12, v11, :cond_9

    .line 938
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 939
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v12, v12, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v12

    if-nez v12, :cond_3

    .line 941
    iget-object v13, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v13, v13, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 943
    invoke-virtual {v13, v9}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-eqz v13, :cond_3

    .line 945
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    if-gt v13, v14, :cond_3

    move v12, v6

    :cond_3
    if-nez v4, :cond_6

    .line 950
    iget-object v8, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v8, v8, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v8, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 952
    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v13, :cond_4

    const/16 v13, 0x30

    goto :goto_1

    :cond_4
    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v13, :cond_5

    const/16 v13, 0x4e

    goto :goto_1

    :cond_5
    const/16 v13, 0x48

    :goto_1
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v6

    .line 953
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v7

    neg-int v8, v8

    sub-int/2addr v12, v6

    mul-int/2addr v12, v13

    add-int/2addr v8, v12

    .line 954
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v8, v12, :cond_9

    neg-int v8, v8

    goto :goto_2

    :cond_6
    if-nez v12, :cond_9

    .line 960
    iget-object v13, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v13, v13, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    .line 961
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v13, v12

    add-float/2addr v13, v10

    cmpl-float v12, v13, v10

    if-lez v12, :cond_7

    move v13, v10

    .line 965
    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    int-to-float v12, v1

    const v14, 0x3ee66666    # 0.45f

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v13, v15

    sub-float/2addr v14, v13

    mul-float/2addr v12, v14

    float-to-int v12, v12

    if-le v12, v8, :cond_8

    goto :goto_2

    :cond_8
    move v8, v12

    goto :goto_2

    :cond_9
    move v8, v1

    .line 973
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->getViewOffset()F

    move-result v12

    cmpl-float v12, v12, v9

    if-eqz v12, :cond_b

    if-lez v1, :cond_b

    if-eqz v4, :cond_b

    .line 974
    iget-object v8, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v8}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->getViewOffset()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v12, v1

    sub-float/2addr v8, v12

    cmpg-float v12, v8, v9

    if-gez v12, :cond_a

    float-to-int v8, v8

    move v12, v8

    move v8, v9

    goto :goto_3

    :cond_a
    move v12, v5

    .line 982
    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v13}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->setViewsOffset(F)V

    move v8, v12

    .line 985
    :cond_b
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v12

    if-eqz v12, :cond_18

    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v12}, Lorg/telegram/ui/TopicsFragment;->access$1500(Lorg/telegram/ui/TopicsFragment;)I

    move-result v12

    if-lez v12, :cond_18

    .line 986
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 987
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 988
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iput v2, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    .line 990
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v3, v3, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v12, 0x0

    if-nez v3, :cond_d

    .line 993
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v12, v12, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    :cond_d
    if-eqz v12, :cond_e

    .line 996
    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationX(F)V

    :cond_e
    const-wide/16 v13, 0x0

    if-nez v3, :cond_15

    if-eqz v12, :cond_15

    .line 998
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v7

    const/4 v15, 0x4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    if-lt v3, v15, :cond_15

    .line 999
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$3300(Lorg/telegram/ui/TopicsFragment;)J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-nez v3, :cond_f

    .line 1000
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v3, v13, v14}, Lorg/telegram/ui/TopicsFragment;->access$3302(Lorg/telegram/ui/TopicsFragment;J)J

    .line 1002
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v3

    if-ne v3, v11, :cond_10

    .line 1003
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1004
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->showHidden()V

    .line 1007
    :cond_10
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    add-float/2addr v3, v10

    cmpl-float v7, v3, v10

    if-lez v7, :cond_11

    move v3, v10

    .line 1011
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v7, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v7}, Lorg/telegram/ui/TopicsFragment;->access$3300(Lorg/telegram/ui/TopicsFragment;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const v7, 0x3f59999a    # 0.85f

    cmpl-float v7, v3, v7

    if-lez v7, :cond_12

    const-wide/16 v15, 0xdc

    cmp-long v7, v13, v15

    if-lez v7, :cond_12

    move v5, v6

    .line 1013
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$3400(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v6

    if-eq v6, v5, :cond_13

    .line 1014
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6, v5}, Lorg/telegram/ui/TopicsFragment;->access$3402(Lorg/telegram/ui/TopicsFragment;Z)Z

    .line 1015
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v6

    if-ne v6, v11, :cond_13

    .line 1016
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 1017
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 1018
    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    .line 1022
    :cond_13
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v5}, Lorg/telegram/ui/TopicsFragment;->access$1700(Lorg/telegram/ui/TopicsFragment;)I

    move-result v5

    if-ne v5, v11, :cond_14

    sub-int/2addr v8, v2

    if-eqz v8, :cond_14

    if-gez v1, :cond_14

    if-eqz v4, :cond_14

    .line 1024
    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->getViewOffset()F

    move-result v4

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v10, v4

    .line 1026
    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->getViewOffset()F

    move-result v4

    int-to-float v1, v1

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v5

    mul-float/2addr v1, v10

    sub-float/2addr v4, v1

    .line 1027
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->setViewsOffset(F)V

    .line 1029
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1030
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iput v3, v1, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_4

    .line 1034
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1, v13, v14}, Lorg/telegram/ui/TopicsFragment;->access$3302(Lorg/telegram/ui/TopicsFragment;J)J

    .line 1035
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1, v5}, Lorg/telegram/ui/TopicsFragment;->access$3402(Lorg/telegram/ui/TopicsFragment;Z)Z

    .line 1036
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1, v11}, Lorg/telegram/ui/TopicsFragment;->access$1702(Lorg/telegram/ui/TopicsFragment;I)I

    .line 1037
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1038
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->resetText()V

    .line 1039
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iput v9, v1, Lorg/telegram/ui/Components/PullForegroundDrawable;->pullProgress:F

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_16
    :goto_4
    if-eqz v12, :cond_17

    .line 1044
    invoke-virtual {v12}, Landroid/view/View;->invalidate()V

    :cond_17
    return v2

    .line 1048
    :cond_18
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    return v1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$10;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1500(Lorg/telegram/ui/TopicsFragment;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 920
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    goto :goto_0

    .line 922
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 923
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 924
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_0
    return-void
.end method
