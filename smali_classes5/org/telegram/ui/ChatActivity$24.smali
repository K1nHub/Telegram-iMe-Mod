.class Lorg/telegram/ui/ChatActivity$24;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field computingScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$HRw06pIwFD0EEA0ZDUHmazdSfsA(Lorg/telegram/ui/ChatActivity$24;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$24;->lambda$onLayoutChildren$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;IIZ)V
    .locals 0

    .line 7299
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private synthetic lambda$onLayoutChildren$0()V
    .locals 2

    .line 7424
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 7335
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    .line 7336
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 7337
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 7343
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    .line 7344
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 7345
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    .line 7351
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    .line 7352
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    .line 7353
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    return p1
.end method

.method protected getParentStart()I
    .locals 1

    .line 7311
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 7312
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 7319
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 7320
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0

    .line 7322
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getStartAfterPadding()I

    move-result v0

    return v0
.end method

.method public getStartForFixGap()I
    .locals 1

    .line 7305
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 7327
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$24;->computingScroll:Z

    if-eqz v0, :cond_0

    .line 7328
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, v1, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 7330
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method protected hasSiblingChild(I)Z
    .locals 7

    .line 7389
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$21300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 7390
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    .line 7391
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 7392
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 7393
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7395
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 7396
    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v2, v3, :cond_3

    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v2, v3, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    .line 7399
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 7401
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 7405
    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 7417
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 7418
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 7421
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7423
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 7424
    new-instance p1, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$24$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$24;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public scrollToPositionWithOffset(IIZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 7360
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 7362
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 7431
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 7432
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    invoke-static {v2, p1}, Lorg/telegram/ui/ChatActivity;->access$16816(Lorg/telegram/ui/ChatActivity;F)F

    .line 7433
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 7434
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    float-to-int p1, p1

    .line 7435
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$16802(Lorg/telegram/ui/ChatActivity;F)F

    .line 7436
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_0
    move p1, v1

    .line 7442
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    .line 7446
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7447
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v6, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    .line 7448
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v9, v8, Lorg/telegram/ui/ChatActivity;->reversed:Z

    if-eqz v9, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v4

    :goto_2
    if-ne v6, v8, :cond_4

    .line 7450
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    .line 7451
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_3

    :cond_3
    move v2, p1

    .line 7453
    :goto_3
    invoke-super {p0, v2, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    move v3, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    move v3, v2

    :goto_4
    if-nez v3, :cond_6

    .line 7459
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 7462
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_b

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p2

    if-nez p2, :cond_b

    if-lez p1, :cond_b

    if-nez v2, :cond_b

    .line 7463
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isMultiselect()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-gez p2, :cond_b

    .line 7464
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 7465
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    .line 7467
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 7468
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 7469
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 7473
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/16 p3, 0x6e

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float p2, p2, v3

    const v3, 0x3d4ccccd    # 0.05f

    const v5, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez p2, :cond_9

    .line 7474
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr v6, p2

    mul-float/2addr v6, p3

    mul-float/2addr p2, v5

    :goto_5
    add-float v3, v6, p2

    goto :goto_6

    .line 7476
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/16 v7, 0xa0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float p2, p2, v7

    if-gez p2, :cond_a

    .line 7477
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    const/16 p3, 0x32

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr v6, p2

    mul-float/2addr v6, v5

    mul-float/2addr p2, v3

    goto :goto_5

    .line 7483
    :cond_a
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    mul-float/2addr p1, v3

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$16816(Lorg/telegram/ui/ChatActivity;F)F

    float-to-int p1, p1

    .line 7484
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 7485
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 7487
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_c

    .line 7488
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_7

    .line 7490
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7492
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 7493
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_d

    move v1, v4

    :cond_d
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_e
    return v2
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 1

    .line 7380
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 7381
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 7372
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$24;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$16702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7373
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 7374
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 7375
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
