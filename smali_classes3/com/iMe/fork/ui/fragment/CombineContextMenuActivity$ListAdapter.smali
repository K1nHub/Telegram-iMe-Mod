.class final Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CombineContextMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombineContextMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CombineContextMenuActivity.kt\ncom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getMediaSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_0

    .line 179
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 206
    :goto_0
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 207
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    instance-of v3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_1

    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v0, v3, :cond_1

    .line 210
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 211
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_message_popup_aggregator:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 213
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v2, :cond_3

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    if-ne v0, v2, :cond_3

    .line 214
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getMessagesPopupItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/MessagePopupItem;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 216
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/MessagePopupItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getPhotoViewerMenuItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 219
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "parentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v0

    .line 191
    new-instance v1, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)V

    .line 185
    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    .line 191
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {p2, p1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;)V

    goto :goto_0

    .line 192
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto :goto_0

    .line 196
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;ZZ)V

    const-string p2, "windowBackgroundWhite"

    .line 197
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 201
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 160
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 162
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 163
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 164
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setMediaSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 165
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 166
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getMessagesPopupItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/MessagePopupItem;

    move-result-object v2

    array-length v2, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getPhotoViewerMenuItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    move-result-object v2

    array-length v2, v2

    :goto_0
    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 167
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    return-void
.end method