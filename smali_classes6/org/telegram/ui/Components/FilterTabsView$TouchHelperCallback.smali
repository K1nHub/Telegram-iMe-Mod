.class public Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field private resetDefaultPosition:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method public static synthetic $r8$lambda$umPH2H3qamGsUeWgWH6mreBnUZo(Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 2108
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2144
    new-instance p1, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->resetDefaultPosition:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 2145
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2148
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2149
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$1100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2150
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5800(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->moveElementToStart(I)V

    .line 2151
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->onDefaultTabMoved()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 2178
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2179
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2180
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 2118
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2119
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 2120
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4500(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2121
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 2126
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5200(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2127
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$1100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz p1, :cond_2

    .line 2128
    :cond_1
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0xc

    .line 2130
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 2136
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5200(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2137
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2140
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5800(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 2162
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2163
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 2165
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->resetDefaultPosition:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TouchHelperCallback;->resetDefaultPosition:Ljava/lang/Runnable;

    const-wide/16 v1, 0x140

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2168
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
