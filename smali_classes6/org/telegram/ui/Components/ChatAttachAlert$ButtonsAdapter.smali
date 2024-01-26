.class Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonsAdapter"
.end annotation


# instance fields
.field private attachBotsEndRow:I

.field private attachBotsStartRow:I

.field private attachMenuBots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;",
            ">;"
        }
    .end annotation
.end field

.field private binanceButton:I

.field private buttonsCount:I

.field private contactButton:I

.field private documentButton:I

.field private galleryButton:I

.field private locationButton:I

.field private mContext:Landroid/content/Context;

.field private musicButton:I

.field private pollButton:I

.field private templatesButton:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private walletButton:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 4720
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4711
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    .line 4721
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 4807
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 4808
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 4809
    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 4927
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 4928
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 11

    const/4 v0, 0x0

    .line 4816
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, -0x1

    .line 4817
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    .line 4818
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 4819
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 4820
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 4821
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    .line 4822
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4823
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 4824
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 4825
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 4826
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v2, v2, 0x1

    .line 4827
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v0, v2, 0x1

    .line 4828
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 4829
    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v1, :cond_1b

    add-int/lit8 v1, v0, 0x1

    .line 4830
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 4832
    :cond_0
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 4833
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4834
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4835
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 4837
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    goto/16 :goto_4

    .line 4840
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v0, v1, 0x1

    .line 4841
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    add-int/lit8 v1, v0, 0x1

    .line 4842
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 4846
    :cond_4
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 4847
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v1

    .line 4848
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_5

    return-void

    .line 4853
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 4854
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4855
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_b

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v4

    if-nez v4, :cond_b

    .line 4856
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    .line 4858
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 4859
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4860
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 4861
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    :goto_1
    invoke-static {v6, v7}, Lorg/telegram/messenger/MediaDataController;->canShowAttachMenuBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4863
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const-wide/32 v9, 0x765bf322

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->isChatAttachAlertWalletBotEnabled:Z

    if-nez v7, :cond_9

    goto :goto_0

    .line 4867
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4871
    :cond_a
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 4872
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 4876
    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/iMe/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4877
    :cond_c
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 4879
    :cond_d
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ChatActivity;->isAllowTemplates(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    sget-object v4, Lcom/iMe/fork/enums/TemplatesMode;->ATTACH:Lcom/iMe/fork/enums/TemplatesMode;

    if-eq v0, v4, :cond_e

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    sget-object v4, Lcom/iMe/fork/enums/TemplatesMode;->OVAL:Lcom/iMe/fork/enums/TemplatesMode;

    if-ne v0, v4, :cond_f

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    if-ne v1, v0, :cond_f

    .line 4880
    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    .line 4882
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isNeedToShowWallet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4883
    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->WALLET:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4884
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    .line 4886
    :cond_10
    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->BINANCE:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4887
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    .line 4892
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4894
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->GEO:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4895
    :cond_12
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 4898
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4900
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->POLL:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4901
    :cond_14
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    goto :goto_2

    .line 4902
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4904
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4905
    :cond_16
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4908
    :cond_17
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->MUSIC:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4909
    :cond_18
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 4911
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1a

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_3

    :cond_1a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_1b

    .line 4912
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_1b

    .line 4914
    sget-object v0, Lcom/iMe/fork/enums/ChatAttachAlertButton;->CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4915
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4918
    :cond_1b
    :goto_4
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 4744
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 4779
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 4780
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 4782
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 4784
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setAttachBot(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    goto/16 :goto_0

    .line 4788
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    sub-int/2addr p2, v0

    .line 4789
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4790
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_0

    .line 4746
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 4748
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    const/4 v8, 0x6

    if-ne p2, v0, :cond_3

    .line 4749
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    sget v0, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, v0, v8

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachWalletBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachWalletText:I

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4750
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4751
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    if-ne p2, v0, :cond_4

    .line 4752
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_attach_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x7

    aget-object v5, v0, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachBinanceBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachBinanceText:I

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4753
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4754
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    if-ne p2, v0, :cond_5

    .line 4755
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    sget v0, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0x8

    aget-object v5, v0, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTemplatesBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTemplatesText:I

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4756
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4758
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    if-ne p2, v0, :cond_6

    const/4 v3, 0x1

    .line 4759
    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v0, "ChatGallery"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    aget-object v5, p2, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4760
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4761
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    const/4 v9, 0x4

    if-ne p2, v0, :cond_7

    const/4 v3, 0x4

    .line 4762
    sget p2, Lorg/telegram/messenger/R$string;->ChatDocument:I

    const-string v0, "ChatDocument"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x2

    aget-object v5, p2, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4763
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4764
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    if-ne p2, v0, :cond_8

    const/4 v3, 0x6

    .line 4765
    sget p2, Lorg/telegram/messenger/R$string;->ChatLocation:I

    const-string v0, "ChatLocation"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v9

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4766
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4767
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    const/4 v8, 0x3

    if-ne p2, v0, :cond_9

    const/4 v3, 0x3

    .line 4768
    sget p2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v0, "AttachMusic"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4769
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4770
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    const/4 v1, 0x5

    if-ne p2, v0, :cond_a

    const/16 v3, 0x9

    .line 4771
    sget p2, Lorg/telegram/messenger/R$string;->Poll:I

    const-string v0, "Poll"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    const/16 p2, 0x9

    .line 4772
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4773
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    if-ne p2, v0, :cond_b

    const/4 v3, 0x5

    .line 4774
    sget p2, Lorg/telegram/messenger/R$string;->AttachContact:I

    const-string v0, "AttachContact"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v8

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactText:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    .line 4775
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_0

    .line 4734
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    goto :goto_0

    .line 4730
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    :goto_0
    const/4 p2, 0x1

    .line 4737
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4738
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 4739
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 4797
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16600(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    return-void
.end method
