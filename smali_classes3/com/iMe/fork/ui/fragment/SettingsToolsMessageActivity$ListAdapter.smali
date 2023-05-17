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

    .line 182
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 185
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final updateRows()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 241
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 242
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 243
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 244
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 245
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 247
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 249
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->getPosition()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 257
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 258
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 252
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$setBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)V

    .line 253
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

    .line 231
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    goto :goto_0

    .line 192
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

    .line 211
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 213
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_5

    .line 216
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$hasHint(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 218
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getMessageQuickTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_message_quick_translate:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getBotHelpTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_bot_help_translate:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isBotHelpTranslateEnabled:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSendPopupTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_translate:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isTranslateInSendPopupEnabled:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getMessagesSilentSendingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v0, "SendWithoutSound"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getCombineMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_combine_messages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isCombineMessagesEnabled:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 225
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v0, v2, :cond_6

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;->access$getSentMessageTextFont$p(Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_sent_message_font:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/enums/SentMessageFont;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 197
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 199
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 200
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 202
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 203
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsMessageActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 207
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
