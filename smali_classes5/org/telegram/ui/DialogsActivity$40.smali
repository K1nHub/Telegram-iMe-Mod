.class Lorg/telegram/ui/DialogsActivity$40;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 7361
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bottomPanelTranslationYChanged(F)V
    .locals 0

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
    .locals 0

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
    .locals 7

    .line 7364
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$30300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 7367
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 7368
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 7369
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    invoke-static {p3, p4, v0, v1}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7371
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$30300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$40;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    :cond_2
    :goto_1
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
