.class final Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/view/MessageMoreActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubMenuItemsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/view/MessageMoreActionsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_TOP:I

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_BOTTOM:I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;

    if-eqz p1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_GAP:I

    goto :goto_0

    .line 66
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_MIDDLE:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_GAP:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem;

    .line 91
    instance-of v0, p2, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.ActionBar.ActionBarMenuSubItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    check-cast p2, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;

    invoke-virtual {p2}, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Option;->getIconResId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 92
    :cond_0
    instance-of p2, p2, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;

    if-eqz p2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SUB_ITEM_GAP:I

    const/4 v0, -0x1

    if-ne p2, p1, :cond_0

    .line 72
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    .line 73
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 75
    invoke-static {p2}, Lcom/iMe/fork/ui/view/MessageMoreActionsView;->access$getGapItemHeight(Lcom/iMe/fork/ui/view/MessageMoreActionsView;)I

    move-result p2

    .line 73
    invoke-direct {v1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemView;

    iget-object v1, p0, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemsAdapter;->this$0:Lcom/iMe/fork/ui/view/MessageMoreActionsView;

    invoke-direct {p1, v1, p2}, Lcom/iMe/fork/ui/view/MessageMoreActionsView$SubMenuItemView;-><init>(Lcom/iMe/fork/ui/view/MessageMoreActionsView;I)V

    .line 80
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
