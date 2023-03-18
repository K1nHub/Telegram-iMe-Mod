.class final Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/topics/TopicsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicsBar;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/topics/TopicsBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsBar;->access$isEditing$p(Lcom/smedialink/ui/topics/TopicsBar;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsBar;->access$getListAdapter(Lcom/smedialink/ui/topics/TopicsBar;)Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;->isNoTopicPosition(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsBar;->access$isEditing$p(Lcom/smedialink/ui/topics/TopicsBar;)Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsBar;->access$getListAdapter(Lcom/smedialink/ui/topics/TopicsBar;)Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;->isNoTopicPosition(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsBar;->access$getListAdapter(Lcom/smedialink/ui/topics/TopicsBar;)Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;->isNoTopicPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsBar;->access$getListAdapter(Lcom/smedialink/ui/topics/TopicsBar;)Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/smedialink/ui/topics/TopicsBar$ListAdapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsBar$TouchHelperCallback;->this$0:Lcom/smedialink/ui/topics/TopicsBar;

    invoke-virtual {v0}, Lcom/smedialink/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
