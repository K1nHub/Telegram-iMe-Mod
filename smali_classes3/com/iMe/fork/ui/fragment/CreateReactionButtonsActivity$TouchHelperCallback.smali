.class public final Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1115
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1157
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->URL_BUTTON:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget p2, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_REACTION:I

    if-eq p1, p2, :cond_0

    .line 1124
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 1125
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getDialogTypeByPosition(I)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object v0

    .line 1134
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1133
    invoke-virtual {v0, v1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->getDialogTypeByPosition(I)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1139
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$TouchHelperCallback;->this$0:Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;->access$getListView(Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    if-eqz p1, :cond_0

    .line 1146
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1148
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
