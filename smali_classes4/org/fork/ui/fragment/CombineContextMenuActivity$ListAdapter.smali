.class final Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CombineContextMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/CombineContextMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombineContextMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CombineContextMenuActivity.kt\norg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,229:1\n1#2:230\n*E\n"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/CombineContextMenuActivity;Landroid/content/Context;)V
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

    .line 151
    iput-object p1, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getMediaSwitchTopicsBarRow$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_0

    .line 180
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 207
    :goto_0
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 208
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    instance-of v3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_1

    sget v3, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v0, v3, :cond_1

    .line 211
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 212
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_message_popup_aggregator:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 214
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v2, :cond_3

    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    if-ne v0, v2, :cond_3

    .line 215
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getMessagesPopupItems$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)[Lorg/fork/enums/MessagePopupItem;

    move-result-object v0

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 217
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p2}, Lorg/fork/enums/MessagePopupItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getPhotoViewerMenuItems$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)[Lorg/fork/enums/PhotoViewerMenuItem;

    move-result-object v0

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 220
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p2}, Lorg/fork/enums/PhotoViewerMenuItem;->getTitleResId()I

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

    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/fork/ui/view/MediaSwitchTopicsBar;

    iget-object p2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "parentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v0

    .line 192
    new-instance v1, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {v1, v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lorg/fork/ui/fragment/CombineContextMenuActivity;)V

    .line 186
    invoke-direct {p1, p2, v0, v1}, Lorg/fork/ui/view/MediaSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    .line 192
    iget-object p2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {p2, p1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setTopicsBar$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;Lorg/fork/ui/view/MediaSwitchTopicsBar;)V

    goto :goto_0

    .line 193
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;ZZ)V

    const-string/jumbo p2, "windowBackgroundWhite"

    .line 198
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 202
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 161
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 163
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 164
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 165
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setMediaSwitchTopicsBarRow$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 166
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 167
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getMessagesPopupItems$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)[Lorg/fork/enums/MessagePopupItem;

    move-result-object v2

    array-length v2, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getPhotoViewerMenuItems$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)[Lorg/fork/enums/PhotoViewerMenuItem;

    move-result-object v2

    array-length v2, v2

    :goto_0
    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 168
    iget-object v0, p0, Lorg/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lorg/fork/ui/fragment/CombineContextMenuActivity;I)V

    return-void
.end method
