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

    .line 7550
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/16 p1, 0x21

    .line 7556
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardScrollValue:I

    const/4 p1, 0x0

    .line 7560
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    const/16 p1, 0x64

    .line 7562
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const/16 p1, 0x200

    .line 7576
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 7567
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7568
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21800(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    .line 7569
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$21602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7571
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$22002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7572
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$22102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7573
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->access$22202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7574
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22300(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7575
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_1

    .line 7576
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7578
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7579
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7580
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    .line 7581
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    .line 7582
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$16702(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 7585
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7586
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22102(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 7588
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$21602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 7589
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7590
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7591
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7592
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->access$22102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7594
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_5

    .line 7595
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7597
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7599
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7600
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->setHiddenByScroll(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 7607
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7608
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7609
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect;->scroll(II)V

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    .line 7611
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$27;->scrollUp:Z

    .line 7612
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eqz p3, :cond_2

    .line 7613
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-ne v3, v0, :cond_a

    .line 7614
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 7615
    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$27;->scrollUp:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$22700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 7617
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_a

    if-eq v1, v2, :cond_a

    .line 7618
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-lt v3, v1, :cond_8

    .line 7622
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 7623
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_5

    .line 7624
    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    goto :goto_2

    .line 7625
    :cond_5
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_6

    .line 7626
    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 7629
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    move v3, p2

    :goto_3
    if-nez v3, :cond_a

    if-eqz v4, :cond_a

    .line 7635
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$22600(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 7636
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$22602(Lorg/telegram/ui/ChatActivity;I)I

    goto :goto_5

    .line 7616
    :cond_9
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, p2}, Lorg/telegram/ui/ChatActivity;->access$22602(Lorg/telegram/ui/ChatActivity;I)I

    .line 7641
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v0, :cond_b

    .line 7642
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$22702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7643
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz p3, :cond_b

    .line 7644
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_b
    if-eqz p3, :cond_c

    .line 7648
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 7649
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_c
    if-eqz p3, :cond_e

    .line 7651
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22800(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 7652
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, p1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_d

    .line 7653
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22900(Lorg/telegram/ui/ChatActivity;)V

    .line 7654
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    .line 7656
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23000(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7658
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23100(Lorg/telegram/ui/ChatActivity;Z)V

    if-eq v1, v2, :cond_14

    .line 7660
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    if-nez v1, :cond_f

    .line 7661
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23200(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_f

    if-ltz p3, :cond_14

    .line 7663
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$23302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7664
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_7

    :cond_f
    const/4 p1, 0x0

    if-lez p3, :cond_10

    .line 7668
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    .line 7669
    iget v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7670
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_14

    .line 7671
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7672
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7673
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7674
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23502(Lorg/telegram/ui/ChatActivity;Z)Z

    goto :goto_7

    .line 7679
    :cond_10
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_13

    .line 7680
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    .line 7681
    iget v3, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardScrollValue:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    .line 7682
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7683
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    goto :goto_6

    .line 7684
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuIsShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 7685
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotCommands()V

    goto :goto_6

    .line 7687
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23600(Lorg/telegram/ui/ChatActivity;)V

    .line 7689
    :goto_6
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->hideKeyboardDy:F

    .line 7693
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 7694
    iget v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    int-to-float v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7695
    iget v2, p0, Lorg/telegram/ui/ChatActivity$27;->scrollValue:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 7696
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/ChatActivity;->access$23302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 7697
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7698
    iput p1, p0, Lorg/telegram/ui/ChatActivity$27;->totalDy:F

    .line 7704
    :cond_14
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 7705
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 7706
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onScrolled(I)V

    .line 7707
    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 7709
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$27;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$23700(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method
