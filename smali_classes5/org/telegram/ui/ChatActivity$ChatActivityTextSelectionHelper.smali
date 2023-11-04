.class Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatActivityTextSelectionHelper"
.end annotation


# instance fields
.field chatActivity:Lorg/telegram/ui/ChatActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4607
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 4607
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected canShowQuote()Z
    .locals 4

    .line 4643
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4647
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 4648
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isDescription:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    if-eqz v0, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 4649
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 4650
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4651
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getParentBottomPadding()I
    .locals 1

    .line 4624
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    :goto_0
    return v0
.end method

.method public getParentTopPadding()I
    .locals 1

    .line 4619
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 4634
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 4635
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected onQuoteClick(Lorg/telegram/messenger/MessageObject;IILjava/lang/CharSequence;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 4660
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz p4, :cond_8

    .line 4661
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    add-int/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4662
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_1

    .line 4663
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 4665
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 4671
    :cond_2
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p2

    .line 4672
    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    return-void

    .line 4675
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    .line 4691
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$11000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 4692
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    .line 4694
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReplyQuote(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 4695
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_8

    .line 4696
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_1

    .line 4676
    :cond_6
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ChatActivity;->access$10602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ReplyQuote;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 4677
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$4702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 4678
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->access$10802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 4679
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    new-instance p4, Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move p3, v1

    :cond_7
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    invoke-direct {p4, p3, v0}, Lorg/telegram/messenger/MessagePreviewParams;-><init>(ZZ)V

    iput-object p4, p2, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    .line 4680
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p2, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->getGroup(J)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagePreviewParams;->updateReply(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;JLorg/telegram/ui/ChatActivity$ReplyQuote;)V

    .line 4681
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "onlySelect"

    .line 4682
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x3

    const-string p3, "dialogsType"

    .line 4683
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "quote"

    .line 4684
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "messagesCount"

    .line 4685
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "canSelectTopics"

    .line 4686
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4687
    new-instance p2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 4688
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 4689
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public setChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 4611
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->cancelAllAnimators()V

    .line 4612
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 v0, 0x0

    .line 4613
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    .line 4614
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method
