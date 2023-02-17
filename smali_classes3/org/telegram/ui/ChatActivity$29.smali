.class Lorg/telegram/ui/ChatActivity$29;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.field private hideKeyboardDy:F

.field private final hideKeyboardScrollValue:I

.field private scrollUp:Z

.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 8486
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/16 p1, 0x21

    .line 8492
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->hideKeyboardScrollValue:I

    const/4 p1, 0x0

    .line 8496
    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    const/16 p1, 0x64

    .line 8498
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const/16 p1, 0x200

    .line 8513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 8503
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$29800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 8504
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$29800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$29900(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    .line 8505
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$29802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 8507
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$30202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8508
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$23902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8509
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$30302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8510
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$30400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8511
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$29;->scrollUp:Z

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$24000(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8512
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_1

    .line 8513
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8515
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8516
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 8517
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    .line 8518
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)V

    .line 8519
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$25602(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 8522
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8523
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23902(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 8525
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$29802(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 8526
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8527
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$30202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8528
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$30302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8529
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8531
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_5

    .line 8532
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8534
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8536
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8537
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->setHiddenByScroll(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 8544
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8545
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$29;->scrollUp:Z

    .line 8546
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eqz p3, :cond_1

    .line 8547
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$25600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-ne v3, v0, :cond_9

    .line 8548
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 8549
    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$29;->scrollUp:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$30600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    .line 8551
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_9

    if-eq v1, v2, :cond_9

    .line 8552
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-lt v3, v1, :cond_7

    .line 8556
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 8557
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_4

    .line 8558
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    goto :goto_2

    .line 8559
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_5

    .line 8560
    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 8563
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 8569
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$30500(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 8570
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$30502(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_5

    .line 8550
    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$30502(Lorg/telegram/ui/ChatActivity;I)I

    .line 8576
    :cond_9
    :goto_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v0, :cond_a

    .line 8577
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$30602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8578
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3400(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p3, :cond_a

    .line 8579
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_a
    if-eqz p3, :cond_b

    .line 8583
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_b
    if-eqz p3, :cond_d

    .line 8585
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$30200(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$30700(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 8586
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, p1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_c

    .line 8587
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)V

    .line 8588
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)V

    .line 8590
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$30800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8592
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$30900(Lorg/telegram/ui/ChatActivity;Z)V

    if-eq v1, v2, :cond_13

    .line 8594
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    if-nez v1, :cond_e

    .line 8595
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31000(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_e

    if-ltz p3, :cond_13

    .line 8597
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$31102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8598
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31200(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_7

    :cond_e
    const/4 p1, 0x0

    if-lez p3, :cond_f

    .line 8602
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 8603
    iget v1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    .line 8604
    iget v2, p0, Lorg/telegram/ui/ChatActivity$29;->scrollValue:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    .line 8605
    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    .line 8606
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8607
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8608
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$31302(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_7

    .line 8613
    :cond_f
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_12

    .line 8614
    iget v2, p0, Lorg/telegram/ui/ChatActivity$29;->hideKeyboardDy:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ChatActivity$29;->hideKeyboardDy:F

    .line 8615
    iget v3, p0, Lorg/telegram/ui/ChatActivity$29;->hideKeyboardScrollValue:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 8616
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8617
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    goto :goto_6

    .line 8618
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8619
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    goto :goto_6

    .line 8621
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;)V

    .line 8623
    :goto_6
    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->hideKeyboardDy:F

    .line 8627
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$31300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 8628
    iget v1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    .line 8629
    iget v2, p0, Lorg/telegram/ui/ChatActivity$29;->scrollValue:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 8630
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/ChatActivity;->access$31102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 8631
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$31200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 8632
    iput p1, p0, Lorg/telegram/ui/ChatActivity$29;->totalDy:F

    .line 8638
    :cond_13
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 8639
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 8640
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onScrolled(I)V

    .line 8641
    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 8643
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$29;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$31500(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method
