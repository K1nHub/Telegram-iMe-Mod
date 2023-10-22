.class final Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertButtonsSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertButtonsSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertButtonsSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,555:1\n1747#2,3:556\n1#3:559\n*S KotlinDebug\n*F\n+ 1 ChatAttachAlertButtonsSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter\n*L\n450#1:556,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 436
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    goto :goto_1

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getBotsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_1

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getWalletBotRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getBotSuggestionsRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_1

    .line 467
    :cond_5
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 511
    :goto_0
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 512
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "holder.itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    if-ne v0, v3, :cond_2

    instance-of v3, p1, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    if-eqz v3, :cond_2

    .line 515
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    check-cast p1, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    .line 517
    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v4

    sub-int/2addr p2, v4

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 520
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 518
    :cond_1
    invoke-virtual {p1, p2, v2, v1}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;->setButton(Lcom/iMe/fork/enums/ChatAttachAlertButton;ZZ)V

    goto :goto_1

    .line 529
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v0, v2, :cond_3

    instance-of v2, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_3

    .line 530
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getBotsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 531
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v0, "FilterBots"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 535
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v2, :cond_5

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_5

    .line 536
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getWalletBotRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 537
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 538
    sget p2, Lorg/telegram/messenger/R$string;->drawer_wallet_bot:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 539
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatAttachAlertWalletBotEnabled:Z

    .line 537
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 542
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getBotSuggestionsRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 543
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 544
    sget p2, Lorg/telegram/messenger/R$string;->chat_attach_alert_bot_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 545
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getNewSuggest$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)Z

    move-result v0

    .line 543
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    const-string v0, "parentActivity"

    if-ne p2, p1, :cond_0

    new-instance v1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    .line 476
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 478
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    .line 483
    new-instance v4, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-direct {v4, v5, p0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;)V

    .line 475
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V

    .line 483
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    goto :goto_0

    .line 485
    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->CHAT_ATTACH_ALERT_BUTTON:I

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;

    .line 486
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/view/ChatAttachAlertButtonCell;-><init>(Landroid/content/Context;)V

    .line 488
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 491
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, v0, :cond_2

    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 492
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 495
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-ne p2, v0, :cond_3

    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 496
    :cond_3
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 497
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 500
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    if-ne p2, p1, :cond_4

    const/16 p1, 0x24

    .line 502
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, -0x2

    .line 500
    :goto_1
    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final updateRows()V
    .locals 7

    .line 442
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setWalletBotRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 443
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 444
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 445
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 446
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 447
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 448
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setButtonsSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 449
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setBotsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 450
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1747
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1748
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 450
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v4, :cond_3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const-wide/32 v5, 0x765bf322

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 451
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setWalletBotRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;->access$setBotSuggestionsRow$p(Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity;I)V

    return-void
.end method
