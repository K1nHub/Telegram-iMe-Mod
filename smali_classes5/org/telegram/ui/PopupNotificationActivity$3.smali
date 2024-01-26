.class Lorg/telegram/ui/PopupNotificationActivity$3;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic bottomPanelTranslationYChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$bottomPanelTranslationYChanged(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;F)V

    return-void
.end method

.method public didPressAttachButton()V
    .locals 0

    return-void
.end method

.method public synthetic getContentViewHeight()I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getContentViewHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyQuote(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyToStory(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getSendAsPeers(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasForwardingMessages()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasForwardingMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic hasScheduledMessages()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$hasScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic measureKeyboardHeight()I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$measureKeyboardHeight(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)I

    move-result v0

    return v0
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 0

    return-void
.end method

.method public needSendTyping()V
    .locals 8

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$600(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    :cond_0
    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 0

    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 0

    return-void
.end method

.method public synthetic needStartRecordVideo(IZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$needStartRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;IZII)V

    return-void
.end method

.method public needStartRecordVideo(IZIIZ)V
    .locals 0

    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 0

    return-void
.end method

.method public onAttachButtonShow()V
    .locals 0

    return-void
.end method

.method public onAudioVideoInterfaceUpdated()V
    .locals 0

    return-void
.end method

.method public synthetic onContextMenuClose()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuClose(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onContextMenuOpen()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onContextMenuOpen(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onEditTextScroll()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onEditTextScroll(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onKeyboardRequested()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onKeyboardRequested(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 0

    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$400(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$400(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$300(Lorg/telegram/ui/PopupNotificationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v1, 0x0

    iget-object v6, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v6}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZJIZI)V

    .line 326
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$202(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 327
    iget-object v1, v0, Lorg/telegram/ui/PopupNotificationActivity$3;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$500(Lorg/telegram/ui/PopupNotificationActivity;)V

    return-void
.end method

.method public onPreAudioVideoRecord()V
    .locals 0

    return-void
.end method

.method public onSendLongClick()V
    .locals 0

    return-void
.end method

.method public onStickersExpandedChange()V
    .locals 0

    return-void
.end method

.method public onStickersTab(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;ZZ)V
    .locals 0

    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 0

    return-void
.end method

.method public onTextSpansChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public synthetic onTopViewFullyShown()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onTopViewFullyShown(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic onTrendingStickersShowed(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onTrendingStickersShowed(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;Z)V

    return-void
.end method

.method public onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 0

    return-void
.end method

.method public synthetic onceVoiceAvailable()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$onceVoiceAvailable(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic openReaction()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$openReaction(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic openScheduledMessages()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$openScheduledMessages(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic prepareMessageSending()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$prepareMessageSending(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic scrollToSendingMessage()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$scrollToSendingMessage(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    return-void
.end method

.method public synthetic sendEditedSticker(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$sendEditedSticker(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$sendMedia(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    return-void
.end method

.method public toggleVideoRecordingPause()V
    .locals 0

    return-void
.end method
