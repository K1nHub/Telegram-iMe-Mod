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

    .line 4306
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 4297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    .line 4307
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 4393
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 4394
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 4395
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

    .line 4505
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 4506
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
    .locals 8

    const/4 v0, 0x0

    .line 4402
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, -0x1

    .line 4403
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    .line 4404
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 4405
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 4406
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 4407
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    .line 4408
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4409
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 4410
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 4411
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 4412
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 4413
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v0, v1, 0x1

    .line 4414
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    goto/16 :goto_4

    .line 4415
    :cond_0
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 4416
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

    .line 4417
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4418
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 4420
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    goto/16 :goto_4

    .line 4423
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v0, v1, 0x1

    .line 4424
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    add-int/lit8 v1, v0, 0x1

    .line 4425
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 4429
    :cond_4
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 4430
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogType()Lorg/fork/enums/DialogType;

    move-result-object v1

    .line 4431
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_5

    return-void

    .line 4436
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 4437
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4438
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v5, v4, Lorg/telegram/ui/ChatActivity;

    if-eqz v5, :cond_a

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v4

    if-nez v4, :cond_a

    .line 4439
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    .line 4441
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 4442
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4443
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

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 4444
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

    .line 4445
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4449
    :cond_9
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 4450
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 4454
    :cond_a
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lorg/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4455
    :cond_b
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 4457
    :cond_c
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ChatActivity;->isAllowTemplates(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    sget-object v4, Lorg/fork/enums/TemplatesMode;->ATTACH:Lorg/fork/enums/TemplatesMode;

    if-eq v0, v4, :cond_d

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    sget-object v4, Lorg/fork/enums/TemplatesMode;->OVAL:Lorg/fork/enums/TemplatesMode;

    if-ne v0, v4, :cond_e

    sget-object v0, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    if-ne v1, v0, :cond_e

    .line 4458
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    .line 4460
    :cond_e
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isNeedToShowWallet()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4461
    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->WALLET:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4462
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    .line 4464
    :cond_f
    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->BINANCE:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4465
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    .line 4470
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4472
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->GEO:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4473
    :cond_11
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 4476
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4478
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->POLL:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4479
    :cond_13
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    goto :goto_2

    .line 4480
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$16100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4482
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->CONTACT:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4483
    :cond_15
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4486
    :cond_16
    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isCloud()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->MUSIC:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4487
    :cond_17
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 4489
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_19

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_3

    :cond_19
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_1a

    .line 4490
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_1a

    .line 4492
    sget-object v0, Lorg/fork/enums/ChatAttachAlertButton;->CONTACT:Lorg/fork/enums/ChatAttachAlertButton;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4493
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 4496
    :cond_1a
    :goto_4
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 4330
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 4365
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 4366
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 4368
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4369
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 4370
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

    .line 4374
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    sub-int/2addr p2, v0

    .line 4375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 4376
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

    .line 4332
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 4334
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->walletButton:I

    const/4 v8, 0x6

    if-ne p2, v0, :cond_3

    .line 4335
    sget p2, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET:I

    sget v0, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, v0, v8

    const-string v6, "iMe_chat_attach_walletBackground"

    const-string v7, "iMe_chat_attach_walletText"

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4337
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->binanceButton:I

    if-ne p2, v0, :cond_4

    .line 4338
    sget p2, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_BINANCE:I

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_attach_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x7

    aget-object v5, v0, v1

    const-string v6, "iMe_chat_attach_binanceBackground"

    const-string v7, "iMe_chat_attach_binanceText"

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4340
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->templatesButton:I

    if-ne p2, v0, :cond_5

    .line 4341
    sget p2, Lcom/smedialink/common/IdFabric$CustomType;->CHAT_ATTACH_ALERT_WALLET_TEMPLATES:I

    sget v0, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0x8

    aget-object v5, v0, v1

    const-string v6, "iMe_chat_attach_templatesBackground"

    const-string v7, "iMe_chat_attach_templatesText"

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4344
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    if-ne p2, v0, :cond_6

    const/4 v3, 0x1

    .line 4345
    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v0, "ChatGallery"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    aget-object v5, p2, v0

    const-string v6, "chat_attachGalleryBackground"

    const-string v7, "chat_attachGalleryText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4347
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    const/4 v9, 0x4

    if-ne p2, v0, :cond_7

    const/4 v3, 0x4

    .line 4348
    sget p2, Lorg/telegram/messenger/R$string;->ChatDocument:I

    const-string v0, "ChatDocument"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x2

    aget-object v5, p2, v0

    const-string v6, "chat_attachFileBackground"

    const-string v7, "chat_attachFileText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4350
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    if-ne p2, v0, :cond_8

    const/4 v3, 0x6

    .line 4351
    sget p2, Lorg/telegram/messenger/R$string;->ChatLocation:I

    const-string v0, "ChatLocation"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v9

    const-string v6, "chat_attachLocationBackground"

    const-string v7, "chat_attachLocationText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4353
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    const/4 v8, 0x3

    if-ne p2, v0, :cond_9

    const/4 v3, 0x3

    .line 4354
    sget p2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v0, "AttachMusic"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    const-string v6, "chat_attachAudioBackground"

    const-string v7, "chat_attachAudioText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4356
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    const/4 v1, 0x5

    if-ne p2, v0, :cond_a

    const/16 v3, 0x9

    .line 4357
    sget p2, Lorg/telegram/messenger/R$string;->Poll:I

    const-string v0, "Poll"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    const-string v6, "chat_attachPollBackground"

    const-string v7, "chat_attachPollText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x9

    .line 4358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4359
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    if-ne p2, v0, :cond_b

    const/4 v3, 0x5

    .line 4360
    sget p2, Lorg/telegram/messenger/R$string;->AttachContact:I

    const-string v0, "AttachContact"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v8

    const-string v6, "chat_attachContactBackground"

    const-string v7, "chat_attachContactText"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
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

    .line 4320
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    goto :goto_0

    .line 4316
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    :goto_0
    const/4 p2, 0x1

    .line 4323
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4324
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 4325
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 4383
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15800(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    return-void
.end method
