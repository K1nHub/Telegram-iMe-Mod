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
    value = "SMAP\nCombineContextMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CombineContextMenuActivity.kt\ncom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n1#2:402\n*E\n"
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

    .line 299
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    .line 300
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getMediaSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_0

    .line 329
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 367
    :goto_0
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 368
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v2, :cond_1

    .line 371
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 372
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_message_popup_aggregator:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 373
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v0

    .line 371
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 378
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v2, :cond_3

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

    if-ne v0, v2, :cond_3

    .line 379
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getMessagesPopupItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/MessagePopupItem;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 381
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 382
    invoke-virtual {p2}, Lcom/iMe/fork/enums/MessagePopupItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 381
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getPhotoViewerMenuItems$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)[Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v0, p2

    .line 388
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 389
    invoke-virtual {p2}, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 388
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-ne p2, p1, :cond_0

    new-instance v0, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;

    .line 338
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->getCurrentMessagesContextMenu()Z

    move-result v2

    .line 346
    new-instance v3, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-direct {v3, v4}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)V

    .line 337
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    .line 346
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v1, v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;Lcom/iMe/fork/ui/view/MediaSwitchTopicsBar;)V

    goto :goto_0

    .line 348
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 349
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;ZZ)V

    .line 353
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 356
    :goto_0
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    if-ne p2, p1, :cond_2

    const/16 p1, 0x24

    .line 358
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    .line 356
    :goto_1
    invoke-direct {v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final updateRows()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 310
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 312
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 313
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 314
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setMediaSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 315
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    .line 316
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

    .line 317
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity;I)V

    return-void
.end method
