.class Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V
    .locals 0

    .line 1928
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1929
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public moveElementToStart(I)V
    .locals 7

    .line 2037
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p1, :cond_8

    if-lt p1, v0, :cond_0

    goto/16 :goto_5

    .line 2041
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    .line 2042
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2043
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    add-int/lit8 v3, p1, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 2046
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2048
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v4, 0x0

    .line 2049
    iput v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 2050
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2051
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2052
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2053
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iput v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    move v1, v4

    :goto_1
    if-gt v1, p1, :cond_2

    .line 2055
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iput v1, v3, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 2056
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput v1, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_2
    if-gt v0, p1, :cond_7

    .line 2059
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 2060
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    if-ne v0, p1, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v0, 0x1

    :goto_3
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1402(Lorg/telegram/ui/Components/FilterTabsView;I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$5202(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2062
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 2063
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    if-ne v0, p1, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v0, 0x1

    :goto_4
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1502(Lorg/telegram/ui/Components/FilterTabsView;I)I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$5302(Lorg/telegram/ui/Components/FilterTabsView;I)I

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2066
    :cond_7
    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v0, p1, v2}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageReorder(II)V

    .line 2070
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5400(Lorg/telegram/ui/Components/FilterTabsView;)V

    .line 2072
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$5502(Lorg/telegram/ui/Components/FilterTabsView;Z)Z

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1954
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1955
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1956
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->setTab(Lorg/telegram/ui/Components/FilterTabsView$Tab;I)V

    .line 1957
    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result p2

    if-eq v0, p2, :cond_2

    .line 1958
    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView$TabView;)Lorg/telegram/ui/Components/FilterTabsView$Tab;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->access$4902(Lorg/telegram/ui/Components/FilterTabsView$TabView;F)F

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1949
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;-><init>(Lorg/telegram/ui/Components/FilterTabsView;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public swapElements(II)V
    .locals 7

    .line 1970
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1972
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5000(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    move v2, p2

    .line 1977
    :goto_0
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1979
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$5100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v4

    if-nez v4, :cond_1

    sub-int/2addr v1, v3

    sub-int/2addr v2, v3

    :cond_1
    if-ltz v1, :cond_7

    if-ltz v2, :cond_7

    if-ge v1, v0, :cond_7

    if-ge v2, v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 1987
    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    .line 1988
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1989
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1990
    iget v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1991
    iget v6, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    iput v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1992
    iput v5, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1993
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1994
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1996
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1997
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;

    .line 1998
    iget v2, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 1999
    iget v3, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iput v3, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 2000
    iput v2, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 2002
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2003
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2005
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2006
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$4800(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2008
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    iget v4, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3, v4}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->onPageReorder(II)V

    .line 2010
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 2011
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5202(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2012
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1402(Lorg/telegram/ui/Components/FilterTabsView;I)I

    goto :goto_1

    .line 2013
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 2014
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5202(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2015
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget v3, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1402(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2018
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 2019
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, p2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5302(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2020
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget v3, v0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1502(Lorg/telegram/ui/Components/FilterTabsView;I)I

    goto :goto_2

    .line 2021
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$5300(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v2

    if-ne v2, p2, :cond_6

    .line 2022
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5302(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2023
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget v3, v1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView;->access$1502(Lorg/telegram/ui/Components/FilterTabsView;I)I

    .line 2026
    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4700(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$5400(Lorg/telegram/ui/Components/FilterTabsView;)V

    .line 2031
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$5502(Lorg/telegram/ui/Components/FilterTabsView;Z)Z

    .line 2032
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/FilterTabsView;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2033
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_7
    :goto_3
    return-void
.end method
