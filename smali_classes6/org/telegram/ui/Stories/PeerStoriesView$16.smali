.class Lorg/telegram/ui/Stories/PeerStoriesView$16;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$yTDLUpvp23kVuxQV3UZCVFegixo(Lorg/telegram/ui/Stories/PeerStoriesView$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$16;->lambda$onMessageSend$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2281
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onMessageSend$0()V
    .locals 1

    .line 2315
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6600(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method


# virtual methods
.method public synthetic bottomPanelTranslationYChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$bottomPanelTranslationYChanged(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;F)V

    return-void
.end method

.method public didPressAttachButton()V
    .locals 1

    .line 2377
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)V

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

.method public getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

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
    .locals 1

    .line 2403
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->changeVideoPreviewState(IF)V

    :cond_0
    return-void
.end method

.method public needSendTyping()V
    .locals 0

    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 9

    .line 2425
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2426
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v1, Lorg/telegram/ui/Components/HintView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;

    .line 2427
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2428
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x33

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2430
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->VideoMessagesRestrictedByPrivacy:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->VoiceMessagesRestrictedByPrivacy:I

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 2431
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAudioVideoButtonContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

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
    .locals 2

    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2383
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2385
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1, v0, p5}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(ZZ)V

    goto :goto_1

    :cond_0
    const/4 p5, 0x1

    if-eq p1, p5, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p3, 0x5

    if-ne p1, p3, :cond_5

    .line 2389
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p3

    if-ne p1, p2, :cond_3

    move v0, p5

    :cond_3
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    goto :goto_1

    .line 2387
    :cond_4
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lorg/telegram/ui/Components/InstantCameraView;->send(IZII)V

    :cond_5
    :goto_1
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
    .locals 0

    .line 2313
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2314
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$16$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$16;)V

    const-wide/16 p2, 0xc8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 2318
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6600(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    :goto_0
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
    .locals 1

    .line 2436
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

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
    .locals 6

    .line 2329
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2330
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2332
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2333
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->setDialogId(J)V

    .line 2334
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setUserOrChat(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2335
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getCursorPosition()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 2337
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

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

.method public onceVoiceAvailable()Z
    .locals 4

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2467
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

.method public sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 2292
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_5

    .line 2293
    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 2296
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 2297
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_2

    .line 2298
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    const/4 v15, 0x0

    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    move/from16 v19, v2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v20, v1

    move-object/from16 v6, p2

    move-object v11, v3

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v21, p6

    invoke-static/range {v4 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;ILorg/telegram/messenger/MessageObject;ZIZZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2299
    :cond_2
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2300
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v17, v2

    const/16 v18, 0x0

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v23, v1

    move-object v12, v3

    move-object/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move-object/from16 v24, p6

    invoke-static/range {v4 .. v24}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 2301
    :cond_3
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2302
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iget-object v15, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    iget v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move/from16 v17, v2

    const/16 v18, 0x0

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    move-object/from16 v23, v1

    move-object v12, v3

    move-object/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move/from16 v22, p5

    move-object/from16 v24, p6

    invoke-static/range {v4 .. v24}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    .line 2304
    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6600(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public toggleVideoRecordingPause()V
    .locals 1

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$16;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->togglePause()V

    :cond_0
    return-void
.end method
