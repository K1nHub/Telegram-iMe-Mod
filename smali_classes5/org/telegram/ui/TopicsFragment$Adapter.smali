.class Lorg/telegram/ui/TopicsFragment$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "TopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 2730
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/TopicsFragment$1;)V
    .locals 0

    .line 2730
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$Adapter;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method


# virtual methods
.method public getArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/TopicsFragment$Item;",
            ">;"
        }
    .end annotation

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$4600(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$6800(Lorg/telegram/ui/TopicsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 2832
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2734
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 2737
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 2837
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 2854
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsFragment;->access$4502(Lorg/telegram/ui/TopicsFragment;I)I

    .line 2855
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 2801
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_a

    .line 2802
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    .line 2804
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2805
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_0
    move-object v8, v1

    .line 2807
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2809
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2810
    iget-object v2, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v9, 0x0

    if-nez v2, :cond_1

    move v2, v9

    goto :goto_0

    :cond_1
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 2811
    :goto_0
    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v11, 0x1

    if-ne v2, v10, :cond_2

    .line 2812
    iget v2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->position:I

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-boolean v2, v2, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    if-eqz v2, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    move v12, v9

    :goto_1
    if-eqz v1, :cond_8

    .line 2814
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->access$7000(Lorg/telegram/ui/TopicsFragment;)I

    move-result v2

    invoke-direct {v5, v2, v1, v9, v9}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 2815
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v2, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v3, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v6

    move-object v1, p1

    move-object v2, v0

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V

    .line 2816
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewIsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v11

    :goto_3
    iput-boolean v1, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->drawDivider:Z

    .line 2817
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v1, :cond_6

    if-eqz v8, :cond_5

    iget-boolean v2, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez v2, :cond_6

    :cond_5
    move v2, v11

    goto :goto_4

    :cond_6
    move v2, v9

    :goto_4
    iput-boolean v2, p1, Lorg/telegram/ui/Cells/DialogCell;->fullSeparator:Z

    if-eqz v1, :cond_7

    .line 2818
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v1, :cond_7

    move v1, v11

    goto :goto_5

    :cond_7
    move v1, v9

    :goto_5
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/DialogCell;->setPinForced(Z)V

    .line 2819
    iput p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->position:I

    .line 2822
    :cond_8
    invoke-virtual {p1, v0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 2824
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v12}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 2825
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->access$7100(Lorg/telegram/ui/TopicsFragment;)I

    move-result p2

    if-ne p2, v10, :cond_9

    move v9, v11

    :cond_9
    invoke-virtual {p1, v9}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 2826
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->access$7200(Lorg/telegram/ui/TopicsFragment;)Z

    move-result p2

    invoke-virtual {p1, p2, v11}, Lorg/telegram/ui/Cells/DialogCell;->onReorderStateChanged(ZZ)V

    :cond_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    if-nez p2, :cond_0

    .line 2748
    new-instance p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 2749
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/DialogCell;->setCompactMode(Z)V

    .line 2750
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$6900(Lorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    iput-boolean p1, p2, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    .line 2751
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$3200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/DialogCell;->setArchivedPullAnimation(Lorg/telegram/ui/Components/PullForegroundDrawable;)V

    .line 2752
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2754
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    new-instance v0, Lorg/telegram/ui/TopicsFragment$Adapter$1;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/TopicsFragment$Adapter$1;-><init>(Lorg/telegram/ui/TopicsFragment$Adapter;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/TopicsFragment;->access$5102(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 2791
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x18

    .line 2792
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/4 p1, 0x1

    .line 2793
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 2794
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 2795
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public swapElements(II)V
    .locals 2

    .line 2841
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$4600(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2845
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2846
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$4800(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2847
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$Adapter;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$4800(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2849
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method
