.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V
    .locals 0

    .line 8083
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private getDialog(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 8105
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_2

    .line 8106
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 8109
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 8150
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8151
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 8091
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8092
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 8094
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->getDialog(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8095
    iget-boolean p1, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 8096
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 8098
    :cond_1
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 8126
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8129
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->getDialog(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    .line 8130
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->getDialog(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 8131
    iget-boolean v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v1, :cond_1

    .line 8132
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 8133
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 8134
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8135
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 8136
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 8137
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11302(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Z)Z

    return p2

    :cond_1
    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 8114
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8115
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    :cond_0
    if-nez p2, :cond_1

    .line 8118
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11200(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8119
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;->this$1:Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->access$11200(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 8121
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
