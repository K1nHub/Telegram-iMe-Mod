.class final Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsToolsMessageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 339
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final updateRows()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 432
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 433
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 434
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 435
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 436
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 438
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 440
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getPosition()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 449
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 450
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 443
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 444
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    goto :goto_0

    .line 346
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 373
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 374
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_5

    .line 377
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$hasHint(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 379
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 381
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_message_quick_translate:I

    .line 380
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 382
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    .line 379
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 387
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_bot_help_translate:I

    .line 386
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 388
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    .line 385
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 393
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_translate:I

    .line 392
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 394
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    .line 391
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 400
    sget p2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v0, "SendWithoutSound"

    .line 398
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 401
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v0

    .line 397
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 406
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_combine_messages:I

    .line 405
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 407
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    .line 404
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_1

    .line 412
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v0, v2, :cond_6

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_6

    .line 413
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 414
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_sent_message_font:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 415
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/enums/SentMessageFont;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 352
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 355
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 356
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 359
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 360
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 363
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 365
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
