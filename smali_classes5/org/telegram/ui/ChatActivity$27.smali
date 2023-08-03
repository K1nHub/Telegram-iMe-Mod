.class Lorg/telegram/ui/ChatActivity$27;
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

    .line 7418
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/16 p1, 0x21

    .line 7424
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardScrollValue:I

    const/4 p1, 0x0

    .line 7428
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    const/16 p1, 0x64

    .line 7430
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const/16 p1, 0x200

    .line 7444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 7435
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7436
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$22800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$22700(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    .line 7437
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$22502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7439
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$22902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7440
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$23002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7441
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$23102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7442
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7443
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_1

    .line 7444
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7446
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7447
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7448
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    .line 7449
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)V

    .line 7450
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$17002(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 7453
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7454
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23002(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 7456
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$22502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7457
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7458
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7459
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7460
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$23002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7462
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_5

    .line 7463
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7465
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7467
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7468
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->setHiddenByScroll(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 7475
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 7476
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$27;->scrollUp:Z

    .line 7477
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eqz p3, :cond_1

    .line 7478
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Z

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

    .line 7479
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 7480
    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$27;->scrollUp:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$23500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    .line 7482
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_9

    if-eq v1, v2, :cond_9

    .line 7483
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-lt v3, v1, :cond_7

    .line 7487
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 7488
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_4

    .line 7489
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    goto :goto_2

    .line 7490
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_5

    .line 7491
    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 7494
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    move v3, p2

    :goto_3
    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 7500
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 7501
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$23402(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_5

    .line 7481
    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$23402(Lorg/telegram/ui/ChatActivity;I)I

    .line 7506
    :cond_9
    :goto_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v0, :cond_a

    .line 7507
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$23502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7508
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3400(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p3, :cond_a

    .line 7509
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_a
    if-eqz p3, :cond_b

    .line 7513
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_b
    if-eqz p3, :cond_d

    .line 7515
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23600(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 7516
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, p1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_c

    .line 7517
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23700(Lorg/telegram/ui/ChatActivity;)V

    .line 7518
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)V

    .line 7520
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7522
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;Z)V

    if-eq v1, v2, :cond_13

    .line 7524
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    if-nez v1, :cond_e

    .line 7525
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24000(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_e

    if-ltz p3, :cond_13

    .line 7527
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$24102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7528
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_7

    :cond_e
    const/4 p1, 0x0

    if-lez p3, :cond_f

    .line 7532
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 7533
    iget v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7534
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    .line 7535
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7536
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$24102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7537
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7538
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$24302(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_7

    .line 7543
    :cond_f
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_12

    .line 7544
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    .line 7545
    iget v3, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardScrollValue:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 7546
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7547
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    goto :goto_6

    .line 7548
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7549
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    goto :goto_6

    .line 7551
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24400(Lorg/telegram/ui/ChatActivity;)V

    .line 7553
    :goto_6
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    .line 7557
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 7558
    iget v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7559
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 7560
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/ChatActivity;->access$24102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7561
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7562
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7568
    :cond_13
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 7569
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 7570
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onScrolled(I)V

    .line 7571
    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 7573
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$24500(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method
