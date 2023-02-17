.class Lorg/telegram/ui/GroupCallActivity$7;
.super Landroid/widget/FrameLayout;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastSize:I

.field listCells:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field localHasVideo:Z

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field private updateRenderers:Z

.field wasLayout:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 2286
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2288
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->ignoreLayout:Z

    .line 2289
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    .line 2690
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 2694
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 2695
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2696
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2697
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2698
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    goto :goto_0

    .line 2699
    :cond_0
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v2, 0x5e

    if-eqz v1, :cond_1

    .line 2700
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2701
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2702
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2703
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v1, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 2705
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2706
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2707
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v3, v3, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2708
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v1, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    :goto_0
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 2711
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v11, 0x1

    if-ge v1, v2, :cond_5

    .line 2712
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2713
    instance-of v3, v2, Lorg/telegram/ui/Cells/GroupCallUserCell;

    if-eqz v3, :cond_2

    .line 2714
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 2715
    invoke-virtual {v3, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setDrawAvatar(Z)V

    .line 2717
    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v3, :cond_4

    .line 2718
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 2719
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 2721
    :cond_3
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2726
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isAnimating()Z

    move-result v1

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v1, :cond_e

    .line 2727
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 2728
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 2729
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2730
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2731
    instance-of v3, v2, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 2732
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    .line 2733
    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eq v4, v5, :cond_7

    .line 2734
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2736
    :cond_6
    instance-of v3, v2, Lorg/telegram/ui/Cells/GroupCallUserCell;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_7

    .line 2737
    check-cast v2, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 2738
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getParticipant()Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 2741
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 2742
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    .line 2744
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_9

    .line 2746
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->listCells:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getParticipant()Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2748
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    .line 2750
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$9500(Lorg/telegram/ui/GroupCallActivity;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2751
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    :cond_a
    if-eqz v3, :cond_c

    .line 2755
    instance-of v5, v3, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v5, :cond_b

    .line 2756
    check-cast v3, Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    .line 2757
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2758
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    add-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 2760
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v7, v7, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    add-float/2addr v6, v7

    .line 2761
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v13, v13, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getY()F

    move-result v13

    add-float/2addr v7, v13

    goto/16 :goto_6

    .line 2763
    :cond_b
    check-cast v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 2764
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    shr-int/2addr v6, v11

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 2765
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    shr-int/2addr v7, v11

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 2767
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget-object v13, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v13, v13, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getX()F

    move-result v13

    add-float/2addr v7, v13

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    shr-int/2addr v13, v11

    int-to-float v13, v13

    add-float/2addr v7, v13

    .line 2768
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v14, v14, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    shr-int/2addr v14, v11

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 2770
    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setDrawAvatar(Z)V

    move v3, v6

    move v6, v7

    move v7, v13

    :goto_6
    sub-float/2addr v5, v6

    sub-float v6, v12, v4

    mul-float v5, v5, v6

    .line 2773
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    sub-float/2addr v3, v7

    mul-float v3, v3, v6

    .line 2774
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2775
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2776
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2777
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setProgressToFullscreen(F)V

    goto :goto_7

    .line 2779
    :cond_c
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2780
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2781
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2782
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2783
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setProgressToFullscreen(F)V

    .line 2784
    invoke-virtual {v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v3

    if-nez v3, :cond_d

    .line 2785
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    :cond_d
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x0

    .line 2791
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 2792
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    .line 2793
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setProgressToFullscreen(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 2796
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 2797
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    .line 2798
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v4, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, v4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v6, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updatePosition(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2801
    :cond_10
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v1, :cond_11

    .line 2802
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v2, v12, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2803
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v2, v12, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    .line 2805
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2806
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2809
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipedBack:Z

    if-eqz v1, :cond_12

    .line 2810
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v2, v12, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_b

    .line 2812
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2814
    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2815
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/GroupCallActivity;->drawingForBlur:Z

    if-eqz v2, :cond_13

    return-void

    .line 2818
    :cond_13
    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$8000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    const/16 v13, 0xd

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v1, :cond_23

    .line 2819
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2820
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2821
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2823
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v15

    const/16 v1, 0x8

    new-array v7, v1, [F

    .line 2826
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 2828
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2829
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float v16, v2, v3

    const/4 v2, 0x0

    .line 2832
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_17

    .line 2834
    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2835
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v5

    if-ne v4, v5, :cond_15

    .line 2836
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v2

    goto :goto_d

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2841
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v2

    :cond_17
    :goto_d
    move-object v5, v2

    if-eqz v5, :cond_1e

    cmpg-float v1, v15, v16

    if-gez v1, :cond_1e

    .line 2845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2846
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    if-nez v1, :cond_18

    .line 2847
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    sub-float v1, v12, v1

    mul-float v1, v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    sub-float v3, v12, v3

    mul-float v3, v3, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v10

    mul-float v4, v4, v10

    add-float/2addr v3, v4

    invoke-virtual {v8, v9, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2850
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2851
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2852
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    goto :goto_e

    .line 2854
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    sub-float v2, v12, v2

    mul-float v1, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 2855
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    sub-float v3, v12, v3

    mul-float v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    :goto_e
    move v10, v1

    .line 2857
    invoke-virtual {v8, v2, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2858
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2859
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getClipHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v11, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v11}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v11

    mul-float v11, v11, v14

    float-to-int v11, v11

    const/16 v19, 0x1f

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v20, v6

    move v6, v11

    move-object v11, v7

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_f

    :cond_1a
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object v11, v7

    .line 2861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2863
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    .line 2864
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v1, v12, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v12, v1

    .line 2865
    invoke-virtual/range {v21 .. v21}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getClipHeight()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2866
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v2, v9, v9, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2867
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    move-object/from16 v3, v21

    goto :goto_10

    :cond_1b
    move-object/from16 v3, v21

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_10
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setProgressToAvatarPreview(F)V

    const/4 v2, 0x0

    :goto_11
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1c

    .line 2869
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v5

    sub-float v5, v12, v5

    mul-float v4, v4, v5

    aput v4, v11, v2

    add-int/lit8 v4, v2, 0x4

    .line 2870
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2873
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    .line 2874
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v5, v20

    invoke-virtual {v5, v2, v11, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2875
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 2876
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2877
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2878
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2879
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2881
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1e

    add-float/2addr v10, v1

    .line 2883
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 2884
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1d

    .line 2885
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v11, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v10, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    move v2, v11

    move v3, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_12

    .line 2887
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2889
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v11, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2890
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v10, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    .line 2891
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    .line 2892
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v11

    invoke-virtual {v8, v3, v3, v1, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2894
    invoke-virtual {v8, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2895
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2900
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v1

    if-nez v1, :cond_20

    .line 2901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2902
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 2903
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    sub-float v1, v12, v1

    mul-float v15, v15, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v2

    sub-float v2, v12, v2

    mul-float v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    mul-float v2, v2, v3

    add-float v2, v16, v2

    invoke-virtual {v8, v9, v15, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2905
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2906
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2907
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2908
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2913
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 2914
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10000(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    sub-float/2addr v12, v1

    mul-float v12, v12, v14

    float-to-int v6, v12

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2916
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2917
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2918
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2919
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2921
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2922
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2923
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2926
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2927
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2928
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2929
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v10, 0x0

    :goto_13
    const/4 v1, 0x2

    if-ge v10, v1, :cond_22

    .line 2932
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_21

    .line 2933
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2934
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2935
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2936
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_21
    const/4 v2, 0x1

    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 2940
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1a

    .line 2943
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v1

    if-eqz v1, :cond_2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2946
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    .line 2947
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 2949
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9800(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2950
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v11, :cond_2a

    .line 2952
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2953
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v1

    if-eq v7, v1, :cond_24

    goto/16 :goto_17

    .line 2957
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2958
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2959
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2960
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getClipHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v16

    cmpg-float v1, v5, v16

    if-gez v1, :cond_26

    .line 2963
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_25

    .line 2964
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v3, v1

    const/16 v17, 0x1f

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v18, v3

    move v3, v5

    move/from16 v19, v4

    move v14, v5

    move/from16 v5, v16

    move v13, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_16

    :cond_25
    move/from16 v19, v4

    move v14, v5

    move v13, v6

    move-object/from16 v18, v7

    .line 2966
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2969
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v2, v19

    invoke-virtual {v8, v13, v14, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2970
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2971
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9700(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 2972
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v3, v12, v1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v12, v2

    .line 2973
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/GroupCallUserCell;->getClipHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 2974
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v9, v9, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2975
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$10100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setAboutVisibleProgress(IF)V

    .line 2976
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$10100(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v8, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v1, v18

    .line 2977
    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2978
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_26
    :goto_17
    const/16 v2, 0xd

    :goto_18
    add-int/lit8 v15, v15, 0x1

    const/16 v13, 0xd

    const/high16 v14, 0x437f0000    # 255.0f

    goto/16 :goto_15

    .line 2981
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 2982
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2983
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 2984
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 2985
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2986
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v1, :cond_28

    .line 2987
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getRenderer()Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19

    .line 2989
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2991
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 2992
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1a

    .line 2993
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2994
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2995
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 2996
    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$10200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 2997
    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2998
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$10200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2999
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2a
    :goto_1a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 3007
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7400(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7300(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$10300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    return v1

    .line 3010
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity;->drawingForBlur:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 3011
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3012
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getX()F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getY()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p4, p4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getY()F

    move-result p4

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3013
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p2, p2, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 3014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v1

    .line 3017
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v0

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 3020
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$10400(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$9600(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p2, v0, :cond_5

    :cond_4
    return v1

    .line 3025
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$9900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity;->drawingForBlur:Z

    if-nez v2, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$8000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    aget-object v0, v0, v1

    if-ne p2, v0, :cond_7

    :cond_6
    return v1

    .line 3028
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/16 v0, 0x4a

    .line 2645
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2646
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$7900(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    .line 2648
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8100(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2651
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8200(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 2652
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8300(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2653
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$8400(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2654
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v4, v0

    sub-float/2addr v1, v4

    add-int/2addr v2, v0

    sub-float v0, v5, v3

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2660
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 2663
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    const/high16 v4, 0x437f0000    # 255.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 2664
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v6, 0x0

    float-to-int v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2665
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$8500(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_1

    .line 2668
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2669
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8700(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$8800(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$8900(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$9000(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v7, v1

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2670
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2673
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    mul-float v0, v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 2674
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2675
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getStatusBarHeight()I

    move-result v0

    int-to-float v9, v0

    .line 2676
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$9100(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9200(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2678
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-eqz v0, :cond_2

    .line 2679
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$9300(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$9400(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getStatusBarHeight()I

    move-result v0

    int-to-float v9, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2684
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 2685
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const-string v1, "voipgroup_actionBar"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2686
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 2605
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2609
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$7700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2610
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 2613
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v9}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2614
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$7;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 2618
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->access$900(Lorg/telegram/ui/GroupCallActivity;Z)V

    return v1

    .line 2622
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7900(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7900(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v3

    const/16 v4, 0x25

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$8000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v0, :cond_2

    .line 2623
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    return v1

    .line 2626
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 3033
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$7600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/GroupCallUserCell;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3034
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/GroupCallActivity;->access$900(Lorg/telegram/ui/GroupCallActivity;Z)V

    return p2

    .line 3037
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 2578
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->localHasVideo:Z

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v4

    if-eq v0, v4, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->wasLayout:Z

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2582
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->localHasVideo:Z

    .line 2583
    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iput-boolean v1, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inLayout:Z

    .line 2584
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2585
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inLayout:Z

    .line 2586
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/GroupCallActivity;->access$7500(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 2587
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$7;->wasLayout:Z

    if-eqz v4, :cond_1

    .line 2589
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 2591
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2592
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2593
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2594
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2596
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2597
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2598
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2599
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 2298
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 2299
    iput-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->ignoreLayout:Z

    .line 2300
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2301
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iput v6, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listWidth:I

    .line 2302
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-le v5, v1, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2303
    :goto_1
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-eq v6, v3, :cond_f

    .line 2304
    sput-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    .line 2306
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_2

    .line 2308
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    const/16 v10, 0x34

    .line 2310
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v10, v6

    .line 2311
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2313
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/GroupCallActivity;->isRtmpLandscapeMode()Z

    move-result v12

    if-ne v6, v12, :cond_6

    :cond_5
    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 2314
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    if-eqz v6, :cond_7

    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v12

    goto :goto_4

    :cond_7
    invoke-static {v12}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v12

    :goto_4
    if-eqz v6, :cond_8

    .line 2315
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5300(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v6

    goto :goto_5

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/ImageView;

    move-result-object v6

    .line 2316
    :goto_5
    invoke-virtual {v12, v11}, Landroid/view/View;->setAlpha(F)V

    .line 2317
    invoke-virtual {v12, v10}, Landroid/view/View;->setScaleX(F)V

    .line 2318
    invoke-virtual {v12, v10}, Landroid/view/View;->setScaleY(F)V

    const/4 v10, 0x0

    .line 2319
    invoke-virtual {v6, v10}, Landroid/view/View;->setAlpha(F)V

    .line 2321
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2322
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2324
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v6, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2325
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2326
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_6

    .line 2328
    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v4

    const v10, 0x3f2fdf3b    # 0.687f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleX(F)V

    .line 2329
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5400(Lorg/telegram/ui/GroupCallActivity;)[Landroid/widget/TextView;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleY(F)V

    .line 2332
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5500(Lorg/telegram/ui/GroupCallActivity;)V

    .line 2334
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    move-result-object v6

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x6

    goto :goto_7

    :cond_b
    const/4 v10, 0x2

    :goto_7
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2335
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2336
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2337
    iput-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->updateRenderers:Z

    .line 2338
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 2339
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5800(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object v6

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v10, :cond_c

    const/4 v10, 0x0

    goto :goto_8

    :cond_c
    const/16 v10, 0x8

    :goto_8
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2342
    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/GroupCallActivity;->isRtmpLandscapeMode()Z

    move-result v6

    if-ne v6, v3, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_f

    .line 2343
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2344
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    .line 2345
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->delayHideUi()V

    .line 2348
    :cond_f
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eq v3, v5, :cond_11

    .line 2349
    sput-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    .line 2350
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    const/16 v5, 0x8

    :goto_a
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2351
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2352
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2353
    iput-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->updateRenderers:Z

    .line 2355
    :cond_11
    iget-boolean v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->updateRenderers:Z

    if-eqz v3, :cond_1c

    .line 2356
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/GroupCallActivity;->access$5900(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 2357
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/GroupCallActivity$ListAdapter;->notifyDataSetChanged()V

    .line 2358
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4, v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->update(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 2359
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v3, :cond_12

    .line 2360
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v3, Lorg/telegram/ui/GroupCallActivity;->tabletGridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4, v3}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->update(ZLorg/telegram/ui/Components/RecyclerListView;)V

    .line 2362
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    goto :goto_b

    :cond_13
    const/16 v5, 0x8

    :goto_b
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2363
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v3, Lorg/telegram/ui/GroupCallActivity;->tabletGridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    iget-object v6, v3, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v10, :cond_14

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v5, v6, v3, v2}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;ZZ)V

    .line 2365
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v5, :cond_16

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v5, 0x1

    :goto_e
    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCallActivity;->access$6102(Lorg/telegram/ui/GroupCallActivity;Z)Z

    .line 2367
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v3, :cond_17

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    .line 2368
    :goto_f
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5, v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 2369
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    const/16 v3, 0x8

    :goto_10
    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2370
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v5, :cond_1a

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v5, :cond_19

    goto :goto_11

    :cond_19
    const/16 v5, 0x8

    goto :goto_12

    :cond_1a
    :goto_11
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2371
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v5, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v7, 0x2

    :goto_13
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2372
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v4, v4}, Lorg/telegram/ui/GroupCallActivity;->access$6200(Lorg/telegram/ui/GroupCallActivity;ZZ)V

    .line 2373
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2374
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 2376
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2377
    iput-boolean v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->updateRenderers:Z

    .line 2378
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2379
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2380
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setIsTablet(Z)V

    const/4 v3, 0x0

    .line 2381
    :goto_14
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1c

    .line 2382
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6300(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2385
    :cond_1c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1d

    .line 2386
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6500(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getStatusBarHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$6600(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v6

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2388
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int v3, v1, v3

    const/16 v5, 0xf5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 2392
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2393
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v6, :cond_1e

    .line 2394
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_15

    .line 2396
    :cond_1e
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_15
    const/4 v5, 0x0

    :goto_16
    const/16 v6, 0x148

    if-ge v5, v8, :cond_20

    .line 2400
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2401
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v10, :cond_1f

    .line 2402
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_17

    .line 2404
    :cond_1f
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2408
    :cond_20
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v5, :cond_21

    .line 2409
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2410
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21
    const/16 v5, 0x96

    .line 2413
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 2415
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2416
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/16 v11, 0x140

    const/4 v12, 0x4

    const/16 v13, 0x3c

    const/16 v14, 0x5a

    const/4 v15, -0x1

    if-eqz v10, :cond_23

    .line 2417
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v10, 0x5

    goto :goto_18

    :cond_22
    const/4 v10, 0x1

    :goto_18
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2418
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2419
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2420
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2421
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2422
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_19

    .line 2423
    :cond_23
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v12, 0x33

    const/16 v16, 0xe

    if-eqz v10, :cond_24

    .line 2424
    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2425
    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2426
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2427
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2428
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2429
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v7, 0x0

    goto :goto_19

    .line 2432
    :cond_24
    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2433
    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2434
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    .line 2435
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2436
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v12, v12, v17

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2437
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v7, v10

    .line 2440
    :goto_19
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v12, 0x51

    if-eqz v10, :cond_25

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v10, :cond_25

    .line 2441
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d

    .line 2444
    :cond_25
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2445
    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v10}, Lorg/telegram/ui/GroupCallActivity;->access$6800(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 2446
    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2448
    sget-boolean v17, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v17, :cond_27

    .line 2449
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/16 v8, 0x55

    goto :goto_1a

    :cond_26
    const/16 v8, 0x51

    :goto_1a
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2450
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1b

    .line 2452
    :cond_27
    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2455
    :goto_1b
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2456
    iget-object v8, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2457
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2459
    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v5, :cond_29

    .line 2460
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/16 v5, 0x55

    goto :goto_1c

    :cond_28
    const/16 v5, 0x51

    :goto_1c
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2461
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1d

    .line 2463
    :cond_29
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2467
    :goto_1d
    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v6, 0x9

    if-eqz v5, :cond_2a

    .line 2468
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v4, v8, v4, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1e

    .line 2470
    :cond_2a
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v8, v4, v6, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2474
    :goto_1e
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7000(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2475
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/16 v8, 0x35

    const/16 v10, 0xc8

    if-eqz v6, :cond_2c

    .line 2476
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2477
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2478
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$3000(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v12, 0x55

    :cond_2b
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2479
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1f

    .line 2480
    :cond_2c
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v6, :cond_2d

    .line 2481
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2482
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2483
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1f

    .line 2485
    :cond_2d
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2486
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2487
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2488
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2491
    :goto_1f
    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v5, :cond_2e

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v5, :cond_2e

    .line 2492
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2493
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2494
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2495
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2496
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7300(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2497
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2498
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7400(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2499
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_20

    .line 2501
    :cond_2e
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2502
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2503
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7200(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2504
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2505
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7300(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2506
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2507
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7400(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2508
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2511
    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, v5, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2512
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v10, 0x50

    if-eqz v6, :cond_30

    .line 2513
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    if-eq v6, v2, :cond_2f

    .line 2514
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2516
    :cond_2f
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2517
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2518
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v6, 0x64

    .line 2519
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2520
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_21

    .line 2522
    :cond_30
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_31

    .line 2523
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v6, v6, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2525
    :cond_31
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2526
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2527
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2528
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x64

    .line 2529
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2531
    :goto_21
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$7400(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2532
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v5, 0x43818000    # 259.0f

    .line 2534
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v6, v3, 0x5

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2535
    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v6, :cond_32

    const/4 v5, 0x0

    goto :goto_22

    :cond_32
    sub-int v5, v3, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2536
    :goto_22
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    if-ne v6, v5, :cond_33

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    if-eq v6, v7, :cond_34

    .line 2537
    :cond_33
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5700(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v4, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2539
    :cond_34
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    if-eqz v6, :cond_37

    sub-int/2addr v3, v5

    .line 2540
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    const/4 v6, 0x2

    div-int/2addr v3, v6

    add-int/2addr v5, v3

    .line 2541
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x1e

    .line 2542
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2544
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2545
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2547
    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v7}, Lorg/telegram/ui/GroupCallActivity;->access$000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2549
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    if-lt v3, v8, :cond_36

    iget v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    const/16 v6, 0xe7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v1, v6

    if-le v3, v6, :cond_35

    goto :goto_23

    .line 2554
    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2555
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_24

    .line 2550
    :cond_36
    :goto_23
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$300(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2551
    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$400(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x14

    .line 2552
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v5, v3

    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_37
    :goto_24
    const/4 v3, 0x0

    .line 2560
    :goto_25
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_38

    .line 2561
    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$6400(Lorg/telegram/ui/GroupCallActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v6}, Lorg/telegram/ui/GroupCallActivity;->access$5000(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2564
    :cond_38
    iput-boolean v4, v0, Lorg/telegram/ui/GroupCallActivity$7;->ignoreLayout:Z

    const/high16 v2, 0x40000000    # 2.0f

    .line 2565
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v2, p1

    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2566
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    .line 2567
    iget v2, v0, Lorg/telegram/ui/GroupCallActivity$7;->lastSize:I

    if-eq v1, v2, :cond_39

    .line 2568
    iput v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->lastSize:I

    .line 2569
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/GroupCallActivity;->access$900(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 2571
    :cond_39
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2632
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 2637
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$7;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2640
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
